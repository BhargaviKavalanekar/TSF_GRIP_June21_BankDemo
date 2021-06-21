<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>header page</title>
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript">
    var flashvars = {};
    flashvars.xml_file = "photo_list.xml";
    var params = {};
    params.wmode = "transparent";
    var attributes = {};
    attributes.id = "slider";
    swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "780", "210", "9.0.0", false, flashvars, params, attributes);
</script>
</head>
<body>
<div id="tooplate_wrapper">

	<div id="tooplate_header">
        <!-- <div id="site_title"><h1><a href="#">DCB</a></h1></div> -->
        <div id="tooplate_menu">
            <ul>
                <li><a href="index.html" class="current">Home</a></li>
                <li><a href="CustomerServlet">Customers</a></li>
                <li><a href="CustomerServlet?action=history">Transactions</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> 
</div>  
</body>
</html>