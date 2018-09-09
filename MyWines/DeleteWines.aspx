<%@ Page Title="Delete Books" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteWines.aspx.cs" Inherits="MyWines.DeleteWines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Wine]"></asp:SqlDataSource>

	<h1>Delete Wines</h1><br />
	<div class="row">
        <div class="col-md-3">
			<asp:Label ID="Label1" runat="server" Text="Enter Id you want to Delete:" ForeColor="#009933"></asp:Label>
		</div>

		<div class="col-md-4">
			<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		</div>

		<div class="col-md-5"></div>

	</div>
	<div class="row">
		<div class="col-md-12">
			<asp:Button ID="Button1" runat="server" Text="Remove Wine" OnClick="Remove_Click" />
		</div>
	</div>
</asp:Content>
