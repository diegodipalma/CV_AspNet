<%@ Page Title="Seleziona Competenze Studenti" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SelezionaCompetenze.aspx.cs" Inherits="CV_AspNet.SelezionaCompetenze" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <br />
      <asp:GridView ID="GridView1" CssClass="table-wrapper" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="Grid" DataKeyNames="IDStudente">
                <Columns>
                    <asp:BoundField DataField="IDStudente" HeaderText="IDStudente" InsertVisible="False" ReadOnly="True" SortExpression="IDStudente" />
                    <asp:BoundField DataField="Cognome" HeaderText="Cognome" SortExpression="Cognome" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="DataNascita" HeaderText="DataNascita" SortExpression="DataNascita" />
                    <asp:BoundField DataField="Indirizzo" HeaderText="Indirizzo" SortExpression="Indirizzo" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="SitoWeb" HeaderText="SitoWeb" SortExpression="SitoWeb" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Grid" runat="server" ConnectionString="<%$ ConnectionStrings:CVConnectionStringlocal %>" SelectCommand="SELECT [IDStudente], [Cognome], [Nome], [DataNascita], [Indirizzo], [Telefono], [Email], [SitoWeb] FROM [Studenti]"></asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IDStudente" DataSourceID="detailsview" ForeColor="#333333" GridLines="None" Height="50px"  Width="300px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Cognome" HeaderText="Cognome" SortExpression="Cognome" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="DataNascita" HeaderText="DataNascita" SortExpression="DataNascita" />
                    <asp:BoundField DataField="Indirizzo" HeaderText="Indirizzo" SortExpression="Indirizzo" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="SitoWeb" HeaderText="SitoWeb" SortExpression="SitoWeb" />
                    <asp:BoundField DataField="IDStudente" HeaderText="IDStudente" InsertVisible="False" ReadOnly="True" SortExpression="IDStudente" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="detailsview" runat="server" ConnectionString="<%$ ConnectionStrings:CVConnectionStringlocal %>" DeleteCommand="DELETE FROM [Studenti] WHERE [IDStudente] = @IDStudente" InsertCommand="INSERT INTO [Studenti] ([Cognome], [Nome], [DataNascita], [Indirizzo], [Telefono], [Email], [SitoWeb]) VALUES (@Cognome, @Nome, @DataNascita, @Indirizzo, @Telefono, @Email, @SitoWeb)" SelectCommand="SELECT [Cognome], [Nome], [DataNascita], [Indirizzo], [Telefono], [Email], [SitoWeb], [IDStudente] FROM [Studenti] WHERE ([IDStudente] = @IDStudente)" UpdateCommand="UPDATE [Studenti] SET [Cognome] = @Cognome, [Nome] = @Nome, [DataNascita] = @DataNascita, [Indirizzo] = @Indirizzo, [Telefono] = @Telefono, [Email] = @Email, [SitoWeb] = @SitoWeb WHERE [IDStudente] = @IDStudente">
                <DeleteParameters>
                    <asp:Parameter Name="IDStudente" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Cognome" Type="String" />
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter DbType="Date" Name="DataNascita" />
                    <asp:Parameter Name="Indirizzo" Type="String" />
                    <asp:Parameter Name="Telefono" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SitoWeb" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="IDStudente" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Cognome" Type="String" />
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter DbType="Date" Name="DataNascita" />
                    <asp:Parameter Name="Indirizzo" Type="String" />
                    <asp:Parameter Name="Telefono" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SitoWeb" Type="String" />
                    <asp:Parameter Name="IDStudente" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Competenze" runat="server" ConnectionString="<%$ ConnectionStrings:CVConnectionStringlocal %>" SelectCommand="SELECT * FROM [Competenze]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="competenzexstudenti" runat="server" ConnectionString="<%$ ConnectionStrings:CVConnectionStringlocal %>" DeleteCommand="DELETE FROM CompetenzeDiStudente WHERE IDStudente = @studenti_id" InsertCommand="INSERT INTO CompetenzeDiStudente(IDCompetenza, IDStudente) VALUES (@competenza_id,
@studente_id)" SelectCommand="SELECT CompetenzeDiStudente.IDCompetenza, Competenze.Competenza, IDStudente FROM CompetenzeDiStudente INNER JOIN Competenze ON
CompetenzeDiStudente.IDCompetenza = Competenze.IDCompetenza WHERE (CompetenzeDiStudente.IDStudente=
@studente_id)">
                <DeleteParameters>
                    <asp:Parameter Name="studenti_id" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="competenza_id" />
                    <asp:Parameter Name="studente_id" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="studente_id" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <hr />
</asp:Content>
