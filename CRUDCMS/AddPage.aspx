<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPage.aspx.cs" Inherits="CRUDCMS.Pages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="main flex_column vh_center">
<%--        <aside class="aside1 flex_column h100">
            <asp:Button runat="server" ID="sidebar_AddNewPage" Text="Add New Page" CssClass="sidebar_AddNewPage" OnClick="sidebar_AddNewPage_Click" />
            <asp:Button runat="server" ID="sidebar_AllPages" Text="List All Pages" CssClass="sidebar_AllPages" OnClick="sidebar_AllPages_Click" />
        </aside>--%>

        <%-- This Div to wrap all section elements as only one section will be visible at a time --%>
        <div class="sectioncontainer flex_column vh_center h100">

            <%-- Section for Add New Page --%>
            <section runat="server" class="section flex_column AddPage h100 w100" id="AddPage">
                <div class="flex_row vh_center w100">
                    <h2>Add New Page</h2>
                    <asp:Button
                        runat="server"
                        ID="AddPageBtn"
                        Text="Add Page"
                        CssClass="AddPageBtn" OnClick="AddPageBtn_Click" />
                </div>

                <div class="div_PageHeading flex_column vh_center">
                    <asp:Label
                        runat="server"
                        Text="Page Headding"
                        ID="PageHeadingLabel"
                        CssClass="PageHeadingLabel"
                        AssociatedControlID="PageHeading"></asp:Label>
                    <asp:TextBox
                        runat="server"
                        ID="PageHeading"
                        MaxLength="20"
                        CssClass="PageHeading test_border inblock w100"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        runat="server"
                        ID="PageHeadingReq"
                        ControlToValidate="PageHeading"
                        ErrorMessage="Page Headding Required!"></asp:RequiredFieldValidator>
                </div>
                <div class="div_PageBody flex_column vh_center w100">
                    <asp:Label
                        runat="server"
                        Text="Page Body"
                        ID="PageBodyLabel"
                        CssClass="PageBodyLabel"
                        AssociatedControlID="PageBody"></asp:Label>
                    <asp:TextBox
                        runat="server"
                        ID="PageBody"
                        CssClass="PageBody"
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        runat="server"
                        ID="PageBodyReq"
                        ControlToValidate="PageBody"
                        ErrorMessage="Page Body Cannot be empty"></asp:RequiredFieldValidator>
                </div>
            </section>

            <%-- Section to Show All Pages in database --%>
            <section class="section AllPage h100 hidden test_border">
                <h2>All Page</h2>
            </section>

            <%-- Section to d --%>
            <section class="section DelPage h100 hidden test_border">
                <h2>Delete Pages</h2>
            </section>
        </div>
    </main>

</asp:Content>
