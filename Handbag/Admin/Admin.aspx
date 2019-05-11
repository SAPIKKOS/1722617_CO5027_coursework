<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Handbag.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1PlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
       <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
            <asp:CommandField ShowEditButton="True" InsertVisible="False" />

                <asp:TemplateField HeaderText="Description" SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field Cannot Be Empty"
                    ForeColor="Red" Text="*ProductName is required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
                    </asp:TemplateField>

            
           <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="*Quantity must be in number" ForeColor="Red"
                        Operator="DataTypeCheck" ControlToValidate="TextBox5" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Thies Field Cannot Be Empty"
                    ForeColor="Red" Text="*ProductQuantity is required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Price" SortExpression="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator11" runat="server" ErrorMessage="*ProductPrice must be in number" ForeColor="Red"
                        Operator="DataTypeCheck" ControlToValidate="TextBox3" Type="Integer" Display="Dynamic"></asp:CompareValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This FIeld Cannot Be Empty "
                    ForeColor="Red" Text="*ProductPrice is required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Product_Name" SortExpression="Product_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Product_Name") %>'></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator111" runat="server" ErrorMessage="This FIeld Cannot Be Empty"
                    ForeColor="Red" Text="*ProductName is required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Product_Name") %>'></asp:Label>
                </ItemTemplate>
                    </asp:TemplateField>

          

            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="UploadingImage.aspx?Id={0}" Text="Upload" HeaderText="Image" />

            <asp:TemplateField>
            <ItemTemplate>
            <asp:LinkButton runat="server" ID="btnDelete" CommandName="Delete" OnClientClick="return confirm('Confirm to delete this record?');" Text="Delete" ></asp:LinkButton>
            </ItemTemplate></asp:TemplateField>
             </Columns>
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1722617_db_co5027_1722617_asgnConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [ID] = @original_ID AND [Product_Name] = @original_Product_Name AND [Price] = @original_Price AND [Quantity] = @original_Quantity AND [Description] = @original_Description" InsertCommand="INSERT INTO [Table] ([ID], [Product_Name], [Price], [Quantity], [Description]) VALUES (@ID, @Product_Name, @Price, @Quantity, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [Product_Name], [Price], [Quantity], [Description] FROM [Table]" UpdateCommand="UPDATE [Table] SET [Product_Name] = @Product_Name, [Price] = @Price, [Quantity] = @Quantity, [Description] = @Description WHERE [ID] = @original_ID AND [Product_Name] = @original_Product_Name AND [Price] = @original_Price AND [Quantity] = @original_Quantity AND [Description] = @original_Description">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Product_Name" Type="String" />
            <asp:Parameter Name="original_Price" Type="String" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Product_Name" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Product_Name" Type="String" />
            <asp:Parameter Name="original_Price" Type="String" />
            <asp:Parameter Name="original_Quantity" Type="Int32" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btnAdd" runat="server" OnClick="Button5_click" Text="Add Perfumes" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="40px" Width="170px" />
    </asp:Content>
   
<asp:Content ID="Content5" ContentPlaceHolderID="MapPlaceHolder2" runat="server">
</asp:Content>
