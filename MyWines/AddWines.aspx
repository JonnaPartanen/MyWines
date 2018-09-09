<%@ Page Title="Add Wines" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddWines.aspx.cs" Inherits="MyWines.AddWines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" DeleteCommand="DELETE FROM [Wine] WHERE [ID] = ?" InsertCommand="INSERT INTO [Wine] ([title], [country], [taste], [price], [qty], [ID]) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="SELECT [title], [country], [taste], [price], [qty], [ID] FROM [Wine]" UpdateCommand="UPDATE [Wine] SET [title] = ?, [country] = ?, [taste] = ?, [price] = ?, [qty] = ? WHERE [ID] = ?">
		<DeleteParameters>
			<asp:Parameter Name="ID" Type="Int32" />
		</DeleteParameters>
		<InsertParameters>
			<asp:ControlParameter Name="title" Type="String" ControlId="TextBox1"/>
			<asp:ControlParameter Name="country" Type="String" ControlId="TextBox2"/>
			<asp:ControlParameter Name="taste" Type="String" ControlId="TextBox3"/>
			<asp:ControlParameter Name="price" Type="String" ControlId="TextBox4"/>
			<asp:ControlParameter Name="qty" Type="String" ControlId="TextBox5"/>
			<asp:ControlParameter Name="ID" Type="Int32" ControlId="TextBox6"/>
		</InsertParameters>
		<UpdateParameters>
			<asp:Parameter Name="title" Type="String" />
			<asp:Parameter Name="country" Type="String" />
			<asp:Parameter Name="taste" Type="String" />
			<asp:Parameter Name="price" Type="String" />
			<asp:Parameter Name="qty" Type="String" />
			<asp:Parameter Name="ID" Type="Int32" />
		</UpdateParameters>
</asp:SqlDataSource>
	<h1>Add New Wines</h1><br />
	<div class="row">
        <div class="col-md-1">
			<asp:Label ID="Label1" runat="server" Text="Title:" ForeColor="#009933"></asp:Label>
		</div>

		<div class="col-md-2">
			<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		</div>

		<div class="col-md-1">
			<asp:Label ID="Label2" runat="server" Text="Country:" ForeColor="#009933"></asp:Label>
		</div>

		<div class="col-md-2">
			<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
		</div>

		<div class="col-md-1">
			<asp:Label ID="Label3" runat="server" Text="Taste:" ForeColor="#009933"></asp:Label>
		</div>

		<div class="col-md-2">
			<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
		</div>
		<div class="col-md-3"></div>

	</div><br />

	<div class="row">
		<div class="col-md-1">
			<asp:Label ID="Label4" runat="server" Text="Price:" ForeColor="#009933"></asp:Label>
		</div>

		<div class="col-md-2">
			<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
		</div>

		<div class="col-md-1">
			<asp:Label ID="Label5" runat="server" Text="Quantity:" ForeColor="#009933"></asp:Label>
		</div>

		<div class="col-md-2">
			<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
		</div>

		<div class="col-md-1">
			<asp:Label ID="Label6" runat="server" Text="ID:" ForeColor="#009933"></asp:Label>
		</div>

		<div class="col-md-2">
			<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
		</div>

		<div class="col-md-3"></div>
	</div><br />

	<div class="row">
		<div class="col-md-12">
			<asp:Button ID="AddButton" runat="server" Text="Add New Wine" OnClick="Add_Click" />
		</div>
	</div>
</asp:Content>
