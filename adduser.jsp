<%@page import="com.HibernateUtil"%>
<%@page import="com.Login"%>
<%@page import="org.hibernate.Session"%>
<!doctype html>
<html>
<head>
    <title>ADD USER</title>
<link href='http://fonts.googleapis.com/css?family=Days+One' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/style_1.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/logbutton.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/modernizr.custom_2.js"></script>
    <script src="js/drop.js" type="text/javascript"></script>
  <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/set1.css" />
    
    
    
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

 <div>
     <header class="header">
        <a class="textrotate" href="#" style="text-decoration:none">
					
					<span>p</span>
					<span>l</span> 
					<span>a</span>
					<span>c</span>	<span>e</span>
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
                        
                            if(request.getParameter("addsubmit")!=null){
                                
                           
                          Session s =HibernateUtil.getSessionFactory().openSession();
                          Login l=new Login();
                          l.setRollnumber(new Integer(request.getParameter("rollnumber")));
                          l.setBranch(request.getParameter("branch"));
                          l.setEmail(request.getParameter("email"));
                          l.setName(request.getParameter("fullname"));
                          l.setPassword(request.getParameter("password"));
                          l.setPhone(request.getParameter("phonenumber"));
                          l.setType(request.getParameter("type"));
                          s.save(l);
                          s.beginTransaction().commit();
                          at="1 entry added into database";
                    
                         }
                           
                      
                        
                        %>
                        
    <div class="container jumbotron" style="background: #e6e6fa;">
    <form method="post" action="adduser.jsp">
    
       <h4> <span class="label label-danger"><%=at%></span></h4>
<section class="content">
        <h2 style="color: black;">ADD USER</h2>
        <span class="input input--kaede">
          <input class="input__field input__field--kaede" type="text" id="input-35" name="rollnumber" />         
          <label class="input__label input__label--kaede" for="input-35">
            <span class="input__label-content input__label-content--kaede">Roll No</span>
          </label>
        </span>
        <span class="input input--kaede">
          <input class="input__field input__field--kaede" type="text" id="input-36" name="fullname" />
          <label class="input__label input__label--kaede" for="input-36">
            <span class="input__label-content input__label-content--kaede">Name</span>
          </label>
        </span>
        <span class="input input--kaede">
          <input class="input__field input__field--kaede" type="text" id="input-37" name="email" />
          <label class="input__label input__label--kaede" for="input-37">
            <span class="input__label-content input__label-content--kaede">Email</span>
          </label>
        </span>
        <span class="input input--kaede">
          <input class="input__field input__field--kaede" type="text" id="input-38" name="password" />
          <label class="input__label input__label--kaede" for="input-38">
            <span class="input__label-content input__label-content--kaede">Password</span>
          </label>
        </span>
        <span class="input input--kaede">
          <input class="input__field input__field--kaede" type="text" id="input-39" name="branch" />
          <label class="input__label input__label--kaede" for="input-39">
            <span class="input__label-content input__label-content--kaede">Branch</span>
          </label>
        </span>
        <span class="input input--kaede">
          <input class="input__field input__field--kaede" type="text" id="input-40" name="phonenumber" />
          <label class="input__label input__label--kaede" for="input-40">
            <span class="input__label-content input__label-content--kaede">Phone</span>
          </label>
        </span>
        <span class="input input--kaede">
          <input class="input__field input__field--kaede" type="text" id="input-41" name="type" />
          <label class="input__label input__label--kaede" for="input-41">
            <span class="input__label-content input__label-content--kaede">Type</span>
          </label>
        </span>
        <button class="btn btn-info btn-lg " type="submit" name="addsubmit" value="submit">Submit</button>
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