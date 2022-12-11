<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
 <link rel="stylesheet" href="././assets/admin/css/login.css">
</head>
<body>
	<section class="section-enroll">
            <div class="row">
                <div class="enroll">
                    <div class="enroll_form">
                        <form class="form">
                            <div>
                                <h2 class="heading-secondary">
                                    Login
                                </h2>
                            </div>
                            <div class="form__group">
                                <input type="text" id="username" class="form__input" placeholder="user name" required>
                                <label for="username" class="form__label">Username</label>
                            </div>
                            <div class="form__group">
                                <input type="text" id="password" class="form__input" placeholder="password" required>
                                <label for="password" class="form__label">Password</label>
                            </div>
                            
                            <div class="form-group">
                                <a href="#" class="btn btn--blue">
                                    Submit &rarr;
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>