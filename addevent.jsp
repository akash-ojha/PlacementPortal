<%@page import="java.util.Date"%>
<%@page import="com.Event"%>
<%@page import="com.HibernateUtil"%>
<%@page import="com.Login"%>
<%@page import="org.hibernate.Session"%>
<!doctype html>
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Days+One' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css">
<title>ADD EVENT</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link rel="stylesheet" href="css/logbutton.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/drop.js" type="text/javascript"></script>

  <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/set2.css" />
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
<div class="row">
    <header class="header">
        <a class="textrotate" href="#" style="text-decoration:none">
          
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
</div>
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
    <%
                        String at="";
                        
                            if(request.getParameter("eventadded")!=null){
                                
                           
                          Session s =HibernateUtil.getSessionFactory().openSession();
                          Event l=new Event();
                          l.setName(request.getParameter("companyname"));
                          l.setEimage(request.getParameter("file"));
                          Date d=new Date(request.getParameter("date"));
                          l.setEtime(d);
                          s.save(l);
                          s.beginTransaction().commit();
                          at="1 event added into database";
                    
                         }
                           
                      
                        
                        %>
    <div class="container jumbotron" style="background: #e6e6fa;">
    <form method="post" action="addevent.jsp">
        <h4> <span class="label label-danger"><%=at%></span></h4>
<section class="content bgcolor-10" style="">
        <center><h2 style="color: #fff;">ADD EVENT</h2></center>
        <span class="input input--shoko">
          <input class="input__field input__field--shoko" type="text" id="input-4" name="companyname" />
          <label class="input__label input__label--shoko" for="input-4">
            <span class="input__label-content input__label-content--shoko">Company Name</span>
          </label>
          <svg class="graphic graphic--shoko" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
            <path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
            <path d="M0,2.5c0,0,298.666,0,399.333,0C448.336,2.5,513.994,13,597,13c77.327,0,135-10.5,200.999-10.5c95.996,0,402.001,0,402.001,0"/>
          </svg>
        </span><br/>
        <span class="input input--shoko">
          <input class="input__field input__field--shoko" type="Date" id="input-5" name="date" />
          <label class="input__label input__label--shoko" for="input-5">
            <span class="input__label-content input__label-content--shoko">DATE</span>
          </label>
          <svg class="graphic graphic--shoko" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
            <path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
            <path d="M0,2.5c0,0,298.666,0,399.333,0C448.336,2.5,513.994,13,597,13c77.327,0,135-10.5,200.999-10.5c95.996,0,402.001,0,402.001,0"/>
          </svg>
        </span><br/>
        <span class="input input--shoko">

          <input class="input__field input__field--shoko" type="file" id="input-6" name="file"/>
        </span><br/>
        <button class="btn btn-primary" type="submit" value="submit" name="eventadded">Submit</button>
      </section>
      </form>
</div>
</body>

<script src="js/classie.js"></script>
<script>
      (function() {
        // trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
        if (!String.prototype.trim) {
          (function() {
            // Make sure we trim BOM and NBSP
            var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
            String.prototype.trim = function() {
              return this.replace(rtrim, '');
            };
          })();
        }

        [].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
          // in case the input is already filled..
          if( inputEl.value.trim() !== '' ) {
            classie.add( inputEl.parentNode, 'input--filled' );
          }

          // events:
          inputEl.addEventListener( 'focus', onInputFocus );
          inputEl.addEventListener( 'blur', onInputBlur );
        } );

        function onInputFocus( ev ) {
          classie.add( ev.target.parentNode, 'input--filled' );
        }

        function onInputBlur( ev ) {
          if( ev.target.value.trim() === '' ) {
            classie.remove( ev.target.parentNode, 'input--filled' );
          }
        }
      })();
    </script>
</html>