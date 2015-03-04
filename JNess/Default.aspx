<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="formContents" style="font-family: Arial, Helvetica, sans-serif; color: #606060">
        <div id="productText" style="border: thin solid #C0C0C0; padding: 4px; clear: both; float: left; width: 300px;">
            <ul>
                <li>
                    <label class="prompt" for="ProductsDropDownList">Select product:</label>
                    <asp:DropDownList ID="ProductsDropDownList" runat="server" DataSourceID="ProductsSqlDataSource" DataTextField="Name" DataValueField="ProductID" AutoPostBack="True">
                    </asp:DropDownList>
                </li>
                <li>
                    <asp:Label ID="NameLabel" runat="server"></asp:Label>
                </li>
                <li>
                    <asp:Label ID="ShortDescriptionLabel" runat="server"></asp:Label>
                </li>
                <li>
                    <asp:Label ID="LongDescriptionLabel" runat="server"></asp:Label>
                </li>
                <li>
                    <asp:Label ID="UnitPriceLabel" runat="server"></asp:Label>
                </li>
                <li>
                     <label class="prompt" for="QuantityTextBox">Quantity:</label><asp:TextBox ID="QuantityTextBox" runat="server" Width="41px" Text="1"></asp:TextBox>     
                     &nbsp;<asp:Button ID="AddButton" runat="server" Text="Add To Cart" />
                </li> 
                <li><asp:RequiredFieldValidator ID="QuantityRequiredFieldValidator" runat="server" ControlToValidate="QuantityTextBox" Display="Dynamic" ErrorMessage="Quantity is required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="QuantityRangeValidator" runat="server" ControlToValidate="QuantityTextBox" Display="Dynamic" ErrorMessage="Quantity must be a number from 1 to 500" ForeColor="#FF3300" MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </li>
                <li><asp:Button ID="CartButton" runat="server" Text="Go To Cart" CausesValidation="False" PostBackUrl="~/Cart.aspx" /></li> 
            </ul>            
        </div>
        <div style="float: left">
            <asp:Image ID="ProductImage" runat="server" />
        </div>
    </div>
    </asp:Content>
