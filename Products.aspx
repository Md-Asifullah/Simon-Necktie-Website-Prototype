<%@ Page Title="Simon Necktie - Products" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <img src="images/products_featured.jpg" class="img-fluid" alt="Responsive image" style="width: 100%"><br />
    <br />
    <div class="container">
        <h1 class="center">Products</h1>
        <br /><br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PId" DataSourceID="SqlDataSource1" class="table table-sm table-bordered table-condensed table-hover" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="PId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="PId" />
                <asp:BoundField DataField="PName" HeaderText="Product Name" SortExpression="PName" />
                <asp:TemplateField HeaderText="Product Image" SortExpression="PImagePath">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PImagePath") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail" ImageUrl='<%# Eval("PImagePath") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PPrice" HeaderText="Price" SortExpression="PPrice" DataFormatString="{0:C}" />
                <asp:TemplateField HeaderText="More Details" SortExpression="PNavURL">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PNavURL") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("PNavURL") %>' Text='View'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PDesc" HeaderText="Description" SortExpression="PDesc" />
                <asp:CommandField ButtonType="Button" SelectText="Add to Cart" ShowSelectButton="True">
                    <ControlStyle CssClass="btn btn-success" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        <br />
        <asp:Panel ID="Panel1" runat="server" class="card" Visible="False">
            <div class="card-header">
                Shopping Cart
            </div>
            <div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">
                         Product ID:
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </li>
                    <li class="list-group-item">
                         Product Name:
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </li>
                    <li class="list-group-item">Product Price:
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></li>
                    <li class="list-group-item">

                         Quantity: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                </asp:DropDownList>

                    </li>
                    <li class="list-group-item">
                         Total:
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </li>
                    <li class="list-group-item">
                        <asp:Button ID="Button1" runat="server" Text="Confirm" class="btn btn-success" OnClick="Button1_Click"/>
                        <asp:Button ID="Button2" runat="server" Text="Reset" class="btn btn-warning" OnClick="Button2_Click"/>
                    </li>
                </ul>
            </div>
            
            

        </asp:Panel>
        <br />
        <br />

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [OID] = @OID" InsertCommand="INSERT INTO [Orders] ([Username], [PID], [PName], [PPrice], [Qty], [Total], [OStatus], [ODateTime]) VALUES (@Username, @PID, @PName, @PPrice, @Qty, @Total, @OStatus, @ODateTime)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [Username] = @Username, [PID] = @PID, [PName] = @PName, [PPrice] = @PPrice, [Qty] = @Qty, [Total] = @Total, [OStatus] = @OStatus, [ODateTime] = @ODateTime WHERE [OID] = @OID">
            <DeleteParameters>
                <asp:Parameter Name="OID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
                <asp:ControlParameter ControlID="Label3" Name="PID" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label4" Name="PName" PropertyName="Text" Type="String" />
                <asp:SessionParameter Name="PPrice" SessionField="PPrice" Type="Double" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Qty" PropertyName="SelectedValue" Type="Int32" />
                <asp:SessionParameter Name="Total" SessionField="Total" Type="Double" />
                <asp:Parameter DefaultValue="NEW" Name="OStatus" Type="String" />
                <asp:SessionParameter DefaultValue="" Name="ODateTime" SessionField="Now" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="PID" Type="Int32" />
                <asp:Parameter Name="PName" Type="String" />
                <asp:Parameter Name="PPrice" Type="Double" />
                <asp:Parameter Name="Qty" Type="Int32" />
                <asp:Parameter Name="Total" Type="Double" />
                <asp:Parameter Name="OStatus" Type="String" />
                <asp:Parameter Name="ODateTime" Type="String" />
                <asp:Parameter Name="OID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

