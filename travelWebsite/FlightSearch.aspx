<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FlightSearch.aspx.cs" Inherits="travelWebsite.FlightSearch" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Travel Experts - Search Flights</title>
</asp:Content>
<asp:Content ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <section id="packageMenu" class="container-fluid">
	    <h2 class="display-4">Search for flight booking</h2>
		<div>
			<!--The search bar function allows user to search booking flights-->
			<div class="col bg-light py-2">
			<form action="include/flightdisplay.php" target="displayPort" method="post">
				<label>From:
                    <asp:TextBox ID="From" runat="server" size="30vw"></asp:TextBox>
				<label>Destination:
                    <asp:TextBox ID="Destination" runat="server" size="30vw"></asp:TextBox>
				</label>
				<label>When:
                    <asp:TextBox ID="When" type="date" runat="server"></asp:TextBox>
				</label>
				<label>Days:
                    <asp:TextBox ID="Days" type="number" runat="server"></asp:TextBox>
				</label>
				<div class="d-flex flex-row-reverse">
                    <asp:Button ID="SearchFlghtButton" runat="server" Text="Search Flight" OnClick="SearchFlghtButton_Click" />
				</div>
			</form>
                <asp:GridView ID="Search" runat="server" AllowPaging="True">
                </asp:GridView>
            <br />

			</div>
		</div>
	</section>
    </label>
</asp:Content>