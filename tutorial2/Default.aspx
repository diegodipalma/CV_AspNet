<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tutorial2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Info">
        <Columns>
            <asp:BoundField DataField="Cognome" HeaderText="Cognome" SortExpression="Cognome" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="DataNascita" HeaderText="DataNascita" SortExpression="DataNascita" />
            <asp:BoundField DataField="Indirizzo" HeaderText="Indirizzo" SortExpression="Indirizzo" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="SitoWeb" HeaderText="SitoWeb" SortExpression="SitoWeb" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Info" runat="server" ConnectionString="<%$ ConnectionStrings:CVConnectionStringlocal %>" SelectCommand="SELECT [Cognome], [Nome], [DataNascita], [Indirizzo], [Telefono], [Email], [SitoWeb] FROM [Studenti]" OnSelecting="Info_Selecting"></asp:SqlDataSource>

   

</asp:Content>
