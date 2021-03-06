﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.AnliList" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
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
    <title>校园风光-<%=PB.Get("webname") %></title>
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
                    <uc1:fengguang runat="server" ID="about" />
                </div>
                <!--left end-->
                <!--right start-->
                <div class="right">
                    <div class="Position"><span>你的位置：<a href="../index.aspx">首页</a>> <a href='/anli/list.aspx'>校园风光</a></span></div>
                    <div class="HeightTab clearfix"></div>
                    <!--main start-->
                    <div class="main">
                        <!--image start-->
                        <div class='ImageList'>
                            <% foreach (System.Data.DataRow item in dt.Rows)
                               {%>
                            <div class='ImageBlockBG'>
                                <div class='ImageBlock'>
                                    <a href='/anli/info.aspx?id=<%=item["id"] %>' target='_blank'>
                                        <img src='<%=LibFile.get_img(item["tupian"].GetString(),"356","262") %>' alt='<%=item["title"].GetString() %>' /></a><p><a href='/anli/info.aspx?id=<%=item["id"] %>' target='_blank'><%=item["title"].GetString().Subs(10) %></a></p>
                                </div>
                            </div>
                            <%} %>
                            <div class="clearfix"></div>
                            <div class='t_page ColorLink'>

                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" LastPageText="尾页"
                                    NextPageText="下一页" PrevPageText="上一页" OnPageChanged="aspnetpage_PageChanged"
                                    HorizontalAlign="Center" UrlPaging="true" AlwaysShow="true"
                                    ShowMoreButtons="False" ShowPageIndexBox="Never" NumericButtonCount="10" ShowDisabledButtons="False" PageSize="9">
                                </webdiyer:AspNetPager>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!--image end -->
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
