
<%@page import="com.Login"%>
<%@page import="com.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<html>
    <head>
            <link href="place.css" rel="stylesheet" type="text/css" media="all" />
            <script src="color.js" type="text/javascript"></script>
            <script src="jquery-2.2.2.js" type="text/javascript"></script>
            <link rel="stylesheet" href="splashcss.css">


        <!-- <script>
            $(document).ready(function(){
                $(".open").click(function(){
                $("#body-bg").addClass("logdown");
		        $(".open").hide();
		        $(".loginoverlay").hide();
		        });
	                $(".close").click(function(){
                    $("#body-bg").addClass("logup");
		            $(".open").show();
		            $(".loginoverlay").show();
                    });
            });


        </script> -->
        <style>

            .logdown {
                background: rgba(111,111,111,0.5);
  
            }
            .logup{
                background: rgba(0,0,0,0.8);

        </style>




    </head>



<body id="body-bg">

       <ul class="slideshow" style="list-style:none;">
            <li><span>1</span></li>
            <li><span>2</span></li>
            <li><span>3</span></li>
            <li><span>4</span></li>
        </ul> 


<div id="myNav" class="overlay">
        <div class="overlay-content animate">
            <div class="dpclose">


                <img src="profile_1x.png"class="icon">
                    <span onclick="closeNav()" class="close" title="Close Modal">&times;</span>
            </div>




            <div style="margin: 0 auto 10px 35px;">
                <h3 style="color: rgb(85, 85, 85); font-size: 25px; font-weight: bold; letter-spacing: -1.2px;">Sign up to see more</h3>
            </div>
            <div data-test-login="true" style="margin: 0px auto; position: relative; text-align: center;">
                <div style="margin: 0px auto; width: 268px;">

                    <div style="overflow:auto;">
                        <%
                            if(request.getParameter("continue")!=null){
                                
                           
                          Session s =HibernateUtil.getSessionFactory().openSession();
                          Login l=new Login();
                          l.setRollnumber(new Integer(request.getParameter("rollnumber")));
                          l.setBranch(request.getParameter("branch"));
                          l.setEmail(request.getParameter("email"));
                          l.setName(request.getParameter("fullname"));
                          l.setPassword(request.getParameter("password"));
                          l.setPhone(request.getParameter("phonenumber"));
                          l.setType("user");
                          s.save(l);
                          s.beginTransaction().commit();
                          response.sendRedirect("userhome.jsp");
                         }
                           
                      
                        
                        %>
                        <form method="post" action="signup.jsp" name="frm">
                            <fieldset style="position: relative; margin-bottom: 7px;height:27px;">
                                <input aria-label="FullName" class="user" autocomplete="username" name="fullname" placeholder="FullName"
                                              id="fullname" onkeyup="loginkeyaction('fullname','#ccffff')" 
                                                            onclick="loginkeyaction('fullname','#ccffff')" value="" type="text">
                            </fieldset>
                            <fieldset style="position: relative; margin-bottom: 7px;height:27px;">
                                <input aria-label="Phone" class="user" id="phonenumber"
                                          onkeyup="loginkeyaction('phonenumber','#ccffff')" 
                                                           onclick="loginkeyaction('phonenumber','#ccffff')" autocomplete="username" name="phonenumber" placeholder="Phone" maxlength="11" value="" type="text">
                            </fieldset>
                            <fieldset style="position: relative; margin-bottom: 7px;height:27px;">
                                <input aria-label="Roll" class="user" id="rollnumber"
                                                   onkeyup="loginkeyaction('rollnumber','#ccffff')" 
                                                             onclick="loginkeyaction('rollnumber','#ccffff')"autocomplete="username" name="rollnumber" placeholder="Roll" value="" type="text">
                            </fieldset>
                        <!--    <fieldset style="position: relative; margin-bottom: 7px;height:27px;">
                                <select class="user1" name="branch" id="branch" onkeyup="loginselectaction('branch')" 
                                              onclick="loginselectaction('branch')" form="">
                                    <option value="1" default>Select your option</option>
                                    <option value="ECE">ECE</option>
                                    <option value="CSE">CSE</option>
                                    <option value="EEE">EEE</option>
                                    <option value="CIVIL">CIVIL</option>
                                    <option value="ARCHI">ARCHI</option>
                                </select>
                            </fieldset> -->
                            
                 
                            <fieldset style="position: relative; margin-bottom: 7px;height:27px;">
                                <input aria-label="branch" class="user" id="branch"
                                          onkeyup="loginkeyaction('branch','#ccffff')" 
                                                           onclick="loginkeyaction('branch','#ccffff')" autocomplete="username" name="branch" placeholder="Branch" maxlength="11" value="" type="text">
                            </fieldset>


                            <fieldset style="position: relative; margin-bottom: 7px;height:27px;">
                                <input aria-label="Email" class="user" id="email"
                                             onkeyup="loginkeyaction('email','#ccffff')" 
                                                    onclick="loginkeyaction('email','#ccffff')"autocomplete="username" name="email" placeholder="Email" value="" type="email">
                            </fieldset>
                            <fieldset style="position: relative;margin-bottom: 7px;height:27px;">
                                <input aria-label="Password" autocomplete="" name="password" class="pass" id="password"onkeyup="loginkeyaction('password','#ccffff')" 
                                                onclick="loginkeyaction('password','#ccffff')" placeholder="Password" value="" type="password">
                            </fieldset>
            <div>
                <span style="float:left; padding-top:10px; font-size:14px;">
                    <input type="checkbox" class="show" name="show password" value="on" id="showpassword" onclick="showpasswordsignup()">Show Password</span>
                        <button class="red_SignupButton" type="submit" name="continue" id="continue" onclick="submitkeyaction('red')" value="signed">
                            <div>Continue</div>
                        </button>
			</div>
    </form>
            <p class="Ord" style="">OR</p>
                <div style="height: 7px;">
                    <div class="fb-login-button" data-scope="public_profile,email,user_likes,user_about_me,user_birthday,user_friends" 
                            onlogin="checkLoginState">
                    </div>
                </div>
            <div>
                <div style="border-bottom: 1px solid rgb(239, 239, 239);">
                </div>
                <div>
                    <button class="lightGrey" onclick="window.location.href='splash.jsp'" type="button" value="logged">Log in</button>
                </div>
            </div> 
			
			
			
                    </div>
                </div>
            </div>
        </div>
    </div>
	<script>
	function closeNav(){
                //document.getElementById("myNav").style.display="none";
                window.location.href="splash.jsp";
                }
        </script>
</body>
</html>
	
	
	