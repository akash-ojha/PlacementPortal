<%@page import="com.Login"%>
<%@page import="java.util.List"%>
<%@page import="com.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<!doctype html>
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Days+One' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css">
<title>Delete User</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/logbutton.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/modernizr.custom_2.js"></script>

<script src="js/showimage.js"></script>
    <script src="js/drop.js" type="text/javascript"></script>
    
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
          <span>c</span>  
          <span>e</span> 
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
    
<div class="container">
<form action="deleteuser.jsp" method="post">
<table class="table table-striped">
    <caption>
    <div class="">
    <h2>DataBase</h2>

    </div>
    </caption>
    <thead>
    <tr>
    <th>Select</th>
    <th>Name</th>
    <th>Roll NO</th>
    <th>Email</th>
    <th>password</th>
    <th>Branch</th>
    <th>Contact</th>
    </tr>
    </thead>
    
    
    
    <tbody>
        <% 
            String name="",roll="",email="",pass="",branch="",contact="";
            int i;
            
            if(request.getParameter("deletesubmit")!=null){
                Session s=HibernateUtil.getSessionFactory().openSession();
                String[] str=request.getParameterValues("check");
                for(String del:str){
                    Login lt=(Login)s.load(Login.class,new Integer(del));
                    s.delete(lt);
                    s.beginTransaction().commit();
                }
                s.close();
            }
            Session s=HibernateUtil.getSessionFactory().openSession();
            List<Login> l=s.createQuery("from com.Login").list();
            for(Login ls:l){
               name=ls.getName();i=ls.getRollnumber();roll=""+i;email=ls.getEmail();pass=ls.getPassword();
               branch=ls.getBranch();contact=ls.getPhone();
        %>
    <tr>
        <td>
        
            <input type="checkbox" name="check" value="<%=roll%>" >
    </td>
        
    <td><%=name%></td>
    <td><%=roll%></td>
    <td><%=email%></td>  
    <td><%=pass%></td>
    <td><%=branch%></td>
    <td><%=contact%></td>
    </tr>
    <%} %>
    </tbody>
   
</table>

 <center><button class="btn btn-warning" type="submit" value="submit" name="deletesubmit"> Delete Selected</button></center>
    </form>
</div>



</body>
</html>