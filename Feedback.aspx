<%@ Page Title="Simon Necktie - Feedback" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <img src="../images/feedback_featured.jpg" class="img-fluid" alt="Responsive image" style="width:100%"><br /><br />
    <div class="container">
        <h1 class="center">Feedbacks</h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]" DeleteCommand="DELETE FROM [Feedback] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Feedback] ([Username], [UserType], [CreatedBy], [DateTime], [Feedback]) VALUES (@Username, @UserType, @CreatedBy, @DateTime, @Feedback)" UpdateCommand="UPDATE [Feedback] SET [Username] = @Username, [UserType] = @UserType, [CreatedBy] = @CreatedBy, [DateTime] = @DateTime, [Feedback] = @Feedback WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
                <asp:Parameter Name="UserType" Type="String" DefaultValue="user" />
                <asp:SessionParameter DefaultValue="" Name="CreatedBy" SessionField="Username" Type="String" />
                <asp:SessionParameter Name="DateTime" SessionField="Now" Type="String" />
                <asp:ControlParameter ControlID="feedback" Name="Feedback" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="UserType" Type="String" />
                <asp:Parameter Name="CreatedBy" Type="String" />
                <asp:Parameter Name="DateTime" Type="String" />
                <asp:Parameter Name="Feedback" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" class="table table-sm table-bordered table-condensed table-hover">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" Visible="False" />
                <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" Visible="False" />
                <asp:BoundField DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime" />
                <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
            </Columns>
        </asp:GridView>
        <br /><br />
        </div>
    </asp:Content>

