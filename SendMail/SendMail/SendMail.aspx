<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SendMail.aspx.cs" Inherits="SendMail.SendMail" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>

        .input-group {
            width: 400px;
            margin:8px;
        }
        .input-group-addon {
            width: 100px;
        }

        #content_send_mail{
            margin-top:30px;
        }

    </style>

    <div id="content_send_mail" style="width: 1200px !important">
        <div id="group_radio_select_service">
            <label for="comment">Chọn service: </label>
            <label class="radio-inline"><input runat="server" type="radio" name="radio_service" id="radio_service_google">Google Serice</label>
            <label class="radio-inline"><input  runat="server" type="radio" name="radio_Service" id="radio_service_stpm">STPM Service</label>
        </div>
   
        <div class="input-group">
            <span class="input-group-addon" >From Email</span>
            <input runat="server" type="text" id="ip_txt_from_email" class="form-control" placeholder="Nhập email gửi" aria-describedby="basic-addon1">
        </div>
        <div class="input-group">
            <span class="input-group-addon" >Password</span>
            <input runat="server" type="password" id="ip_txt_pass_email" class="form-control" placeholder="Mật khẩu email gửi" aria-describedby="basic-addon1">
        </div>
        <div class="input-group">
            <span class="input-group-addon">To Email</span>
            <input runat="server" type="text"  id="ip_txt_to_email" class="form-control" placeholder="Nhập email nhận" aria-describedby="basic-addon1">
        </div>
          <div class="input-group" style="width:650px">
            <span class="input-group-addon" style="width:100px" >Subject</span>
            <input runat="server"  type="text" id="ip_txt_subject" class="form-control" style="max-width:540px; width:540px" placeholder="Nhập tiêu đề mail" aria-describedby="basic-addon1">
        </div>
        <div class="form-group">
            <textarea class="form-control" rows="7" id="txt_content_mail" placeholder="Nhập nội dung email..." runat="server" style="width:650px"></textarea>
        </div>
        <asp:Button ID="btnSendMail" class="btn btn-success" runat="server" Text="Send Mail" OnClick="btnSendMail_Click" />
    </div>

</asp:Content>
