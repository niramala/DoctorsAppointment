<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookappt.aspx.cs" Inherits="DocApp.bookappt" %>

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
            <li><a href="pathome.aspx">Home</a></li>
            <li><a href="myAbout.aspx">About</a></li>
            <li><a href="myContact.aspx">Contact Us</a></li>
            <li><a>MENU</a>
                <ul>
                    <li><a href="bookappt.aspx">Book Appointment</a></li>
                    <li><a href="cancelappt.aspx">Cancel Appointment</a></li>
                </ul>
            </li>

            <li><a href="homepage.aspx">Log Out</a>
                
            </li>
        </ul>
            </div>
            <div class="aa">
             <asp:Label ID="Label1" runat="server" Text="Patient Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plese enter the required field" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                &nbsp;
                <asp:Label ID="Label4" runat="server" Text="Specification"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="-1">---select specification---</asp:ListItem>
                    <asp:ListItem Value="cardiologist" Enabled="True" Selected="False" Text="cardiologist">cardiologist</asp:ListItem>
                    <asp:ListItem Enabled="True" Selected="False" Text="dermatologists" Value="dermatologists">dermatologists</asp:ListItem>
                    <asp:ListItem Text="physician" Value="physician" Selected="False" Enabled="True">physician</asp:ListItem>
                    <asp:ListItem Enabled="true" Selected="False" Text="surgeons" Value="surgeons">surgeons</asp:ListItem>
                    <asp:ListItem Enabled="true" Selected="False" Value="nephrologist">nephrologist</asp:ListItem>
                    <asp:ListItem  Enabled="true" Selected="False" Value="neurologist" >neurologist</asp:ListItem>
                    <asp:ListItem Enabled="true" Selected="False" Value="gynecologist">gynecologist</asp:ListItem>
                    <asp:ListItem  Enabled="true" Selected="False" Value="physiatrists" >physiatrists</asp:ListItem>
                    <asp:ListItem  Enabled="true" Selected="False" Value="oncologist">oncologist</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Select an item" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>

                <br />
                <br />


                <asp:Label ID="Label3" runat="server" Text="Date"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    onclick="ImageButton1_Click" Height="19px" ImageUrl="~/image/calendar.jpg" 
                    Width="20px" />
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the required field" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>

                             
            &nbsp;<br />
                <br />
                <asp:Button ID="Button1" runat="server" Text=" Click To Select doctor" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Doctor"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="-1">---select Doctor---</asp:ListItem>
                 </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text=" Click To Select Time" 
                    onclick="Button3_Click" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />

&nbsp;<asp:Label ID="Label5" runat="server" Text="Select Time"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="-1">---Select Time---</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Book Appointment" 
                    onclick="Button2_Click1" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Text="Cancel" onclick="Button4_Click" />

    </div>

    </form>
</body>
</html>
