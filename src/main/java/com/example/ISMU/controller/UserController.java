package com.example.ISMU.controller;

import com.example.ISMU.domain.Role;
import com.example.ISMU.domain.User;
import com.example.ISMU.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Column;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.URLConnection;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/user")

public class UserController {
    @Autowired
    private UserService userService;
    @Value("${upload.path}")
    private String uploadPath;

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public String userList(Model model) {
        model.addAttribute("users", userService.findAll());
        return "userList";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("{user}")
    public String userEditForm(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());
        return "userEdit";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping
    public String userSave(
            @RequestParam String username,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user
    ) {
        userService.saveUser(user, username, form);
        return "redirect:/user";
    }

    @GetMapping("profile")
    public String getProfile(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("surname", user.getSurname());
        model.addAttribute("name", user.getName());
        model.addAttribute("patronymic", user.getPatronymic());
        model.addAttribute("date_of_birth", user.getDate_of_birth());
        model.addAttribute("sex", user.getSex());
        model.addAttribute("place_of_birth", user.getPlace_of_birth());
        model.addAttribute("citizenship", user.getCitizenship());
        model.addAttribute("nationality", user.getNationality());
        model.addAttribute("matrimonial_status", user.getMatrimonial_status());
        model.addAttribute("pass_series", user.getPass_series());
        model.addAttribute("pass_number", user.getPass_number());
        model.addAttribute("date_of_issue", user.getDate_of_issue());
        model.addAttribute("date_of_expiry", user.getDate_of_expiry());
        model.addAttribute("issuing_authority", user.getIssuing_authority());
        model.addAttribute("country", user.getCountry());
        model.addAttribute("zip_code", user.getZip_code());
        model.addAttribute("province", user.getProvince());
        model.addAttribute("city", user.getCity());
        model.addAttribute("address", user.getAddress());
        model.addAttribute("phone_number", user.getPhone_number());
        model.addAttribute("specialty", user.getSpecialty());
        model.addAttribute("filename_passport", user.getFilename_passport());

        return "profile";
    }

    @PostMapping("profile")
    public String updateProfile(@AuthenticationPrincipal User user,

                                @RequestParam String surname,
                                @RequestParam String name,
                                @RequestParam String patronymic,
                                @RequestParam String date_of_birth,
                                @RequestParam String sex,
                                @RequestParam String place_of_birth,
                                @RequestParam String citizenship,
                                @RequestParam String nationality,
                                @RequestParam String matrimonial_status,
                                @RequestParam String pass_series,
                                @RequestParam String pass_number,
                                @RequestParam String date_of_issue,
                                @RequestParam String date_of_expiry,
                                @RequestParam String issuing_authority,
                                @RequestParam String country,
                                @RequestParam Long zip_code,
                                @RequestParam String province,
                                @RequestParam String city,
                                @RequestParam String address,
                                @RequestParam Long phone_number,
                                @RequestParam String specialty,
                                @RequestParam("filename_passport") MultipartFile filename_passport
    ) throws IOException {


            if (filename_passport != null && !filename_passport.getOriginalFilename().isEmpty()) {
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }
                String uuidFile = UUID.randomUUID().toString();
                String resultFilename_passport = uuidFile + "." + filename_passport.getOriginalFilename();

                filename_passport.transferTo(new File(uploadPath + "/" + resultFilename_passport));

                user.setFilename_passport(resultFilename_passport);
            }


            userService.updateProfile(user, surname, name, patronymic, date_of_birth, sex, place_of_birth, citizenship, nationality, matrimonial_status, pass_series, pass_number,
                    date_of_issue, date_of_expiry, issuing_authority, country, zip_code, province, city, address, phone_number, specialty);


        return "redirect:/user/profile";
        }

    }
