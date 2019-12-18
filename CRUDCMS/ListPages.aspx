<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListPages.aspx.cs" Inherits="CRUDCMS.ListPages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--    Using Grid View to Display data--%>
    <asp:GridView ID="CRUDCMSPageList" runat="server" AutoGenerateColumns="false" CssClass="page_list">
        <Columns>
            <asp:BoundField DataField="page_header" />
            <%--HeaderText="Page Heading"--%>
            <asp:BoundField DataField="page_author" />
            <%--HeaderText="Page Author"--%>
            <asp:BoundField DataField="page_body" />
            <%--HeaderText="Page Body"--%>
            <asp:TemplateField><%--HeaderText="Delete"--%>
                <ItemTemplate>
                    <asp:LinkButton ID="linkselect" Text="DELETE" runat="server" CommandArgument='<%# Eval("pageid") %>' OnClick="Del_Data"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
