<%@ Page Title="Wines" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Wines.aspx.cs" Inherits="MyWines.Wines" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<h1>Wines:</h1>

	 <div class="row">
        <div class="col-md-8">
	<asp:ListView ID="WineList" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
		<AlternatingItemTemplate>
			<tr style="">
				<td>
					<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
				</td>
				<td>
					<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
				</td>
				<td>
					<asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>' />
				</td>
				<td>
					<asp:Label ID="tasteLabel" runat="server" Text='<%# Eval("taste") %>' />
				</td>
				<td>
					<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
				</td>
				<td>
					<asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
				</td>
			</tr>
		</AlternatingItemTemplate>
		<EditItemTemplate>
			<tr style="">
				<td>
					<asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
					<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
				</td>
				<td>
					<asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
				</td>
				<td>
					<asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
				</td>
				<td>
					<asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
				</td>
				<td>
					<asp:TextBox ID="tasteTextBox" runat="server" Text='<%# Bind("taste") %>' />
				</td>
				<td>
					<asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
				</td>
				<td>
					<asp:TextBox ID="qtyTextBox" runat="server" Text='<%# Bind("qty") %>' />
				</td>
			</tr>
		</EditItemTemplate>
		<EmptyDataTemplate>
			<table runat="server" style="">
				<tr>
					<td>No data was returned.</td>
				</tr>
			</table>
		</EmptyDataTemplate>
		<InsertItemTemplate>
			<tr style="">
				<td>
					<asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
					<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
				</td>
				<td>&nbsp;</td>
				<td>
					<asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
				</td>
				<td>
					<asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
				</td>
				<td>
					<asp:TextBox ID="tasteTextBox" runat="server" Text='<%# Bind("taste") %>' />
				</td>
				<td>
					<asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
				</td>
				<td>
					<asp:TextBox ID="qtyTextBox" runat="server" Text='<%# Bind("qty") %>' />
				</td>
			</tr>
		</InsertItemTemplate>
		<ItemTemplate>
			<tr style="">
				<td>
					<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
				</td>
				<td>
					<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
				</td>
				<td>
					<asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>' />
				</td>
				<td>
					<asp:Label ID="tasteLabel" runat="server" Text='<%# Eval("taste") %>' />
				</td>
				<td>
					<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
				</td>
				<td>
					<asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
				</td>
			</tr>
		</ItemTemplate>
		<LayoutTemplate>
			<table runat="server">
				<tr runat="server">
					<td runat="server">
						<table id="itemPlaceholderContainer" runat="server" border="0" style="">
							<tr runat="server" style="">
								<th runat="server">ID</th>
								<th runat="server">title</th>
								<th runat="server">country</th>
								<th runat="server">taste</th>
								<th runat="server">price</th>
								<th runat="server">qty</th>
							</tr>
							<tr id="itemPlaceholder" runat="server">
							</tr>
						</table>
					</td>
				</tr>
				<tr runat="server">
					<td runat="server" style="">
						<asp:DataPager ID="DataPager1" runat="server">
							<Fields>
								<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
							</Fields>
						</asp:DataPager>
					</td>
				</tr>
			</table>
		</LayoutTemplate>
		<SelectedItemTemplate>
			<tr style="">
				<td>
					<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
				</td>
				<td>
					<asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
				</td>
				<td>
					<asp:Label ID="countryLabel" runat="server" Text='<%# Eval("country") %>' />
				</td>
				<td>
					<asp:Label ID="tasteLabel" runat="server" Text='<%# Eval("taste") %>' />
				</td>
				<td>
					<asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
				</td>
				<td>
					<asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
				</td>
			</tr>
		</SelectedItemTemplate>
	</asp:ListView>
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Wine]"></asp:SqlDataSource>

			</div>
		 <div class="col-md-4">


		 	<asp:Image ID="Image1" runat="server" ImageUrl="~/winePic.png" />


		 </div>
		 </div>
</asp:Content>
