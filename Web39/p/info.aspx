﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.Danye" %>

<%@ Register Src="/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="/control/bot.ascx" TagPrefix="uc1" TagName="bot" %>
<%@ Register Src="/control/contact.ascx" TagPrefix="uc1" TagName="contact" %>
<%@ Register Src="/control/ad.ascx" TagPrefix="uc1" TagName="ad" %>
<%@ Register Src="/control/about.ascx" TagPrefix="uc1" TagName="about" %>
<%@ Register Src="/control/service.ascx" TagPrefix="uc1" TagName="service" %>
<%@ Register Src="/control/topart.ascx" TagPrefix="uc1" TagName="topart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%=mdy.Name %>-<%=PB.Get("webname") %></title>
    <link href="/images/inner.css" rel="stylesheet" type="text/css" />
    <link href="/images/common.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/functions.js"></script>
    <script type="text/javascript" src="/images/iepng/iepngfix_tilebg.js"></script>
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
                    <uc1:about runat="server" ID="about" />
                    <uc1:service runat="server" ID="service" />
                    <uc1:contact runat="server" ID="contact" />
                </div>
                <!--left end-->
                <!--right start-->
                <div class="right">
                    <div class="Position"><span>你的位置：<a href="../index.aspx">首页</a>> <a href='/page/<%=mdy.Ename %>.aspx'><%=mdy.Name %></a></span></div>
                    <div class="HeightTab clearfix"></div>
                    <!--main start-->
                    <div class="main">

                        <!--content start-->
                        <div class="content">
                            <div class="maincontent clearfix">
                                <%=mdy.Content %>
                            </div>
                        </div>
                        <!--content end-->
                    </div>
                    <!--main end-->
                </div>
                <!--right end-->
            </div>
            <!--inner end-->
        </div>
        <!--body end-->
        <uc1:bot runat="server" ID="bot" />
    </div>
</body>
</html>