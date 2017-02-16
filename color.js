
function onclickbutton(buttonId){
	var buttonclick=document.getElementById(buttonId);
	buttonclick.style.background='#99ff00';
	buttonclick.style.color='#6633cc';
	buttonclick.style.boxShadow='1px 4px 1px 0 rgba(0,0,0,0.6)';
}
function onmouseoutbutton(buttonId){
	var buttonclick=document.getElementById(buttonId);
	buttonclick.style.background='#ccffff';
	buttonclick.style.color='black';
	buttonclick.style.boxShadow='2px 7px 2px 0 rgba(0,0,0,0.4)';
}
function loginkeyaction(controlId,newcolor){
	var control=document.getElementById(controlId);
	
	control.style.background=newcolor;
	  /* if(control.value=="")
	{
		
	}
	else
	{
		control.style.background='#ff99ff';
	}  */ 
}


function submitkeyaction(newcolor){
	var control=document.getElementById("fullname");
	
	  if(control.value=="")
	{
		control.style.background=newcolor;
		
	}
	
	/* else
	{
		control.style.background='#ff99ff';
	}  */ 
}






 function loginselectaction(controlId){
	var control=document.getElementById(controlId);
	
	control.style.background='white';
	if(control.value=="1")
	{
		control.style.background='#ccffff';
	}
	else
	{
		control.style.background='#ccffff';
	}
} 


 function showpasswordlogin(){
	var pass=document.getElementById("password");
	if(pass.type=="password")
	{
		pass.type="text";
	}
	else if(pass.type=="text")
	{
		pass.type="password"
	}
} 
function showpasswordsignup(){
	var pass=document.getElementById("password");
	if(pass.type=="password")
	{
		pass.type="text";
	}
	else if(pass.type=="text")
	{
		pass.type="password"
	}
}

