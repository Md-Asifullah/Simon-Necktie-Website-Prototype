<%@ Page Title="Simon Necktie - Login" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h1 class="center">User Login</h1>
        <br />
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                 <div>
                          <label>Username</label>
                    <asp:TextBox ID="username" runat="server" Class="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter username" ControlToValidate="username" ForeColor="Red"></asp:RequiredFieldValidator><br />
                     <label>Password</label>
                    <asp:TextBox ID="tbPassword" runat="server" Class="form-control" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" ControlToValidate="tbPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                     </div>
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" Class="btn btn-success" OnClick="btnLogin_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" Class="btn btn-warning" CausesValidation="False" OnClick="btnClear_Click"/>
                 <br />
                 <br />
                 <asp:Label ID="LoginErrorMsg" runat="server" ForeColor="Red"></asp:Label>
                 <br />
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE [Username] = @Username AND [Password] = @Password">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="username" Name="Username" PropertyName="Text" />
                         <asp:ControlParameter ControlID="tbPassword" Name="Password" PropertyName="Text" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 <br />
                </div>
            <div class="col-lg-4"></div>
            </div>
        </div>
</asp:Content>

