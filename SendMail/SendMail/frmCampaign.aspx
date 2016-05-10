<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCampaign.aspx.cs" Inherits="SendMail.Campaign" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .input-group {
            width: 400px;
            margin: 8px;
        }

        .input-group-addon {
            width: 100px;
        }

        .marginControl {
            margin: 8px;
        }

        .gridView {
            margin: 8px;
            width: 600px;
        }
    </style>

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
    <script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
    <link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
    <%--  <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=txt_date_begin.ClientID %>").dynDateTime({
                showsTime: true,
                ifFormat: "%d/%m/%Y %H:%M",
                daFormat: "%l;%M %p, %e %m, %Y",
                align: "BR",
                electric: false,
                singleClick: false,
                displayArea: ".siblings('.dtcDisplayArea')",
                button: ".next()"
            });
            $("#<%=txt_date_end.ClientID %>").dynDateTime({
                showsTime: true,
                ifFormat: "%d/%m/%Y %H:%M",
                daFormat: "%l;%M %p, %e %m, %Y",
                align: "BR",
                electric: false,
                singleClick: false,
                displayArea: ".siblings('.dtcDisplayArea')",
                button: ".next()"
            });
        });
    </script>--%>

    <div id="content" style="width: 1200px !important; margin-top: 30px">
        <div id="content_send_mail" style="width: 900px !important;">
            <div runat="server">
                <div class="input-group">
                    <span class="input-group-addon">Tên chiến dịch</span>
                    <input runat="server" type="text" id="ip_txt_campaign_name" class="form-control" placeholder="Nhập tên chiến dịch" aria-describedby="basic-addon1">
                </div>
                <div class="form-group">
                    <textarea class="form-control" rows="4" id="txt_content_mail" placeholder="Mô tả" runat="server" style="width: 700px"></textarea>
                </div>
                <%--             <div class="input-group">
                    <span class="input-group-addon">Ngày bắt đầu</span>
                    <input runat="server" type="text" id="txt_date_begin" class="form-control" placeholder="Thời gian bắt đầu" aria-describedby="basic-addon1">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Ngày kết thúc</span>
                    <input runat="server" type="text" id="txt_date_end" class="form-control" placeholder="Thời gian kết thúc" aria-describedby="basic-addon1">
                </div>--%>
            </div>
            <br />
            <asp:Button ID="btnCreateCampaign" class="btn btn-success" runat="server" Text="Tạo chiến dịch" OnClick="btnCreateCampaign_Click" />
        </div>
        <br />
    </div>

    <div class="gridView">
        <dx:ASPxGridView ID="griv_campaign" runat="server"></dx:ASPxGridView>
    </div>
</asp:Content>
