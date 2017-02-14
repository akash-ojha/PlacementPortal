<!DOCTYPE HTML>
<html>
	<head>
		<title>
			Text Editor
		</title>
		<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		


	</head>
	<body onload="enableEditMode();" class = "container">
		<div class="jumbotron">
			<div>
				<center>
				<button onclick="exeCmd('bold');"><i class="fa fa-bold"></i></button>
				<button onclick="exeCmd('italic');"><i class="fa fa-italic"></i></button>
				<button onclick="exeCmd('underline');"><i class="fa fa-underline"></i></button>
				<button onclick="exeCmd('strikethrough');"><i class="fa fa-strikethrough"></i></button>
				<button onclick="exeCmd('justifyLeft');"><i class="fa fa-align-left"></i></button>
				<button onclick="exeCmd('justifyRight');"><i class="fa fa-align-right"></i></button>
				<button onclick="exeCmd('justifyCenter');"><i class="fa fa-align-center"></i></button>
				<button onclick="exeCmd('justifyFull');"><i class="fa fa-align-justify"></i></button>
				<button onclick="exeCmd('cut');"><i class="fa fa-cut"></i></button>
				<button onclick="exeCmd('copy');"><i class="fa fa-copy"></i></button>
				<button onclick="exeCmd('indent');"><i class="fa fa-indent"></i></button>
				<button onclick="exeCmd('outdent');"><i class="fa fa-dedent"></i></button>
				<button onclick="exeCmd('subscript');"><i class="fa fa-subscript"></i></button>
				<button onclick="exeCmd('superscript');"><i class="fa fa-superscript"></i></button>
				<button onclick="exeCmd('insertUnorderedList');"><i class="fa fa-list-ul"></i></button>
				<button onclick="exeCmd('insertOrderedList');"><i class="fa fa-list-ol"></i></button>
				<button onclick="execCommandarg('createLink', prompt('Enter URL :','http://'));"><i class="fa fa-link"></i></button>
				<button onclick="toggleEdit();">Toggle Edit</button>
				<br/> 
				<select onchange="execCommandarg('formatBlock', this.value)">
					<option value="H1">H1</option>
					<option value="H2">H2</option>
					<option value="H3">H3</option>
					<option value="H4">H4</option>
					<option value="H5">H5</option>
					<option value="H6">H6</option>
				</select>
				Font : <select onchange="execCommandarg('fontName', this.value)">
					<option value="Arial">Arial</option>
					<option value="Comic Sans MS">Comic Sans MS</option>
					<option value="Helvetica">Helvetica</option>
					<option value="Bodoni">Bodoni</option>
					<option value="Clarendon">Clarendon</option>
					<option value="Times New Roman">Times New Roman</option>
					<option value="Garamond">Garamond</option>
					<option value="Myriad">Myriad</option>
					<option value="Optima">Optima</option>
					<option value="Frutiger">Frutiger</option>
				</select>
				<select onchange="execCommandarg('fontSize',this.value)">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
				</select>
				Font Color : <input type="color" onchange="execCommandarg('foreColor', this.value)" />
				Background : <input type="color" onchange="execCommandarg('hiliteColor', this.value)"/>
				</center>
			</div>
			<hr>
			<div name = "editable">
                            <% 
                                String at;
                              if(request.getParameter("glink")!=null){
                                  at=request.getParameter("edittextarea");
                              }
                              else{
                               at="Generated link";
                              }
                            
                            
                            %>
                            
				
					<form class="form-default" role="form" action="editor.jsp" method="post">
						<div class="form-group">
						<label for="name">Text Area</label>
						<textarea class="form-control" name="edittextarea" rows="30"></textarea>
						</div>
						<!--<iframe name="edittextarea" style="width: 1000px;height: 800px; background-color:white;">
						</iframe>-->
						<button type="submit" name="glink" value="glink" class="btn btn-primary">Generate Link </button>
						
					</form>
					<center>
                                            <input type="text" class="form-control" name="link" value="<%=at%>" style="width: 500px;"> 
					</center>	
			</div>	
		</div>
		<script type="text/javascript">
			
			var isInEditMode = false;
			function enableEditMode(){
				edittextarea.document.designMode = "On";
			}

			function exeCmd(command){
				edittextarea.document.execCommand(command , false, null);
                          
			}

			function execCommandarg(command , arg) {
				edittextarea.document.execCommand(command , false, arg);
			}

			function toggleEdit(argument) {
				if (isInEditMode) {
					edittextarea.document.designMode = 'Off';
					isInEditMode = false;
				}
				else{
					edittextarea.document.designMode = 'On';
					isInEditMode = true;
				}
				
			}

		</script>
	</body>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.min.js"></script>
	
</html>