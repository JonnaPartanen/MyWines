<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyWines._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Jonnas Wine App</h1>
        <p class="lead">Asp.Net programming final task</p>
        <p>Learn how to use Master page and do database driven application</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Add New Wines</h2>
            <p style="color: #FFFFFF">
                Here You can add new wines to the database Check more!
            </p>
            <p>
                <a class="btn btn-default" href="~/AddWines">Add Wines &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Search Wines</h2>
            <p style="color: #FFFFFF">
                Here you can search wines by title or country from database.
            </p>
            <p>
                <a class="btn btn-default" href="~/SearchWine">Search Wines &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Delete Wines</h2>
            <p style="color: #FFFFFF">
                Here you can delete wines from database.
            </p>
            <p>
                <a class="btn btn-default" href="~/DeleteWines">Delete Wines &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
