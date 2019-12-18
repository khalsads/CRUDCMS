<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pages.aspx.cs" Inherits="CRUDCMS.Pages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="main flex_row vh_center">
        <aside class="aside1 flex_column h100">
            <div class="div_AddPage">
                <h3>Add New Page</h3>
            </div>
            <div class="div_AllPage">
                <h3>All Page</h3>
            </div>
            <div class="div_ModifyPage">
                <h3>Modify Page</h3>
            </div>
        </aside>

        <%-- This Div to wrap all section elements as only one section will be visible at a time --%>
        <div class="sectioncontainer flex_column vh_center h100">

            <%-- Section for Add New Page --%>
            <section class="section flex_column AddPage h100 w100">
                <div class="flex_row vh_center w100">
                    <h2>Add New Page</h2>
                    <asp:Button
                        runat="server"
                        ID="AddPageBtn"
                        Text="Add Page"
                        CssClass="AddPageBtn" />
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
