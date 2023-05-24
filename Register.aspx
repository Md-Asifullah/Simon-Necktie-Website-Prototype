<%@ Page Title="Simon Necktie - Register" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <h1 class="center">User Registration</h1>
        <br />
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div>
                    <label>First Name</label>
                    <asp:TextBox ID="firstName" runat="server" Class="form-control"></asp:TextBox>

                    <label>Last Name</label>
                    <asp:TextBox ID="lastName" runat="server" Class="form-control"></asp:TextBox>

                    <label>Username</label>
                    <asp:TextBox ID="username" runat="server" Class="form-control"></asp:TextBox>

                     <label>Password</label>
                    <asp:TextBox ID="tbPassword" runat="server" Class="form-control" TextMode="Password"></asp:TextBox>

                     <label>Confirm Password</label>
                    <asp:TextBox ID="confirmPassword" runat="server" Class="form-control" TextMode="Password"></asp:TextBox>

                     <label>Email</label>
                    <asp:TextBox ID="email" runat="server" Class="form-control" TextMode="Email"></asp:TextBox>

                     <label>Contact Number</label>
                    <asp:TextBox ID="contactNumber" runat="server" Class="form-control"></asp:TextBox>

                     <label>Address</label>
                    <asp:TextBox ID="address" runat="server" Class="form-control" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnRegister" runat="server" Text="Register" Class="btn btn-success" OnClick="btnRegister_Click"/>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" Class="btn btn-warning" OnClick="btnClear_Click"/>

                    
                    <br />
                    <br />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="username" Display="Dynamic" ErrorMessage="Username already exist!" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Email is Invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Message" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Users] ([Username], [FirstName], [LastName], [Password], [UserType], [Email], [ContactNo], [Address]) VALUES (@Username, @FirstName, @LastName, @Password, @UserType, @Email, @ContactNo, @Address)" SelectCommand="SELECT * FROM [Users] WHERE [Username] = @Username" UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [LastName] = @LastName, [Password] = @Password, [UserType] = @UserType, [Email] = @Email, [ContactNo] = @ContactNo, [Address] = @Address WHERE [Username] = @Username">
                        <DeleteParameters>
                            <asp:Parameter Name="Username" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="username" Name="Username" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="firstName" Name="FirstName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lastName" Name="LastName" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="tbPassword" Name="Password" PropertyName="Text" Type="String" />
                            <asp:Parameter DefaultValue="user" Name="UserType" Type="String" />
                            <asp:ControlParameter ControlID="email" DefaultValue="" Name="Email" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="contactNumber" Name="ContactNo" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="address" Name="Address" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="username" Name="Username" PropertyName="Text" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="UserType" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="ContactNo" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Username" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>

    </div>
</asp:Content>

