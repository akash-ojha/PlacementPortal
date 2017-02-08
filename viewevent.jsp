
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.Event"%>
<%@page import="java.util.List"%>
<%@page import="com.Login"%>
<%@page import="com.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<!doctype html>
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Days+One' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css">
<title>View Event</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/logbutton.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>

<script src="js/showimage.js"></script>
    <script src="js/drop.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="css/default.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <script src="js/modernizr.custom.js"></script>
    <script src="js/modernizr.custom_2.js"></script>
    
<style>
.listddhover{
    display:block;
    
}
.dduser1,.dduser2,.dduser3{
display:none;
}




.thumb {
    height: 75px;
    border: 1px solid #000;
    margin: 10px 5px 0 0;
    }
 
</style>
</head>
<body>

    <header class="header">
        <a class="textrotate" href="#"style="text-decoration:none">
          
          <span>p</span>
          <span>l</span> 
          <span>a</span>
          <span>c</span><span>e</span>  
                    <span>m</span>  
                    <span>e</span>
          <span>n</span>
          <span>t</span>  
                                </br>
                            <span>p</span>   
              <span>o</span>  
              <span>r</span>  
              <span>t</span>
              <span>a</span>  
              <span>l</span>    
        </a>
        <div class="container ">
              <section class="color-4">
				<nav class="cl-effect-2" id="cl-effect-2">
					<a href="#cl-effect-2"><span data-hover="LOGOUT">LOGOUT</span></a>
					
				</nav>
			
              </section>
       </div>
    </header>

    <div class="demo">

        <dl class="list" id="user1">
            <dt>Users</dt>
			<div class="dduser1">
            <dd><a href="viewuser.jsp">View Users</a></dd>
            <dd><a href="adduser.jsp">Add User</a></dd>
            <dd><a href="deleteuser.jsp">Delete User</a></dd>
            </div>
        </dl>

        <dl class="list" id="user2">
            <dt>Events</dt>
			<div class="dduser2">
            <dd><a href="viewevent.jsp">View Events</a></dd>
            <dd><a href="addevent.jsp">Add Event</a></dd>
            <dd><a href="deleteevent.jsp">Delete Event</a></dd>
            </div>
        </dl>

        <dl class="list" id="user3">
            <dt>Question Bank</dt>
			<div class="dduser3">
            <dd><a href="viewarchive.jsp">View Archive</a></dd>
            <dd><a href="#">Add Set</a></dd>
            <dd><a href="#">Delete Set</a></dd>
            </div>
        </dl>

    
    </div>

<center>
<span><h2>Examination Schedule</h2></span>
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
    <!--    <li>
          <figure>
            <img src="images/paytm.jpeg" alt="img04" style="height: 300px; width: 400px;">
            <figcaption>
              <h3>Date:</h3>
              
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img src="images/tcs.png" alt="img02" style="height: 300px; width: 400px;">
            <figcaption>
              <h3>Date:</h3>
              
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img src="images/uhg.png" alt="img05" style="height: 300px; width: 400px;">
            <figcaption>
              <h3>Date:</h3>
              
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