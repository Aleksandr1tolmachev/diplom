<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<#include "parts/security.ftlh">
<@c.page>

<section class="banner-area relative" id="home">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Admission Form
                </h1>
            </div>
        </div>
    </div>
</section>
    <div class="container mt-5 mb-5">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group ">
                <label for="formFile" class="form-label">Name:</label>
                <input type="text" name="name" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Name"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Surname:</label>
                <input type="text" name="surname" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Surname"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Patronymic (if applicable):</label>
                <input type="text" name="patronymic" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Patronymic (if applicable)"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Date of birth:</label>
                <input type="date" name="date_of_birth" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder=""/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Sex:</label>
                <select class="form-control" name="sex" >

                    <option value="Male">Male</option>
                    <option value="Female">Female</option>

                </select>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Place of birth:</label>
                <input type="text" name="place_of_birth" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Place of birth"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Citizenship:</label>
                <input type="text" name="citizenship" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Citizenship"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Nationality:</label>
                <input type="text" name="nationality" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Nationality"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Matrimonial status:</label>
                <input type="text" name="matrimonial_status" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Matrimonial status"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Passport series:</label>
                <input type="text" name="pass_series" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Passport series"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Passport number:</label>
                <input type="text" name="pass_number" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Passport number"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Date of issue:</label>
                <input type="date" name="date_of_issue" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Date of issue"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Date of expiry:</label>
                <input type="date" name="date_of_expiry" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Date of expiry"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Issuing authority:</label>
                <input type="text" name="issuing_authority" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Issuing authority"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Country :</label>
                <input type="text" name="country" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Country"/>
            </div>

            <div class="form-group ">
                <label for="formFile" class="form-label">Zip-code :</label>
                <input type="text" name="zip_code" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Zip-code"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Province :</label>
                <input type="text" name="province" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Province"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">City :</label>
                <input type="text" name="city" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="City"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Address :</label>
                <input type="text" name="address" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Address"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label">Phone number :</label>
                <input type="text" name="phone_number" class="form-control  ${(textError??)?string('is-invalid','')}" value="" placeholder="Phone number"/>
            </div>
            <div class="form-group ">
                <label for="formFile" class="form-label"> Specialty(Faculty): </label>
                <select class="form-control" name="specialty"  >

                    <option value="General Medicine (General Medicine)">General Medicine (General Medicine)</option>
                    <option value="Pediatrics (Pediatrics)">Pediatrics (Pediatrics)</option>
                    <option value="Dentistry (Dentistry)">Dentistry (Dentistry)</option>
                    <option value="Medical-prophylaxis (Medical-prophylaxis)">Medical-prophylaxis (Medical-prophylaxis)</option>
                    <option value="Pharmacy (Pharmacy)">Pharmacy (Pharmacy)</option>
                    <option value="Medical biochemistry (Pharmacy)">Medical biochemistry (Pharmacy)</option>
                </select>
            </div>
                <div class="form-group">
                    <label for="formFile" class="form-label">Please attach the zip file with Passport, Educational document and Medical certificate(scan or photo)</label>
                    <input class="form-control" type="file" name="filename_passport">
                </div>


            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
    </div>
</div>
</@c.page>