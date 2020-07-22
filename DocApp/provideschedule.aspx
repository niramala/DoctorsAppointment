<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="provideschedule.aspx.cs" Inherits="DocApp.provideschedule" %>

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
    position:fixed;
            top:30%;
            left:30%;
            margin-top:-50px;
            margin-left:-50px;
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

.aa input[type="password"]{
    width:200px;
    height:25px;
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
    <div style="height: 90px; width: 1208px; background-color:#b6ff00;text-align:center; margin-bottom: 0px;">
            <h1 style="height: 63px; width: 1057px">
        &nbsp; <i><b> DOCTORS APPOINTMENT BOOKING<br />WAY TO DOCTOR</b></i></h1>
    
    </div>
        <div id="menu" style="height: 45px; width: 1234px">    
        <ul>
            <li><a href="dochome.aspx">Home</a></li>
            <li><a href="myAbout.aspx">About</a></li>
            <li><a href="myContact.aspx">Contact Us</a></li>
            <li><a>MENU</a>
                <ul>
                    <li><a href="viewdocappt.aspx">View Appointment</a></li>
                    <li><a href="provideschedule.aspx">Provide Schedule</a></li>
                </ul>
            </li>

            <li><a href="homepage.aspx">Log Out</a>
                
            </li>
        </ul>
            </div>
            <div class="aa">
            <h1>Provide Schedule</h1>
            <p>
            <asp:Label ID="Label3" runat="server" Text="EmailID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="159px"></asp:TextBox>

            </p>
                <p>
                    &nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Select Date"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="159px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
                    ImageUrl="~/image/calendar.jpg" onclick="ImageButton1_Click1" Width="24px" />
             
                &nbsp;<asp:Calendar ID="Calendar1" runat="server" 
                        onselectionchanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
           </p><br />
           <p>
               <asp:Label ID="Label2" runat="server" Text="Time"></asp:Label>                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>   
           </p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <asp:Button ID="Button1" runat="server" Text="Enter" onclick="Button1_Click" />    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
            </div>

    </form>
</body>
</html>
