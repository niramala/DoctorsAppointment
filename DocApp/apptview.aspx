<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="apptview.aspx.cs" Inherits="DocApp.apptview" %>

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
          .aa
        {
            display:inline;
            text-align:center;
            justify-content:center;
            align-items:center;
            position:fixed;
            top:50%;
            left:40%;
            margin-top:-50px;
            margin-left:-50px;
        
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
        </style>

</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 90px; width: 1208px; background-color:#b6ff00;text-align:center; margin-bottom: 0px;">
            <h1 style="height: 63px; width: 1057px">
        &nbsp; <i><b> DOCTORS APPOINTMENT BOOKING<br />WAY TO DOCTOR</b></i></h1>
    
    </div>
        <div id="menu" style="height: 45px; width: 1234px">    
        <ul>
            <li><a href="homepage.aspx">Home</a></li>
            <li><a href="myAbout.aspx">About</a></li>
            <li><a href="myContact.aspx">Contact Us</a></li>
            <li><a>Menu</a>
                <ul>
                    <li><a href="viewdoctor.aspx"> View Doctor</a></li>
                    <li><a href="viewpatient.aspx"> View Patient</a></li>
                    <li><a href="apptview.aspx">View Appointment</a></li>
                </ul>
            </li>

            <li><a href="homepage.aspx">Log Out</a>
                            </li>
        </ul>
            </div>
            <div class="aa">
            <h2> APPOINTMENTS</h2>
                <p> &nbsp;</p>
                <asp:GridView ID="GridView1" runat="server" Height="175px" Width="354px">
                </asp:GridView>

            </div>
    </form>
</body>
</html>
