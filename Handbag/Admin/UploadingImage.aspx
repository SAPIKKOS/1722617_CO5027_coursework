<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UploadingImage.aspx.cs" Inherits="Handbag.Admin.UploadingImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1PlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:panel runat="server" ID="pnlCompose">
        <asp:Image ID="CurrentImg" runat="server" width="200" height="230"/>
        <p> &nbsp; </p>

        <asp:FileUpload ID="ImageFileUploadControl" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"  />
       <p> &nbsp; </p>

        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click"   BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <p> &nbsp; </p> 

        <asp:Button ID="Button2" runat="server" Text="List page" OnClick="Button2_Click"   BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
   </asp:panel>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MapPlaceHolder2" runat="server">
</asp:Content>
