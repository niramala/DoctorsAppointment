<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="DocApp.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 102px;
            width: 183px;
        }
        .auto-style1 {
            width: 1228px;
            height: 400px;
        }
        body{
            background-image:url(image/highimg.jpg);
            background-size:cover;
        }
        *{
            margin:0px;
            padding:0px;
        }
        #menu ul 
        {
            list-style:none;
        }
        #menu ul li
        {
            background-color:red;
            border:1px solid black;
            width:240px;
            height:40px;
            line-height:40px;
            text-align:center;
            float:left;position:relative;
        }
        #menu ul li a{
            text-decoration:none;
            color:black;
            display:block;
        }
        #menu ul li a:hover
        {
            background-color:maroon;

        }
        #menu ul ul
        {
            position:absolute;
            display:none;
        }
        #menu ul li:hover > ul
        {
            display:block;
        }
         .aa{
    width:700px;
    height:600px;
    background-color:rgba(255, 255, 255,0.5);
    margin:0 auto;
    margin-top:10px;
    padding-top:30px;
    padding-left:50px;
    border-radius: 15px;
    -webkit-border-radius:15px;
    -o-border-radius:15px;
    -moz-border-radius:15px;
    color:black;
    font-weight:bolder;
    box-shadow: inset -4px -4px rgba(255, 255, 255,0.5);
    font-size:18px;
}

.aa input[type="text"]{
    width:200px;
    height:20px;
    border:0;
    border-radius:7px;
    -webkit-border-radius:5px;
    -o-border-radius:5px;
    -moz-border-radius:5px;
}




.aa textarea[id="feedback"]{
    width:200px;
    height:70px;
    border:0;
    border-radius:7px;
    -webkit-border-radius:5px;
    -o-border-radius:5px;
    -moz-border-radius:5px;
}

.aa input[type="Submit"]{
    width:100px;
    height:30px;
    border:0;
    border-radius:7px;
    -webkit-border-radius:5px;
    -o-border-radius:5px;
    -moz-border-radius:5px;
    background-color:whitesmoke;
    font-weight:bolder;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
