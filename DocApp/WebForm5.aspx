<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="DocApp.WebForm5" %>

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
 <div style="height: 90px; width: 1208px; background-color:#b6ff00;text-align:center; margin-bottom: 0px;">
            <h1 style="height: 63px; width: 1057px">
        &nbsp; <i><b> DOCTORS APPOINTMENT BOOKING<br />WAY TO DOCTOR</b></i></h1>
            <p style="height: 63px; width: 1057px">
                &nbsp;</p>
            <h1 style="height: 63px; width: 1057px">
                &nbsp;</h1>
            <h1 style="height: 63px; width: 1057px">
                &nbsp;</h1>
            <h1 style="height: 63px; width: 1057px">
                <br />
    </h1>
      
    </div>
        <div id="menu" style="height: 45px; width: 1234px">    
        <ul>
            <li><a href="homepage.aspx">Home</a></li>
            <li><a href="myAbout.aspx">About</a></li>
            <li><a href="myContact.aspx">Contact Us</a></li>
            <li><a>Registration</a>
                 <ul>
                    <li><a href="docregis.aspx">Doctor</a></li>
                    <li><a href="patregis.aspx">Patient</a></li>
                </ul>
            </li>
            <li><a >Log In</a>
                <ul>
                     <li><a href="adminlogin.aspx">Admin</a></li>
                        <li><a href="doctorlogin.aspx">Doctor</a></li>
                        <li><a href="patientlogin.aspx">Patient</a></li>
                  
                </ul>
            </li>
        </ul>
            </div>

     <script language="javascript">

         function ValidateForm(frm) {

             /* first name should not be null and it should not begin with space */
             var name = ltrim(frm.name.value);
             if (name.length == 0) {
                 alert("Please enter  Name");
                 frm.name.focus();
                 return false;
             }

             /* first name should not contain digits and special symbols */
             var j;
             for (var j = 0; j < name.length; j++) {
                 var ch = name.charCodeAt(j);
                 if (!((ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122))) {
                     alert("First Name is invalid.");
                     frm.name.focus();
                     return false;
                 }
             }




             /* Email Validation */
             var email = /^[\w\_][\a-zA-z0-9\.]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/
             if (!(frm.email.value.match(email))) {
                 alert("Invalid Email");
                 return false;
                 frm.email.focus();
             }

             /* phone number should not contain characters */
             var cno = ltrim(frm.cno.value);
             if (cno.length == 0) {
                 alert("Please enter mobile number.");
                 frm.cno.focus();
                 return false;
             }
             if (cno.length != 10) {
                 alert("Mobile number must be equal to 10 digits");
                 frm.cno.focus();
                 return false;
             }
             var j;
             for (j = 0; j < cno.length; j++) {
                 var ch = cno.charCodeAt(j);
                 if (!(ch >= 48 && ch <= 57)) {
                     alert("Invalid Phone Number.");
                     frm.cno.focus();
                     return false;
                 }
             }


             /* address should not be null and it should not begin with space */
             var addr = ltrim(frm.addr.value);

             /* password should not be null and it should not begin with space */
             var password = ltrim(frm.password.value);

             /* confirm password should not be null and it should not begin with space */
             var cpassword = ltrim(frm.cpassword.value);


             function ltrim(str) {
                 var l = 0;
                 while (l < str.length && str[l] == ' ') {
                     l++;
                 }
                 return str.substring(l, str.length);
             }
         }
     </script>
    <br /><br />

    <form id="form1" runat="server">
    <div class="aa">
    <center>
        <b><i>Register</i></b>
    <p>
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:TextBox ID="TextBox1"  runat="server"  Height="25px" Width="170px" MaxLength="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="<b>* Please enter name</b>" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox1" runat="server" />
    </p><br />
    <p>
    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="170px" MaxLength="30" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="<b>* Please enter email</b>" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox2"  runat="server" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$" ErrorMessage="<b>* Email not valid" Display="Dynamic" ForeColor="Red">
         </asp:RegularExpressionValidator>
    </p><br />
    <p>
    <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="170px" CausesValidation="True" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ErrorMessage="<b>* Please enter contact</b>" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox3" runat="server" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ValidationExpression="[0-9]{10}" ErrorMessage="<b>* Contact should be of 10 digits" Display="Dynamic" ForeColor="Red">
         </asp:RegularExpressionValidator>
    </p><br />
    <p>
    <asp:Label ID="Label4" runat="server" Text="Specification"></asp:Label>
    
    &nbsp;
    
    <asp:TextBox ID="TextBox4"  runat="server"  Height="25px" Width="170px" MaxLength="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ErrorMessage="<b>* Please enter specification</b>" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox4" runat="server" />
    </p><br />
    <p>
    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox5"  type="password"  runat ="server" Height="25px" Width="170px" MaxLength="20" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="<b>* Please enter password</b>" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox5"  runat="server" />
         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ValidationExpression="[a-zA-Z0-9@#$%&*]{8,15}" ErrorMessage="<b>* Password should have at least 8 characters alpha-numeric" Display="Dynamic" ForeColor="Red">
        </asp:RegularExpressionValidator>
    </p><br />
    <p>
    <asp:Label ID="Label6" runat="server"  Text="Confirm_password"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" type="password" Height="25px" Width="170px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="<b>* Please re-enter password</b>" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox6" runat="server" />
         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox6" ValidationExpression="[a-zA-Z0-9@#$%&*]{8,15}" ErrorMessage="<b>* Password should have at least 8 characters alpha-numeric" Display="Dynamic" ForeColor="Red">
        </asp:RegularExpressionValidator>
    </p><br />
    <p>
    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="170px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ErrorMessage="<b>* Please enter address</b>" Display="Dynamic" ForeColor="Red"
                ControlToValidate="TextBox6" runat="server" />
    </p><br />
    

    <p>

        <asp:Button ID="Button1" runat="server" Height="32px" Text="submit" Width="105px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="32px" Text="cancel" Width="105px" />

    </p>
    </center>
</div>
<p>
    &nbsp;</p>

    

    </form>
</body>
</html>
