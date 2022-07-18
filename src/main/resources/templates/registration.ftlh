<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<section class="banner-area relative" id="home">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Registration
                </h1>
                <h3 class="text-white">
                    !!!After registering, you will receive an email confirmation of your account. This is necessary in order for you to interact with the all site functional.!!!
                </h3>
            </div>
        </div>
    </div>
</section>

<@c.page>
    <div class="container mt-5 mb-5">
    ${message?ifExists}
<@l.login "/registration" true/>
    </div>
</@c.page>