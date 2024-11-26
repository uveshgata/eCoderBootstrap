<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="India_Mart.LoginPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/Loginpage.css" />
    <link rel="icon" href="Images/FavIcon.webp" type="image/webp" />
    <title>Login | India-Mart Construction</title>
</head>

<body>
    <form id="Form1" runat="server">
        <!----------------------- Main Container ----------------------->
        <div class="container d-flex justify-content-center align-items-center min-vh-100">
            <!----------------------- Login Container ----------------------->
            <div class="row border rounded-5 p-3 bg-white shadow box-area">
                <!----------------------- Left Box ----------------------->
                <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box"
                    style="background: #3AAFA9;">
                    <div class="featured-image mb-3">
                        <img src="Images/FavIcon.webp" class="img-fluid border-radius" style="width: 250px; height:150px;" />
                    </div>
                    <p class="text-white fs-2 mb-0" style="font-family: 'Courier New', Courier, monospace; font-weight: 600;">
                        India-Mart
                    </p>
                    <p class="text-white fs-2 mb-0" style="font-family: 'Courier New', Courier, monospace; font-weight: 600;">
                        Login
                    </p>
                    <small class="text-white text-wrap text-center" style="width: 17rem; font-family: 'Courier New', Courier, monospace;">
                        The Trusted Source for Wholesale Construction Materials!
                    </small>
                </div>
                <!----------------------- Right Box ----------------------->
                <div class="col-md-6 right-box">
                    <div class="row align-items-center">
                        <div class="header-text" style="margin-bottom: 1rem!important;">
                            <h2>Welcome to India-Mart</h2>
                            <p style="margin:0;">Your partner for premium construction material at wholesale prices.</p>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-lg bg-light fs-6"
                                placeholder="Enter your Email Address"></asp:TextBox>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-lg bg-light fs-6"
                                placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-check">
                            <h5 class="d-inline">Login as:</h5>
                            &nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                RepeatDirection="Horizontal" RepeatLayout="Flow" ForeColor="#ECECEC" Font-Size=".875em" CssClass="cursor">
                                <asp:ListItem class="text-dark">Admin</asp:ListItem>
                                <asp:ListItem class="text-dark ms-2">Client</asp:ListItem>
                            </asp:RadioButtonList> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="*" ControlToValidate="RadioButtonList1" ForeColor="Red" 
                                SetFocusOnError="True" Display="Dynamic" Font-Bold="True" Font-Size="Large" 
                                ValidationGroup="y"></asp:RequiredFieldValidator>                   
                        </div>
                        <div class="input-group p-3 d-flex justify-content-between">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="formCheck" />
                                <label for="formCheck" class="form-check-label text-secondary">
                                    <small>Remember Me</small></label>
                            </div>
                            <div class="forgot">
                                <small><asp:LinkButton ID="LinkButton1" runat="server" 
                                    PostBackUrl="~/ForgotPassword.aspx">Forgot Password?</asp:LinkButton></small>
                            </div>                    
                        </div>
                        <div class="row labelcent mb-2">
                            <asp:Label ID="Label1" runat="server" Text="Invalid Email or Password!" 
                                ForeColor="Red" Visible="False"></asp:Label>
                        </div>
                        <div class="input-group mb-3">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg w-100 fs-6"
                                Text="Login" BackColor="#3AAFA9" ForeColor="Black" 
                                ValidationGroup="y" />
                        </div>                
                        <div class="warning-text mb-2 mt-0">
                            <small><span class="text-danger fw-bold" style="font-size:medium">Note:</span> By logging in, you agree to our
                                <asp:LinkButton ID="LinkButtonTerms" runat="server" PostBackUrl="~/Terms-Conditions.aspx"
                                    CssClass="text-decoration-underline text-primary">Terms & Conditions</asp:LinkButton>.
                            </small>
                        </div>                
                        <div class="row">
                            <small class="mt-1 ms-2">Don’t have an account? <a href="SignUp.aspx">Sign Up</a></small>                    
                        </div>
                        <div class="d-flex align-items-center justify-content-end">
                            <a href="Default.aspx" class="text-danger text-decoration-none">&#8617; Back to Home</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
