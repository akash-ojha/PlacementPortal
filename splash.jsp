<%@page import="com.Login"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.HibernateUtil"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Placement Portal</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Splash and Coming Soon Page Effects with CSS3" />
        <meta name="keywords" content="coming soon, splash page, css3, animation, effect, web design" />
        <meta name="author" content="Codrops" />
        <!link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo_1.css" />
        <link rel="stylesheet" type="text/css" href="css/style3.css" />
		<!link rel="stylesheet" href="style.css">
		
    </head>
    <body>
	
	
	
	
		
		
		
		<%              String rep="null";
                            if(request.getParameter("loginsubmit")!=null){
                                
                                    rep=request.getParameter("loginsubmit");
                     
			  Session s=HibernateUtil.getSessionFactory().openSession();
                     
                          String user=request.getParameter("username");
                          Integer i=new Integer(user);
                          
			String pass=request.getParameter("loginpassword");
			 Login l=(Login) s.get(Login.class, i);
                         if(l==null){
                         
                             
                         }
                         else{
                             if(pass.equals(l.getPassword())){
                                 if(l.getType().equals("admin")) response.sendRedirect("admin.jsp");
                                 else response.sendRedirect("userhome.jsp");
                             
                             
                            }
                             else{
                             
                                 
                             }
			
                         }
			
			       }//end of if
			
			
			%>
			
		
           
			
			<form method="post" action="splash.jsp">
			<table style="position:relative;float:right;bottom:60px;">
			    <td class="sp-side1">
					<div class="sp-input">
						<input type="text" placeholder="roll number" name="username" />
					</div>
				</td>
				
			
                <td class="sp-side2">					
					<div class="sp-input">
						<input type="password" placeholder="Your password" name="loginpassword" />
						
					</div>
				</td>
				    <td>					
					    <button class="loginbutton sp-side1" type="submit" name="loginsubmit" value="submit" >
                            <div>Go</div>
                        </button>
					
				    </td>
		    </table>
		    </form>
			
			
			<div class="sp-container">
				<div class="sp-content">
					<div class="sp-wrap sp-left">
						<h2>
							<span class="sp-top">Get the latest updates about</span> 
							<span class="sp-mid">Placement</span> 
							<!--<span class="sp-bottom">anymore?</span>-->
						</h2>
					</div>
					<div class="sp-wrap sp-right">
						<h2>
						<span class="sp-top">going on college through</span> 
							
						<!--	<span class="sp-bottom">Yeah, it would!</span>--> 
							<span class="sp-mid">Portal</span> 
						</h2>
					</div>
				</div>
				<div class="sp-full">
					<h2>NIT HAMIRPUR</h2>
					<a href="signup.jsp">Sign up!</a>
				</div>
			</div>
        </div>
    </body>
</html>