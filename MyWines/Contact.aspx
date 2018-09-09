<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MyWines.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<asp:Image ID="Image2" runat="server" ImageUrl="~/ProfilePic.png" weight="100px" Height="80px" margin-top="20px" float="right"/>
	<br />
    <h2><%: Title %></h2>
    <h3>Jonna Partanen</h3>
    <address style="color: #009933">
        Lauri Korpisen Katu 10<br />
        01370 Vantaa, Finland<br />
        <abbr title="Phone">P:</abbr>
        0407469722
    </address>

    <address>
        <strong>E-mail:</strong>   <a href="mailto:jonna.partanen@student.laurea.fi">jonna.partanen@student.laurea.fi</a><br />
    </address>
	
</asp:Content>
