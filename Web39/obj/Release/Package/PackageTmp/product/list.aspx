﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.ProductList" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/control/contact.ascx" TagPrefix="uc1" TagName="contact" %>
<%@ Register Src="~/control/topchanpin.ascx" TagPrefix="uc1" TagName="topchanpin" %>
<%@ Register Src="~/control/catechanpin.ascx" TagPrefix="uc1" TagName="catechanpin" %>
<%@ Register Src="~/control/ad.ascx" TagPrefix="uc1" TagName="ad" %>
<%@ Register Src="~/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="~/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/control/bot.ascx" TagPrefix="uc1" TagName="bot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%=cate.Name.Length>0?cate.Name:"产品中心" %>-<%=PB.Get("webname") %></title>
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
                    <uc1:catechanpin runat="server" ID="catechanpin" />
                    <uc1:topchanpin runat="server" ID="topchanpin" />
                    <uc1:contact runat="server" ID="contact" />
                </div>
                <!--left end-->
                <!--right start-->
                <div class="right">
                    <div class="Position"><span>你的位置：<a href="/">首页</a>> <a href='/product/list.aspx'>公司产品</a></span></div>
                    <div class="HeightTab clearfix"></div>
                    <!--main start-->
                    <div class="main">

                        <!--content start-->
                        <div class="content">
                            <div class="MorePro">
                                <div class="CaseBlock">
                                    <ul>
                                        <ul>
                                            <% foreach (System.Data.DataRow item in dt.Rows)
                                               {%>

                                            <div class='albumblock'>
                                                <div class='inner'>
                                                    <a href='/product/info.aspx?id=<%=item["id"] %>' target='_blank'>
                                                        <img src='<%=LibFile.get_img(item["tupian"].GetString(),"270","270") %>' alt='<%=item["title"].GetString() %>' /></a><div class='albumtitle'><a href='/product/info.aspx?id=<%=item["id"] %>' target='_blank'><%=item["title"].GetString().Subs(10) %></a></div>
                                                </div>
                                            </div>
                                            <%} %>
                                        </ul>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                                <div class='t_page ColorLink'>
                                    <webdiyer:AspNetPager ID="aspnetpage" runat="server" FirstPageText="首页" LastPageText="尾页"
                                        NextPageText="下一页" PrevPageText="上一页" OnPageChanged="aspnetpage_PageChanged"
                                        HorizontalAlign="Center" UrlPaging="true" AlwaysShow="true"
                                        ShowMoreButtons="False" ShowPageIndexBox="Never" NumericButtonCount="10" ShowDisabledButtons="False" PageSize="20">
                                    </webdiyer:AspNetPager>
                                </div>
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
    <script type="text/javascript">
        window.onerror = function () { return true; }
    </script>
</body>
</html>