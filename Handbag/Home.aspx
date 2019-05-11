<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Handbag.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <br />
    <br />
        
 

  
<asp:SqlDataSource ID="Repeater" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

   <asp:Repeater ID="ProductList" runat="server" DataSourceID="Repeater">
      
        <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate>
        
        <ul class="repeater">
        <li>
            <asp:Image ID="image" runat="server" width="220" height="230" ImageUrl='<%#"~/Image/" + Eval("ID")+ ".jpg"%>'  AlternateText='<%#Eval("Product_Name") %>' ToolTip='<%#Eval("Product_Name") %>' />
                <p><a href="<%#Eval("ID","Product.aspx?Id={0}") %>"><%#Eval("Product_Name") %></a></p>
                <p>Desripction:<%#Eval("Description") %></p>
                <p>Quantity:<%#Eval("Quantity") %></p>
                <p>Price:<%#Eval("Price") %></p>
        </li>
    </ul>
                    </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>


    </asp:Repeater>
         
</asp:Content>

         

