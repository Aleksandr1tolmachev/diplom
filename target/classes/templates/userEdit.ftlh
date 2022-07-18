<#import "parts/common.ftlh" as c>
<@c.page>
    <section class="banner-area relative" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">
                        User orders
                    </h1>
                </div>
            </div>
        </div>
    </section>
    <div class="container mt-5 mb-5">
        <h2>Username: <h2>
                <p class="lead"><#if user.username??>${user.username}</#if></p>
        <h2>Surname</h2>
                <p class="lead"><#if user.surname??>${user.surname}</#if></p>
        <h2>Name</h2>
                <p class="lead"><#if user.name??>${user.name}</#if></p>
        <h2>Patronymic</h2>
                <p class="lead"><#if user.patronymic??>${user.patronymic}</#if></p>
        <h2>Date of birth</h2>
                <p class="lead"><#if user.date_of_birth??>${user.date_of_birth}</#if></p>
        <h2>Sex</h2>
                <p class="lead"><#if user.sex??>${user.sex}</#if></p>
        <h2>Place of birth</h2>
                <p class="lead"><#if user.place_of_birth??>${user.place_of_birth}</#if></p>
        <h2>Citizenship</h2>
                <p class="lead"><#if user.citizenship??>${user.citizenship}</#if></p>
        <h2>Nationality</h2>
                <p class="lead"><#if user.nationality??>${user.nationality}</#if></p>
        <h2>Matrimonial status</h2>
                <p class="lead"><#if user.matrimonial_status??>${user.matrimonial_status}</#if></p>
        <h2>Pass series</h2>
                <p class="lead"><#if user.pass_series??>${user.pass_series}</#if></p>
        <h2>Pass number</h2>
                <p class="lead"><#if user.pass_number??>${user.pass_number}</#if></p>
        <h2>Date of issue</h2>
                <p class="lead"><#if user.date_of_issue??>${user.date_of_issue}</#if></p>
        <h2>Date of expiry</h2>
                <p class="lead"><#if user.date_of_expiry??>${user.date_of_expiry}</#if></p>
        <h2>Issuing authority</h2>
                <p class="lead"><#if user.issuing_authority??>${user.issuing_authority}</#if></p>
        <h2>Country</h2>
                <p class="lead"><#if user.country??>${user.country}</#if></p>
        <h2>Zip code</h2>
                <p class="lead"><#if user.zip_code??>${user.zip_code}</#if></p>
        <h2>Province</h2>
                <p class="lead"><#if user.province??>${user.province}</#if></p>
        <h2>City</h2>
                <p class="lead"><#if user.city??>${user.city}</#if></p>
        <h2>Address</h2>
                <p class="lead"><#if user.address??>${user.address}</#if></p>
        <h2>Phone number</h2>
                <p class="lead"><#if user.phone_number??>${user.phone_number}</#if></p>
        <h2>Specialty</h2>
                <p class="lead"><#if user.specialty??>${user.specialty}</#if></p>
        <h2>File</h2>
                <p class="lead"><#if user.filename_passport??>${user.filename_passport}</#if></p>
    </div>
</@c.page>