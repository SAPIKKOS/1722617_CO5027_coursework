<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Handbag.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1PlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
     <h2>Contact Us</h2>
     <asp:panel runat="server" ID="pnlCompose">
        <asp:validationsummary runat="server" CssClass="errorMessages">
        </asp:validationsummary>
        <div>
            <br />
            <asp:label id="lblEmail" runat="server" text="Email Address" associatedcontrolid="txtEmail" ClientMode="Predictable" ForeColor="Black"></asp:label>
            <asp:textbox id="txtEmail" runat="server" TextMode="Email" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"></asp:textbox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Please enter your email address" 
                ControlToValidate="txtEmail" CssClass="error" Enabled="false">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ErrorMessage="Please check you entered your email address correctly" 
                ControlToValidate="txtEmail" CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:label id="lblConfirmEmail" runat="server" text="Confirm Email" associatedcontrolid="txtConfirmEmail" ForeColor="Black"></asp:label>
            <asp:textbox id="txtConfirmEmail" runat="server"  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"></asp:textbox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Please check your confirmed email address" 
                ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" CssClass="error">*</asp:CompareValidator>
            <br />
        </div>
        <div>
            <asp:label id="lblSubject" runat="server" text="Subject" associatedcontrolid="txtSubject" ForeColor="Black"></asp:label>
             <asp:TextBox ID="txtSubject" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ErrorMessage="Please type a subject for the message" 
                ControlToValidate="txtSubject" CssClass="error">*</asp:RequiredFieldValidator>
            <br />
        </div>
        <div>
            <asp:label id="lblBody" runat="server" text="Your Message" associatedcontrolid="txtBody" ForeColor="Black"></asp:label>
            <asp:textbox id="txtBody" runat="server" textmode="MultiLine" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"></asp:textbox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" 
                ErrorMessage="Please type your message" ControlToValidate="txtBody" CssClass="error">*</asp:RequiredFieldValidator>
            <br />
        </div>

        <div>
            <asp:button id="btnContact" runat="server" text="Send" OnClick="btnContact_Click" />
                
        </div>
        <br/>
        <br/>
        <br/>
    </asp:panel>


    <asp:Panel ID="Panel1" runat="server" visible="false">
    <p>Your message has been sent</p>
    </asp:panel>


    <asp:Panel ID="pnlSent" runat="server" visible="false">
    <p>Your message has been sent</p>
    </asp:Panel>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder2" runat="server">
<div id="map">   
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 4.885731, lng: 114.931669 },
          zoom: 20
        });
        var marker = new google.maps.Marker({
            position: { lat: 4.885731, lng: 114.931669 },
            map: map
        });
      }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsgAhToHAREEc7nSd46aC2Z7mKpS_wE8Q&callback=initMap"
  type="text/javascript"></script></div></asp:Content>
