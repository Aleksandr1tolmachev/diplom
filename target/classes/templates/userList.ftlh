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

    <table class="table">
        <thead>
        <tr>
            <th>Username</th>
            <th>Surname</th>
            <th>Name</th>
            <th>More information</th>


        </tr>
        </thead>
        <tbody>
<#list users as user>
    <tr>
        <td>${user.username}</td>
        <td><#if user.surname??>${user.surname}</#if></td>
        <td><#if user.name??>${user.name}</#if></td>
        <td><a href="/user/${user.id}">More info</a></td>

    </tr>
</#list>
        </tbody>
    </table>
    </div>
</@c.page>
