<html>
<head>
    <title>LinHome</title>
    <style>
        body{ padding: 0; margin: 0 auto; font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; font-size: 26pt; }
        form{ min-width: 320px; max-width: 100%; position: absolute; left:50%; top:50%; transform: translate(-50%, -50%);}
        input{ display: block; padding: 10px 0px; margin-top: 10px; width: 100%; }
        button{ width: 100%; padding: 10px 0px; margin-top: 10px; }
        .container{ padding: 10px; }
    </style>
</head>
<body>
    <div class='container'>
        <form action='http://192.168.4.1/setup'>
            <label><b>Access to Device</b></label>
            <input type='text' placeholder='Enter Username' name='SSID'>
            <input type='password' placeholder='Enter Password' name='PASSWORD'>
            <button type='submit'>Login</button>
        </form>
    </div>
</body>
</html>

<?php

$string = "
    <html>
        <head>
            <title>LinHome</title>
            <style>
                body{ padding: 0; margin: 0 auto; }
                form {
                    border: 3px solid #f1f1f1;
                }
        
                input[type=text], input[type=password] {
                    width: 100%;
                    padding: 12px 20px;
                    margin: 8px 0;
                    display: inline-block;
                    border: 1px solid #ccc;
                    box-sizing: border-box;
                }
        
                button {
                    background-color: #4CAF50;
                    color: white;
                    padding: 14px 20px;
                    margin: 8px 0;
                    border: none;
                    cursor: pointer;
                    width: 100%;
                }
        
                button:hover {
                    opacity: 0.8;
                }
        
                .cancelbtn {
                    width: auto;
                    padding: 10px 18px;
                    background-color: #f44336;
                }
        
                .imgcontainer {
                    text-align: center;
                    margin: 24px 0 12px 0;
                }
        
                img.avatar {
                    width: 40%;
                    border-radius: 50%;
                }
        
                .container {
                    padding: 16px;
                }
        
                span.psw {
                    float: right;
                    padding-top: 16px;
                }
        
                /* Change styles for span and cancel button on extra small screens */
                @media screen and (max-width: 300px) {
                    span.psw {
                        display: block;
                        float: none;
                    }
                    .cancelbtn {
                        width: 100%;
                    }
                }
            </style>
        </head>
        <body>
            <form action=\"/login\">
                <div class=\"imgcontainer\">
                    <img src=\"img_avatar2.png\" alt=\"Avatar\" class=\"avatar\">
                </div>
        
                <div class=\"container\">
                    <label><b>Username</b></label>
                    <input type=\"text\" placeholder=\"Enter Username\" name=\"uname\" required>
        
                    <label><b>Password</b></label>
                    <input type=\"password\" placeholder=\"Enter Password\" name=\"psw\" required>
        
                    <button type=\"submit\">Login</button>
                    <input type=\"checkbox\" checked=\"checked\"> Remember me
                </div>
        
                <div class=\"container\" style=\"background-color:#f1f1f1\">
                    <button type=\"button\" class=\"cancelbtn\">Cancel</button>
                    <span class=\"psw\">Forgot <a href=\"#\">password?</a></span>
                </div>
            </form>
        </body>
    </html>
";
