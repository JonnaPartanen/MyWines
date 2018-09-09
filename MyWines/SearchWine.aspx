<%@ Page Title="Search Wine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchWine.aspx.cs" Inherits="MyWines.SearchWine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<h1>Search Wines</h1><br />
			<asp:Label ID="Label" runat="server" ForeColor="#009933" Text="Enter Wine TITLE or COUNTRY to search: " Font-Bold="True"></asp:Label>
	
			<asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox><br /><br />

			<asp:Button ID="Button1" runat="server" Text="Search" /><br /><br />
		<div id="search">
			<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
				<Columns>
					<asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
					<asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
					<asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
					<asp:BoundField DataField="taste" HeaderText="taste" SortExpression="taste" />
					<asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
					<asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
				</Columns>
			</asp:GridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT * FROM [Wine] WHERE ([country] = ?)">
				<SelectParameters>
					<asp:ControlParameter ControlID="SearchTextBox" Name="country" PropertyName="Text" Type="String" />
				</SelectParameters>
			</asp:SqlDataSource>
		</div>
	<div id="search2">
		<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
			<Columns>
				<asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
				<asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
				<asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
				<asp:BoundField DataField="taste" HeaderText="taste" SortExpression="taste" />
				<asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
				<asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
			</Columns>
		</asp:GridView>
		<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" SelectCommand="SELECT * FROM [Wine] WHERE ([title] = ?)">
			<SelectParameters>
				<asp:ControlParameter ControlID="SearchTextBox" Name="title" PropertyName="Text" Type="String" />
			</SelectParameters>
		</asp:SqlDataSource>
	</div>
</asp:Content>
