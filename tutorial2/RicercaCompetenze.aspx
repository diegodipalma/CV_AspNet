<%@ Page Title="Ricerca Competenze Studenti" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="RicercaCompetenze.aspx.cs" Inherits="tutorial2.RicercaCompetenze" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
   
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dropdownlist" DataTextField="Competenza" DataValueField="IDCompetenza">
    </asp:DropDownList>
    <asp:SqlDataSource ID="dropdownlist" runat="server" ConnectionString="<%$ ConnectionStrings:CVConnectionStringlocal %>" SelectCommand="SELECT [IDCompetenza], [Competenza] FROM [Competenze]"></asp:SqlDataSource>

   
</asp:Content>

