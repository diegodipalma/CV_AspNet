<%@ Page Title="Download" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Download.aspx.cs" Inherits="CV_AspNet.Download" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

   
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nominativo" DataValueField="IDStudente">
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Scarica CV" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CVConnectionStringlocal %>" SelectCommand="SELECT Cognome + ' ' + Nome AS 'Nominativo', IDStudente FROM Studenti ORDER BY 'Nominativo'"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CVConnectionStringlocal %>" SelectCommand="SELECT [NomeCV] FROM [Studenti] WHERE ([IDStudente] = @IDStudente)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="IDStudente" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
   
    <br />
  </asp:Content>