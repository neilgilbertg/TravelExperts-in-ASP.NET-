<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="travelWebsite.AboutUs" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Travel Experts - About Us</title>
    <link href="styling/PanelFix.css" rel="stylesheet" />
    <style>
        .AgencyTile {
            width: 97vw;
            margin: 8px;
            padding: 8px;
            border-radius: 4px;
        }
        .AgentTile {
            float: left;
            margin: 8px;
            padding: 8px;
            border: 1px solid black;
        }
        .MapTile {
            height: 45vh;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="BodyPlaceHolder" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1">
            <ItemTemplate>
            <div class="panel panel-default AgencyTile">
                <div class="panel-heading form-row">
                    <div class="col-9"><asp:Label ID="AgncyCityHeader" runat="server" Text='<%# Eval("AgncyCity") %>' /> Branch</div>
                    <div class="col-1 text-right"><asp:Label ID="AgncyCountryHeader" runat="server" Text='<%# Eval("AgncyCountry") %>' /></div>
                </div>
                <div class="panel-body form-row">
                    <div class="col-sm-7">
                        <asp:Label ID="AgncyAddressLabel" runat="server" Text='<%# Eval("AgncyAddress") %>' />,
                        <asp:Label ID="AgncyCityLabel" runat="server" Text='<%# Eval("AgncyCity") %>' /> 
                        <asp:Label ID="AgncyProvLabel" runat="server" Text='<%# Eval("AgncyProv") %>' />
                        <asp:Label ID="AgncyPostalLabel" runat="server" Text='<%# Eval("AgncyPostal") %>' />
                        <br />
                        AgncyPhone:
                        <asp:Label ID="AgncyPhoneLabel" runat="server" Text='<%# Eval("AgncyPhone") %>' />
                        <br />
                        AgncyFax:
                        <asp:Label ID="AgncyFaxLabel" runat="server" Text='<%# Eval("AgncyFax") %>' />
                    </div>
                    <div class="col-sm-5">
                        <iframe class="col-sm-12 MapTile" style="border:0"
            src="https://www.google.com/maps/embed/v1/place?q=<%# Eval("MapData") %>&key=AIzaSyDheK6bL97Eto7FxJat7IA1zcDqzkMwOG4"></iframe>    
                    </div>
                </div>
                <div class="panel panel-footer">
                    <asp:Label ID="AgencyIdLabel" runat="server" Text='<%# Eval("AgencyId") %>' Visible="False" />
                    <a data-toggle="collapse" data-target="#agents" href="#">
                        <p class="text-center">See Agents</p>
                    </a>
                    <div id="agents" class="collapse bg-light">
                        <asp:DataList ID="DataList2" runat="server" DataSourceID="ObjectDataSource1" HorizontalAlign="Left" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <ItemTemplate>
                                <div class="panel AgentTile">
                                AgtFirstName:
                                <asp:Label ID="AgtFirstNameLabel" runat="server" Text='<%# Eval("AgtFirstName") %>' />
                                <br />
                                AgtLastName:
                                <asp:Label ID="AgtLastNameLabel" runat="server" Text='<%# Eval("AgtLastName") %>' />
                                <br />
                                AgtBusPhone:
                                <asp:Label ID="AgtBusPhoneLabel" runat="server" Text='<%# Eval("AgtBusPhone") %>' />
                                <br />
                                AgtEmail:
                                <asp:Label ID="AgtEmailLabel" runat="server" Text='<%# Eval("AgtEmail") %>' />
                                <br />
                                AgtPosition:
                                <asp:Label ID="AgtPositionLabel" runat="server" Text='<%# Eval("AgtPosition") %>' />
                                <br />
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAgents" TypeName="TravelExpertData.DBactions.AgentsDB">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="AgencyIdLabel" Name="AgencyId" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="getAgencies" TypeName="TravelExpertData.DBactions.AgenciesDB"></asp:ObjectDataSource>
</asp:Content>