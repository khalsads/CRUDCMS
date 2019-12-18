<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="CRUDCMS.UpdatePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main class="main flex_column vh_center">
        <div class="sectioncontainer flex_column vh_center h100">
            <%-- Section for Update Selected Page --%>
            <section runat="server" class="section flex_column UpdatePage h100 w100" id="UpdatePage">
                <div class="flex_row vh_center w100">
                    <h2>Update Page</h2>
                    <asp:Button
                        runat="server"
                        ID="UpdatePageBtn"
                        Text="Update Page"
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
        </div>
    </main>
</asp:Content>
