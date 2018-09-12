<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingHistory.aspx.cs" Inherits="travelWebsite.BookingHistory" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Travel Experts - Booking History</title>
    <link href="styling/PanelFix.css" rel="stylesheet" />
    <style>
        .BookTile {
            width: 97vw;
            margin: 8px;
            padding: 8px;
            border-radius: 4px;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource2" RepeatLayout="Flow">
        <ItemTemplate>
        <div class="panel panel-default BookTile">
            <div class="panel-heading form-row">
                <div class="col-sm-1 text-center">
                    BookingNo:<br/>
                    <asp:Label ID="BookingNoLabel" runat="server" Text='<%# Eval("BookingNo") %>' />
                </div><div class="col-sm-1"></div>
                <div class="col-sm-7 text-left">
                    <asp:Label ID="BookingDateLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "BookingDate", "{0:MM/dd/yyyy}")%>' /><br />
                </div>
            </div>
            <div class="panel-body form-row">
                <div class="col-sm-9">
                    Package: <asp:Label ID="PackageIdLabel" runat="server" Text='<%# Eval("PackageId") %>' /><br/>
                    No. of Customers: <asp:Label ID="TravelerCountLabel" runat="server" Text='<%# Eval("TravelerCount") %>' />
                </div>
                <div class="col-sm-2">
                    Type:
                    <asp:Label ID="TripTypeIdLabel" runat="server" Text='<%# Eval("TripTypeId") %>' />
                </div>
                <asp:Label ID="BookingIdLabel" runat="server" Text='<%# Eval("BookingId") %>' Visible="False" />
                <asp:DataList ID="DataList2" Width="100%" runat="server" DataSourceID="ObjectDataSource1" RepeatLayout="Flow">
                    <ItemTemplate>
                    <div class="form-row">
                        <div class="col-sm-9">
                            Start:
                            <asp:Label ID="TripStartLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "TripStart", "{0:MM/dd/yyyy}")%>' />
                            <br />
                            End:
                            <asp:Label ID="TripEndLabel" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "TripEnd", "{0:MM/dd/yyyy}")%>' />
                            <br />
                        </div>
                        <div class="col-sm-2">
                            ItineraryNo:
                            <asp:Label ID="ItineraryNoLabel" runat="server" Text='<%# Eval("ItineraryNo") %>' />
                        </div>
                    <div class="panel panel-default w-100">
                    <div class="panel-heading">
                        Destination:
                        <asp:Label ID="DestinationLabel" runat="server" Text='<%# Eval("Destination") %>' />
                        <asp:Label ID="RegionIdLabel" runat="server" Text='<%# Eval("RegionId") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                        <br />
                        Class:
                        <asp:Label ID="ClassIdLabel" runat="server" Text='<%# Eval("ClassId") %>' />
                        
                        <div class="panel">
                            <asp:Label ID="ProductSupplierIdLabel" runat="server" Text='<%# Eval("ProductSupplierId") %>' Visible="False" />
                            <asp:Label ID="ReturnPlnIdLabel" runat="server" Text='<%# Eval("ReturnPlnId") %>' Visible="False" />
                            <asp:Label ID="DeparturePlnIdLabel" runat="server" Text='<%# Eval("DeparturePlnId") %>' Visible="False" />
                            Included in this Booking: <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Products" BorderStyle="None" GridLines="None">
                                <Columns>
                                    <asp:BoundField DataField="ProdName" SortExpression="ProdName" HeaderText="Products:" />
                                </Columns>
                            </asp:GridView>
                            <strong>Flights: </strong>
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" GridLines="None">
                                <Columns>
                                    <asp:BoundField DataField="FltPlaneNo" HeaderText="Plane No." SortExpression="FltPlaneNo" />
                                    <asp:BoundField DataField="FltDestination" HeaderText="Destination" SortExpression="FltDestination" />
                                    <asp:BoundField DataField="RegionId" SortExpression="RegionId" />
                                    <asp:BoundField DataField="FltLocation" HeaderText="From" SortExpression="FltLocation" />
                                    <asp:BoundField DataField="FltDepart" HeaderText="Depart Date" SortExpression="FltDepart" />
                                    <asp:BoundField DataField="FltReturn" HeaderText="Return Date" SortExpression="FltReturn" />
                                    <asp:BoundField DataField="FltTicketPrice" HeaderText="Price" SortExpression="FltTicketPrice" />
                                </Columns>
                            </asp:GridView>
                            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getFlightsById" TypeName="TravelExpertData.DBactions.FlightsTableDB">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DeparturePlnIdLabel" Name="DepartPlnId" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="ReturnPlnIdLabel" Name="ReturnPlnId" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div> 
                        <div class="form-row">
                            <div class="col-sm-8 text-right">
                                FeeId: <asp:Label ID="FeeIdLabel" runat="server" Text='<%# Eval("FeeId") %>' />
                            </div>
                            <div class="col-sm-2">
                                BasePrice: <asp:Label ID="BasePriceLabel" runat="server" Text='<%# Eval("BasePrice") %>' />
                            </div>
                            <div class="col-sm-8"></div>
                            <div class="col-sm-2">
                                Miscellaneous:
                                <asp:Label ID="AgencyCommissionLabel" runat="server" Text='<%# Eval("AgencyCommission") %>' />
                            </div>
                            <div class="col-sm-8"></div>
                            <div class="col-sm-3">
                                Total Booking Price:
                                <asp:Label ID="Label1" runat="server" Text='<%# Convert.ToDecimal(Eval("BasePrice"))+ Convert.ToDecimal(Eval("AgencyCommission")) %>' />
                            </div>
                        </div>
                        <asp:ObjectDataSource ID="Products" runat="server" SelectMethod="GetProductsFromProductD" TypeName="TravelExpertData.ProductDB">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ProductSupplierIdLabel" Name="ProductSupplierId" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
                </div>
                </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetBookingDetailByID" TypeName="TravelExpertData.DBactions.BookingDetailsDB">
                <SelectParameters>
                    <asp:ControlParameter ControlID="BookingIdLabel" Name="BookingId" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetBookingByID" TypeName="TravelExpertData.DBactions.BookingDB">
        <SelectParameters>
            <asp:CookieParameter CookieName="custUsername" Name="CookedCustId" Type="Int32" />
            <asp:SessionParameter Name="SessedCustId" SessionField="custUsername" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
</asp:Content>