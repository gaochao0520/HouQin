﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.Image" %>

<%@ Register Src="~/control/bot.ascx" TagPrefix="uc1" TagName="bot" %>
<%@ Register Src="~/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="~/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/control/about.ascx" TagPrefix="uc1" TagName="about" %>
<%@ Register Src="~/control/ad.ascx" TagPrefix="uc1" TagName="ad" %>

<%@ Register Src="~/control/fengguang.ascx" TagPrefix="uc1" TagName="fengguang" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%=img.Title %>-<%=PB.Get("webname") %></title>
    <link href="<%=Lib.theme %>images/inner.css" rel="stylesheet" type="text/css" />
    <link href="<%=Lib.theme %>images/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=Lib.theme %>js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=Lib.theme %>js/functions.js"></script>
    <script type="text/javascript" src="<%=Lib.theme %>images/iepng/iepngfix_tilebg.js"></script>
</head>

<body>
    <div id="wrapper">

        <!--head start-->
        <div id="head">
            <uc1:top runat="server" ID="top" />

            <uc1:nav runat="server" ID="nav" />
        </div>
        <!--head end-->
        <!--body start-->
        <div id="body">
            <uc1:ad runat="server" ID="ad" />
            <!--inner start -->
            <div class="inner">
                <!--left start-->
                <div class="left">
                    <uc1:fengguang runat="server" ID="fengguang" />
                </div>
                <!--left end-->
                <!--right start-->
                <div class="right">
                    <div class="Position"><span>你的位置：<a href="../index.aspx">首页</a>> <a href='/anli/list.aspx'>校园风光</a></span></div>
                    <div class="HeightTab clearfix"></div>
                    <!--main start-->
                    <div class="main">
                        <!--content start-->
                        <div class="content">
                            <div class="title">
                                <h3><%=img.Title %></h3>
                            </div>
                            <div class="infos"><%=img.Addtime.GetDateTime().ToString("yyyy-MM-dd") %></div>
                            <div class="maincontent clearfix">
                                <center>
                                    <img src="<%=LibFile.get_img(img.Tupian.GetString(),"356","262") %>" /></center>
                                <div class="IntroTitle">详细说明</div>
                                <%=img.Content %>
                            </div>
                        </div>
                        <!--content end-->
                    </div>
                    <!--content end-->
                </div>
                <!--main end-->
            </div>
            <!--right end-->
        </div>
        <!--inner end-->

        <!--body end-->
        <uc1:bot runat="server" ID="bot" />
    </div>
</body>
</html>
