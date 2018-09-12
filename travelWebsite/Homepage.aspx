<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="travelWebsite.Homepage" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
    <title>Travel Experts</title>
    <link href="styling/PanelFix.css" rel="stylesheet" />
    <style>
        .CarouselModifyer {
            width: 80vw;
            height: 80vh;
        }
        .packTile {
            background-repeat: no-repeat;
            background-size: cover;  
            background-position: center center;
            float:left;
            width: 80vw;
            height: 80vh;
        }
        #item1 {
            background-image: url("images/venice.jpg"); 
        }
        #item2 {
            background-image: url("images/asia.jpg"); 
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="BodyPlaceHolder" runat="server">
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-body">
                Planning for a vacation? New deals for you:
            </div>
            <div class="panel-footer vertical-center">
                    <div id="carouselExampleControls" class="carousel slide CarouselModifyer" data-ride="carousel">
                      <div class="carousel-inner">
                        <div id="item2" class="carousel-item active packTile text-center">
                            Asian Expedition
                        </div>
                        <div id="item1" class="carousel-item packTile text-center">
                            European Vacation
                      </div>
                      <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>