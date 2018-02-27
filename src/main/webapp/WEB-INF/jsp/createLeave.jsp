<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title> Leave Management </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico in the root directory -->
        <link rel="stylesheet" href="css/vendor.css">
        <!-- Theme initialization -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         
        <script>
            var themeSettings = (localStorage.getItem('themeSettings')) ? JSON.parse(localStorage.getItem('themeSettings')) :
            {};
            var themeName = themeSettings.themeName || '';
            if (themeName)
            {
                document.write('<link rel="stylesheet" id="theme-style" href="css/app-' + themeName + '.css">');
            }
            else
            {
                document.write('<link rel="stylesheet" id="theme-style" href="css/app.css">');
            }
        </script>
        
        <script type="text/javascript">
	
        $(function() {
    		$('#saveLeave').click(
    				
    			function(e) {
    				$("#savemsg").show().delay(1500).fadeOut();
    				console.log(5 + 6);
    				e.preventDefault();
    				$('input').next().remove();
    				$.post({
    					
    					url : 'saveLeave',
    					data : $('form[name=leaveForm]').serialize(),
    					success : function(res) {
        					console.log("sdflk");
    						
    					}
    				
    				})
    			});
    	});

        </script>
        
        
        <!-- <script type="text/javascript">
        $(document).ready(function(){
        	$.get({
    			url : 'getAllEmplyee',
    			success : function(res) {
    				console.log(res);
    				/* $('#employeeList tbody').html('');
    				var list;
    				$.each(res, function(key, value) {
    					console.log(value.email)
    					list += '<tr>';
    					list += '<td>' + value.empName + '</td>';
    					list += '<td>' + 'sadfsdf' + '</td>';
    					list += '<td>' + value.description + '</td>';
    					list += '<td>' + value.duration + '</td>';
    					list += '<td>' + value.startDate + '</td>';
    					list += '<td>' + value.endDate + '</td>';
    					list += '<td>' + value.leaveType + '</td>';
    					list += '<td>' + value.status + '</td>';
    					list + '</tr>';
    				});
    	

    				$('#employeeList').append(list); */
    			}
    		})
        	
       	});

        </script> -->
        
        
        
    </head>
    <body>
        <div class="main-wrapper">
            <div class="app" id="app">
                <header class="header" style="height: 35px;">
                    <div class="header-block header-block-collapse d-lg-none d-xl-none">
                        <button class="collapse-btn" id="sidebar-collapse-btn">
                            <i class="fa fa-bars"></i>
                        </button>
                    </div>
                  
                    <div class="header-block header-block-buttons" >
                        <a href="/" class="btn btn-sm header-btn" style="margin-left: -950px;">
                            <span>Leaves</span>
                        </a>
                        <!-- <a href="https://github.com/modularcode/modular-admin-html/stargazers" class="btn btn-sm header-btn">
                            <i class="fa fa-star"></i>
                            <span>Star Us</span>
                        </a>
                        <a href="https://github.com/modularcode/modular-admin-html/releases" class="btn btn-sm header-btn">
                            <i class="fa fa-cloud-download"></i>
                            <span>Download .zip</span>
                        </a> -->
                    </div>
                    
                </header>
                <aside class="sidebar">
                    <div class="sidebar-container">
                        <div class="sidebar-header">
                            <div class="brand">
                                <div class="logo">
                                    <span class="l l1"></span>
                                    <span class="l l2"></span>
                                    <span class="l l3"></span>
                                    <span class="l l4"></span>
                                    <span class="l l5"></span>
                                </div> Leave Management </div>
                        </div>
                        <nav class="menu">
                            <ul class="sidebar-menu metismenu" id="sidebar-menu">
                                <li class="active open">
                                    <a href="/">
                                        <i class="fa fa-table"></i> Leaves Summary
                                    </a>
                                </li>
                                
                            </ul>
                        </nav>
                    </div>
                    <footer class="sidebar-footer">
                        <ul class="sidebar-menu metismenu" id="customize-menu">
                            <li>
                                <ul>
                                    <li class="customize">
                                        <div class="customize-item">
                                            <div class="row customize-header">
                                                <div class="col-4"> </div>
                                                <div class="col-4">
                                                    <label class="title">fixed</label>
                                                </div>
                                                <div class="col-4">
                                                    <label class="title">static</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-4">
                                                    <label class="title">Sidebar:</label>
                                                </div>
                                                <div class="col-4">
                                                    <label>
                                                        <input class="radio" type="radio" name="sidebarPosition" value="sidebar-fixed">
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="col-4">
                                                    <label>
                                                        <input class="radio" type="radio" name="sidebarPosition" value="">
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-4">
                                                    <label class="title">Header:</label>
                                                </div>
                                                <div class="col-4">
                                                    <label>
                                                        <input class="radio" type="radio" name="headerPosition" value="header-fixed">
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="col-4">
                                                    <label>
                                                        <input class="radio" type="radio" name="headerPosition" value="">
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-4">
                                                    <label class="title">Footer:</label>
                                                </div>
                                                <div class="col-4">
                                                    <label>
                                                        <input class="radio" type="radio" name="footerPosition" value="footer-fixed">
                                                        <span></span>
                                                    </label>
                                                </div>
                                                <div class="col-4">
                                                    <label>
                                                        <input class="radio" type="radio" name="footerPosition" value="">
                                                        <span></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="customize-item">
                                            <ul class="customize-colors">
                                                <li>
                                                    <span class="color-item color-red" data-theme="red"></span>
                                                </li>
                                                <li>
                                                    <span class="color-item color-orange" data-theme="orange"></span>
                                                </li>
                                                <li>
                                                    <span class="color-item color-green active" data-theme=""></span>
                                                </li>
                                                <li>
                                                    <span class="color-item color-seagreen" data-theme="seagreen"></span>
                                                </li>
                                                <li>
                                                    <span class="color-item color-blue" data-theme="blue"></span>
                                                </li>
                                                <li>
                                                    <span class="color-item color-purple" data-theme="purple"></span>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                                <a href="">
                                    <i class="fa fa-cog"></i> Customize </a>
                            </li>
                        </ul>
                    </footer>
                </aside>
                <div class="sidebar-overlay" id="sidebar-overlay"></div>
                <div class="sidebar-mobile-menu-handle" id="sidebar-mobile-menu-handle"></div>
                <div class="mobile-menu-handle"></div>
                <article class="content responsive-tables-page" style="padding-top: 50px;">
                    <div class="title-block">
                        <h1 class="title"> Leaves Summary </h1>
                        	<div id="savemsg" class="alert alert-success" style="display: none">
						       <strong>Success!</strong> Leave Save Successfully.
						    </div>
                        <p class="title-description"> 
                        	<a><button type="submit" id = "saveLeave" class="btn btn-success"> Save</button> </a>
                        	<a><button class="btn btn-secondary"> Discard</button> </a>
                        </p>
                    </div>
                   <section class="section">
                   
                        <div class="row sameheight-container">
                        
                            <div class="col-md-6">
                                <div class="card card-block sameheight-item">
                                    <div class="title-block">
                                        <h3 class="title"> Boxed Inputs </h3>
                                    </div>
                                    <form action="saveLeave" method="post" name="leaveForm" >
                                    	
                                        <div class="form-group">
                                            <label class="control-label">Description</label>
                                            <input type="text" name="description" class="form-control boxed"> </div>
                                        <div class="form-group">
                                            <label class="control-label">Leave Type</label>
                                             <select name="leaveType" class="form-control boxed">
                                                
											     <option value="Legal Leaves 2018">Legal Leaves 2018</option>
											     <option value="Compensatory Days">Compensatory Days</option>
											     <option value="Sick Leaves">Sick Leaves</option>
											     <option value="Unpaid">Unpaid</option>
					
                                            </select> 
                                            
                                         </div>
                                         
                                        <div class="form-group">
                                            <label class="control-label">Start Date</label>
                                            
                                            	<input name="startDate" type="date" class="form-control boxed" placeholder="Placeholder text"> 
                                   				
                                            </div>
                                        	
                                        <div class="form-group">
                                            <label class="control-label">End Date</label>
                                            <input name="endDate" type="date" class="form-control boxed" placeholder="Disabled input text">
                                        </div>
                                       
                                        
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card card-block sameheight-item">
                                    <div class="title-block">
                                        <h3 class="title"> Boxed Inputs Validation </h3>
                                    </div>
                                    <form action="saveLeave" method="post" name="leaveForm" >
                                         <div class="form-group">
                                            <label class="control-label">Employee</label>
                                             <select name="empName" class="form-control boxed">
                                                <option value="Anjan Biswas">Anjan Biswas</option>
                                                <option value="Tarek Sefati">Tarek Sefati</option>
                                                <option value="Ruhin Gazi">Ruhin Gazi</option>
                                            </select> 
                                            
                                         </div>
                                          <div class="form-group">
                                            <label class="control-label">Department</label>
                                             <select name="empDept" class="form-control boxed">
                                                <option value="Development">Development</option>
                                                <option value="Development">Robotics</option>
                                            </select> 
                                            
                                         </div>
                                          <div class="form-group">
                                            <label class="control-label">Duration</label>
                                            <input type="text" disabled="disabled" class="form-control boxed" placeholder="Disabled input text">
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Comment By Manager</label>
                                            <textarea rows="3" name="managerComment" class="form-control boxed"></textarea>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </section>
                   
                </article>
                <footer class="footer">
                    <div class="footer-block buttons">
                        <!-- <iframe class="footer-github-btn" src="https://ghbtns.com/github-btn.html?user=modularcode&repo=modular-admin-html&type=star&count=true" frameborder="0" scrolling="0" width="140px" height="20px"></iframe> -->
                    </div>
                    <div class="footer-block author">
                        <ul>
                            <li> created by
                                <a href="https://github.com/anjanx44">Anjan</a>
                            </li>
                        </ul>
                    </div>
                </footer>
                <div class="modal fade" id="modal-media">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Media Library</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    <span class="sr-only">Close</span>
                                </button>
                            </div>
                            <div class="modal-body modal-tab-container">
                                <ul class="nav nav-tabs modal-tabs" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#gallery" data-toggle="tab" role="tab">Gallery</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#upload" data-toggle="tab" role="tab">Upload</a>
                                    </li>
                                </ul>
                                <div class="tab-content modal-tab-content">
                                    <div class="tab-pane fade" id="gallery" role="tabpanel">
                                        <div class="images-container">
                                            <div class="row"> </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade active in" id="upload" role="tabpanel">
                                        <div class="upload-container">
                                            <div id="dropzone">
                                                <form action="/" method="POST" enctype="multipart/form-data" class="dropzone needsclick dz-clickable" id="demo-upload">
                                                    <div class="dz-message-block">
                                                        <div class="dz-message needsclick"> Drop files here or click to upload. </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Insert Selected</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <div class="modal fade" id="confirm-modal">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">
                                    <i class="fa fa-warning"></i> Alert</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Are you sure want to do this?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Yes</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
        </div>
        <!-- Reference block for JS -->
        <div class="ref" id="ref">
            <div class="color-primary"></div>
            <div class="chart">
                <div class="color-primary"></div>
                <div class="color-secondary"></div>
            </div>
        </div>
        <!-- <script src="js/vendor.js"></script> -->
        <!-- <script src="js/app.js"></script> -->
        
    </body>
</html>