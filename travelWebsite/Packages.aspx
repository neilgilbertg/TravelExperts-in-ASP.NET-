<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="travelWebsite.Packages" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Travel Experts - Packages</title>
    <style>
        .packageTile {
            float: left;
            margin: 8px;
            padding: 8px;
            border: 1px solid black;
            width: 310px;
            height: 310px;
            position: relative;
        }
        .bottomRight {
            position: absolute;
            right: 1vw;
            bottom: 2vh;
        }
        #package1 {
            background-image: url("images/package.jpg"); 
        }
        #package2 {
            background-image: url("images/flight.jpg"); 
            filter: grayscale(100%);
        }
        #package3 {
            background-image: url("images/rental.jpg"); 
            filter: grayscale(100%);
        }
        #package4 {
            background-image: url("images/hotel.jpg"); 
            filter: grayscale(100%);
        }
        .itemTile {
            background-repeat: no-repeat;
            background-size: cover;  
            background-position: center center;
            float:left;
            width: 310px;
            height: 250px;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <asp:DataList ID="DataList1" Width="100%" runat="server" DataSourceID="PackageDS" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
    <ItemTemplate>
        <div class="packageTile" style="background-image: url('images/packagesImages/<%# Eval("PackageId") %>.jpg')">
            <asp:Label ID="PkgNameLabel" runat="server" Text='<%# Eval("PkgName") %>' />
            <br /><br />
            <asp:Label ID="PkgDescLabel" runat="server" Text='<%# Eval("PkgDesc") %>' />
            <br /><br /><br />
            Start Date:
            <asp:Label ID="PkgStartDateLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PkgStartDate", "{0:MM/dd/yyyy}") %>' />
            <br />
            End Date:
            <asp:Label ID="PkgEndDateLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PkgEndDate", "{0:MM/dd/yyyy}")%>' />
            <br />
            <div class="bottomRight">
                Price:
                <asp:Label ID="PkgBasePriceLabel" runat="server" Text='<%# Convert.ToDecimal(Eval("PkgBasePrice"))+ Convert.ToDecimal(Eval("PkgAgencyCommission"))%>' />
                <br />
                <asp:Button ID="checkPackage" runat="server" Text="Check Package" CommandName="select" />
            </div>
            <asp:Label ID="PackageIdLabel" runat="server" Text='<%# Eval("PackageId") %>' Visible="False" />
        </div>
    </ItemTemplate>
</asp:DataList>
<asp:ObjectDataSource ID="PackageDS" runat="server" SelectMethod="GetPackages" TypeName="TravelExpertData.PackageDB"></asp:ObjectDataSource>
</asp:Content>