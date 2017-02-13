<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.Event"%>
<%@page import="java.util.List"%>
<%@page import="com.Login"%>
<%@page import="com.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>HOME</title>
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <title></title>
   <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="css/default.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" href="css/style_1.css">
    <link rel="stylesheet" href="css/logbutton.css">
    <script src="js/modernizr.custom.js"></script>
    <script src="js/modernizr.custom_2.js"></script>
</head>
 
<body>
<style>
.listddhover{
    display:block;
    
}
.dduser1,.dduser2,.dduser3{
display:none;
}
</style>


    <header class="header" style="position: relative ;">
        <a class="textrotate" href="#" style="text-decoration:none">
          
          <span>p</span>
          <span>l</span> 
          <span>a</span>
          <span>c</span> <span>e</span>  
                    <span>m</span>  
                    <span>e</span>
          <span>n</span>
          <span>t</span>
<span> </span>
<span> </span>          
                            <span>p</span>   
              <span>o</span>  
              <span>r</span>  
              <span>t</span>
              <span>a</span>  
              <span>l</span>    
        </a>
    
    
    
    <!-- <button class="logoutbutton header_button" type="submit" ><a href="#">Logout</a></button>
    <button class="homebutton header_button" type="submit" ><a href="#">Home</a></button> -->
    
    
        <div class="container3 ">
              <section class="color-4">
        <nav class="cl-effect-2" id="cl-effect-2">
          <a href="splash.jsp" style="margin-top: 18px; margin-right: 25px;"><span data-hover="LOGOUT">LOGOUT</span></a>
          
        </nav>
      
              </section>
       </div>
    
    <div class="container2 ">
              <section class="color-4">
        <nav class="cl-effect-2" id="cl-effect-2">
          <a href="userarchive.jsp" style="margin-top: 18px; margin-right: 5px;"><span data-hover="ARCHIVE">ARCHIVE</span></a>
          
        </nav>
      
              </section>
       </div>
    
    
    
    <div class="container1 ">
              <section class="color-4">
        <nav class="cl-effect-2" id="cl-effect-2">
          <a href="userhome.jsp" style="margin-top: 18px; margin-right: 5px;"><span data-hover="HOME">HOME</span></a>
          
        </nav>
      
              </section>
       </div>
     
     
     
     
    

    
    
    
    
    
    
    
    
    
    <!-- 
    <div class="container">
               <section class="color-4">
            <nav class="cl-effect-2" id="cl-effect-2">
                <a href="#cl-effect-2"><span data-hover="Ratatouille">Ratatouille</span></a>
           
             </nav>
      
              </section>
           </div>
     -->
    
    
    </header>
<center>
<span><h2 >Examination Schedule</h2></span>
</center>  
<ul class="grid cs-style-7">
    <%
        String name="",ima="";
        Date d=new Date();
        Session s=HibernateUtil.getSessionFactory().openSession();
            List<Event> l=s.createQuery("from com.Event").list();
            for(Event ls:l){
               name=ls.getName();
               ima=ls.getEimage();
               d=ls.getEtime();
               String str="";
               SimpleDateFormat st= new SimpleDateFormat("dd/MM/yyyy");
              str=""+ st.format(d);
 
        %>
    
    
        <li>
          <figure>
              <img src="images/<%=ima%>" alt="img06" style="height: 300px; width: 400px;">
            <figcaption>
              <h3><%=str%></h3>
              
              </figcaption>
          </figure>
        </li>
        <% } %>
        
       <!-- <li>
          <figure>
            <img src="images/paytm.jpeg" alt="img04" style="height: 300px; width: 400px;">
            <figcaption>
              <h3>Date:</h3>
              
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img src="images/tcs.png" alt="img02" style="height: 300px; width: 400px;">
            <figcaption>
              <h3>Date:</h3>
              
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img src="images/uhg.png" alt="img05" style="height: 300px; width: 400px;">
            <figcaption>
              <h3>Date:</h3>
              
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li> -->
      </ul>
  
  
  <footer>
  <div class="wrapper">
    <div id="footer-info">
      <p>Copyright 2017 .... All rights reserved.</p>
      <p><a href="#">Terms of Service</a> I <a href="#">Privacy</a></p>
    </div>
    <div id="footer-links">
      <ul>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Meet The Team</a></li>
        <li><a href="#">What We Do</a></li>
      </ul>
    </div>
    <div class="clear"></div>
  </div>
</footer>
    
</body>
</html>