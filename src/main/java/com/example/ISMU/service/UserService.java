package com.example.ISMU.service;

import com.example.ISMU.domain.Role;
import com.example.ISMU.domain.User;
import com.example.ISMU.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.*;
import java.util.stream.Collectors;


@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepo userRepo;
    @Autowired
    private MailSender mailSender;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByUsername(username);
        if (user==null){
            throw new UsernameNotFoundException("User not exist");
        }
        return user;
    }
    public boolean addUser(User user){
        User userFromDB = userRepo.findByUsername(user.getUsername());
        if(userFromDB != null)  {
            return false;
        }
        user.setActive(false);
        user.setRoles(Collections.singleton(Role.USER));
        user.setActivationCode(UUID.randomUUID().toString());
        user.setPassword(passwordEncoder.encode(user.getPassword()));

        userRepo.save(user);
        sendMessage(user);

        return true;
    }

    private void sendMessage(User user) {
        if(!StringUtils.isEmpty(user.getEmail())){
            String message = String.format(
                    "Hello, %s \n" + "Welcome to IGMU web-site. Please visit next link to activate  account: http://localhost:8080/activate/%s",
                    user.getUsername(),
                    user.getActivationCode()
            );
            mailSender.send(user.getEmail(),"Activation code", message);
        }
    }
    private void sendContact(User user) {
        if(!StringUtils.isEmpty(user.getEmail())){
            String message = String.format(
                    "Hello, %s \n" + "Welcome to IGMU web-site. Please visit next link to activate  account: http://localhost:8080/activate/%s",
                    user.getUsername(),
                    user.getActivationCode()
            );
            mailSender.send(user.getEmail(),"Activation code", message);
        }
    }

    public boolean activateUser(String code) {
        User user = userRepo.findByActivationCode(code);
        if (user == null){
            return false;
        }

        user.setActive(true);
        user.setActivationCode(null);
        userRepo.save(user);

        return false;
    }
    public List<User> findAll(){
return userRepo.findAll();
    }

    public void saveUser(User user, String username, Map<String, String> form) {

        user.setUsername(username);

        Set<String> roles = Arrays.stream(Role.values()).
                map(Role::name).
                collect(Collectors.toSet());
        user.getRoles().clear();

        for (String key : form.keySet()) {
            if(roles.contains(key)){
                user.getRoles().add(Role.valueOf(key));
            }

        }
        userRepo.save(user);
    }



    public void updateProfile(User user, String surname, String name, String patronymic,
                              String date_of_birth, String sex, String place_of_birth,
                              String citizenship, String nationality, String matrimonial_status,
                              String pass_series, String pass_number, String date_of_issue,
                              String date_of_expiry, String issuing_authority, String country,
                              Long zip_code, String province, String city, String address,
                              Long phone_number, String specialty) {
        user.setSurname(surname);
        user.setName(name);
        user.setPatronymic(patronymic);
        user.setDate_of_birth(date_of_birth);
        user.setSex(sex);
        user.setPlace_of_birth(place_of_birth);
        user.setCitizenship(citizenship);
        user.setNationality(nationality);
        user.setMatrimonial_status(matrimonial_status);
        user.setPass_series(pass_series);
        user.setPass_number(pass_number);
        user.setDate_of_issue(date_of_issue);
        user.setDate_of_expiry(date_of_expiry);
        user.setIssuing_authority(issuing_authority);
        user.setCountry(country);
        user.setZip_code(zip_code);
        user.setProvince(province);
        user.setCity(city);
        user.setAddress(address);
        user.setPhone_number(phone_number);
        user.setSpecialty(specialty);

        userRepo.save(user);
    }
}
