<%@ Page Language="C#" AutoEventWireup="true" Inherits="Tc.UI.Index" %>

<%@ Import Namespace="System.Linq" %>
<%@ Register Src="/control/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="/control/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="/control/bot.ascx" TagPrefix="uc1" TagName="bot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=7">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%=PB.Get("webname") %></title>
    <meta content="<%=PB.Get("keyword") %>" name="keywords" />
    <meta content="<%=PB.Get("description") %>" name="description" />
    <link href="/images/style.css" rel="stylesheet" type="text/css" />
    <link href="/images/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/functions.js"></script>
    <script type="text/javascript" src="/js/FocusSlide.js"></script>
    <script type="text/javascript" src="/js/ScrollPic.js"></script>
    <script type="text/javascript" src="/images/iepng/iepngfix_tilebg.js"></script>
</head>

<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <!--head start-->
            <div id="head">
                <uc1:top runat="server" ID="top" />
                <uc1:nav runat="server" ID="nav" />
                <!--focus start-->
                <div id="FocusBG">
                    <div id="Focus">
                        <ul>
                            <% var hdp = PB.get_huandong("index").OrderBy(p => p.Paixu);
                               foreach (var item in hdp)
                               {%>
                            <li><a href='<%=item.Url %>' target='_blank'>
                                <img src='<%=LibFile.get_img(item.Tupian,"","") %>' alt='<%=item.Title %>' /></a></li>
                            <%}  %>
                        </ul>
                    </div>
                </div>
                <!--foncus end-->
                <div class="HeightTab clearfix"></div>
            </div>
            <!--head end-->
            <!--body start-->
            <div id="body">
                <!--MainBlock start-->
                <div class="MainBlock">
                    <!--left start-->
                    <div class="right">
                        <div class="topic">
                            <div class="TopicTitle"><a href="/page/introduce.aspx">部门介绍</a></div>
                            <div class="TopicMore">
                                <a href='/page/company.aspx'>
                                    <img src="images/more.png"></a>
                            </div>
                        </div>
                        <div class='img'>
                            <% var _cm = PB.get_danye_model("introduce"); %>
                            <a href='/page/introduce.aspx' target='_blank'>
                                <%-- <img src='<%=LibFile.get_img(_cm.Tupian,"","") %>' width='280' height='150' alt='工作职能'>--%></a>
                        </div>
                        <div class='txt ColorLink'>
                            <p>
                                <%=_cm.Content.DeleteHMTL().Subs(165) %><a href='/page/introduce.aspx' target='_blank'>详细>></a>
                            </p>
                        </div>
                        <div class=" clearfix"></div>
                    </div>
                    <!--left end-->
                    <div class='WidthTab2'></div>

                    <!--right start-->
                    <div class="left">
                        <div class="tab">
                            <ul class="tab-hd">
                                <li><a href='/news/list.aspx?c=13'>综合新闻</a></li>
                                <li><a href='/news/list.aspx?c=14'>通知公告</a></li>
                            </ul>
                            <ul class="tab-bd">
                                <li>
                                    <div class='DivList'>
                                        <% var newslist = PB.get_article(9, "types='a' and Fenleiid=13", "id desc");
                                           foreach (var item in newslist)
                                           {%>
                                        <div class='DivLi'><span><%=item.Addtime.GetDateTime().ToString("MM-dd") %></span> <a href='/news/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'><%=item.Title.Subs(20) %></a></div>
                                        <%} %>

                                        <div class='clearfix'></div>
                                    </div>
                                </li>
                                <li>
                                    <div class='DivList'>
                                        <% newslist = PB.get_article(9, "types='a' and Fenleiid=14", "id desc");
                                           foreach (var item in newslist)
                                           {%>
                                        <div class='DivLi'><span><%=item.Addtime.GetDateTime().ToString("MM-dd") %></span> <a href='/news/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'><%=item.Title.Subs(20) %></a></div>
                                        <%} %>
                                        <div class='clearfix'></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--right end-->

                    <!--right2 start-->
                    <div class="right2">
                        <div class="topic">
                            <div class="TopicTitle"><a href='/page/bus.aspx'>服务中心</a></div>
                            <div class="TopicMore">
                                <a href='/page/bus.aspx'>
                                    <img src="images/more.png"></a>
                            </div>
                        </div>
                        <%-- <div class='img'>
                        <a href='/page/bus.aspx' target='_blank'>
                            <img src='/images/button/join.png' width='233' height='100' alt='服务中心'></a>
                    </div>--%>
                        <div class="txt ColorLink">
                            <%-- <p>地址：<%=PB.Get("dizhi") %></p>
                        <p>电话：<%=PB.Get("dianhua") %></p>
                        <p>传真：<%=PB.Get("chuanzhen") %></p>
                        <p>邮件：<%=PB.Get("email") %></p>
                        <p>网站：<a href='<%=PB.Get("web") %>' target='_blank'><%=PB.Get("web") %></a> </p>--%>
                            <p align='center'>
                                <%-- <p> <a href="http://wpa.qq.com/msgrd?v=3&uin=<%=PB.Get("qq1") %>&site=qq&menu=yes" target="_blank"><img src="<%=Lib.theme %>images/qqimg/webqq.gif" alt='在线QQ交谈' /></a> &nbsp;&nbsp;</p>
                             <p><a href="http://wpa.qq.com/msgrd?v=3&uin=<%=PB.Get("qq2") %>&site=qq&menu=yes" target="_blank"><img src="<%=Lib.theme %>images/qqimg/webqq.gif" alt='在线QQ交谈' /></a>&nbsp;&nbsp;</p>--%>
                                <p><a href="/page/bus.aspx" target="_blank">
                                    <img src="images/button/b9.png" alt='公交查询' /></a> &nbsp;&nbsp;</p>
                                <p><a href="/page/repair.aspx" target="_blank">
                                    <img src="images/button/b2.png" alt='保修服务' /></a>&nbsp;&nbsp;</p>
                                <p><a href="/page/time.aspx" target="_blank">
                                    <img src="images/button/b3.png" alt='办公时间' /></a> &nbsp;&nbsp;</p>
                                <p><a href="/page/map.aspx" target="_blank">
                                    <img src="images/button/b4.png" alt='校园地图' /></a>&nbsp;&nbsp;</p>
                            </p>
                        </div>

                        <div class=" clearfix"></div>
                    </div>
                    <!--right2 end-->
                    <div class="clearfix"></div>
                </div>
                <!--MainBlock end-->

                <!--MainBlock1 start-->
                <div class="MainBlock01">
                    <!--left start-->
                    <div class="right01">
                        <div class="topic01">
                            <div class="TopicTitle01"><a href="/news/list.aspx?c=19">政策法规</a></div>
                            <div class="TopicMore01">
                                <a href='/news/list.aspx?c=19'>
                                    <img src="images/more.png"></a>
                            </div>
                        </div>

                        <div class="tab01">

                            <ul class="tab-bd01">
                                <li>
                                    <div class='DivList01'>
                                        <% var newslist01 = PB.get_article(9, "types='c' and Fenleiid=19", "id desc");
                                           foreach (var item01 in newslist01)
                                           {%>
                                        <div class='DivLi01'><span><%=item01.Addtime.GetDateTime().ToString("MM-dd") %></span> <a href='/news/info.aspx?id=<%=item01.ID %>' target='_blank' title='<%=item01.Title %>'><%=item01.Title.Subs(20) %></a></div>
                                        <%} %>

                                        <div class='clearfix'></div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <div class=" clearfix"></div>
                    </div>
                    <!--left end-->
                    <div class='WidthTab2'></div>

                    <!--right start-->
                    <div class="left01">
                        <div class="tab01">
                             <div class="topic01">
                            <div class="TopicTitle01"><a href="/news/list.aspx?a=18">招标信息</a></div>
                            <div class="TopicMore01">
                                <a href='/news/list.aspx?a=18'>
                                    <img src="images/more.png"></a>
                            </div>
                        </div>
                            <ul class="tab-bd01">
                                <li>
                                    <div class='DivList01'>
                                        <% var newslist2 = PB.get_article(9, "types='a' and Fenleiid=13", "id desc");
                                           foreach (var item in newslist)
                                           {%>
                                        <div class='DivLi01'><span><%=item.Addtime.GetDateTime().ToString("MM-dd") %></span> <a href='/news/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'><%=item.Title.Subs(20) %></a></div>
                                        <%} %>

                                        <div class='clearfix'></div>
                                    </div>
                                </li>
                                <li>
                                    <div class='DivList01'>
                                        <% newslist = PB.get_article(9, "types='a' and Fenleiid=14", "id desc");
                                           foreach (var item in newslist)
                                           {%>
                                        <div class='DivLi01'><span><%=item.Addtime.GetDateTime().ToString("MM-dd") %></span> <a href='/news/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'><%=item.Title.Subs(20) %></a></div>
                                        <%} %>
                                        <div class='clearfix'></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--right end-->

                    <!--right2 start-->
                    <div class="right02">

                        <%-- <div class='img'>
                        <a href='/page/bus.aspx' target='_blank'>
                            <img src='/images/button/join.png' width='233' height='100' alt='服务中心'></a>
                    </div>--%>
                        <div class="txt ColorLink">

                            <p><a href="/page/bus.aspx" target="_blank">
                                <img src="images/button/b1.png" alt='公交查询' /></a> &nbsp;&nbsp;</p>
                            <p><a href="/page/repair.aspx" target="_blank">
                                <img src="images/button/b2.png" alt='保修服务' /></a>&nbsp;&nbsp;</p>
                            <p><a href="/page/time.aspx" target="_blank">
                                <img src="images/button/b3.png" alt='办公时间' /></a> &nbsp;&nbsp;</p>
                            <p><a href="/page/map.aspx" target="_blank">
                                <img src="images/button/b4.png" alt='校园地图' /></a>&nbsp;&nbsp;</p>

                        </div>

                        <div class=" clearfix"></div>
                    </div>
                    <!--right2 end-->
                    <div class="clearfix"></div>
                </div>
                <!--MainBlock end-->


                <div class="HeightTab2 clearfix"></div>

                <!--ProductShow start-->

                <div class='MainBlock'>
                    <div class='Solutions'>
                        <div class="topic">
                            <div class="TopicTitle">校园风光</div>
                            <div class="TopicMore">
                                <a href='/anli/list.aspx'>
                                    <img src="/images/more.png"></a>
                            </div>
                        </div>

                        <div id="Solutionsdemo">
                            <div id="Solutionsindemo">
                                <div id="Solutionsdemo1">
                                    <% var tupian = PB.get_images(10, "Fenleiid='0'", "id desc");
                                       foreach (var item in tupian)
                                       {%>
                                    <a href='/anli/info.aspx?id=<%=item.ID %>' target='_blank' title='<%=item.Title %>'>
                                        <img src='<%=LibFile.get_img(item.Tupian,"156","116") %>' width='166' height='124' alt='<%=item.Title %>' /></a>
                                    <%} %>
                                    <div class='clearfix'></div>
                                </div>
                                <div id="Solutionsdemo2"></div>
                            </div>
                        </div>
                        <script>
<!--
    var speed=10;
    var tab=document.getElementById("Solutionsdemo");
    var tab1=document.getElementById("Solutionsdemo1");
    var tab2=document.getElementById("Solutionsdemo2");
    tab2.innerHTML=tab1.innerHTML;
    function Marquee(){
        if(tab2.offsetWidth-tab.scrollLeft<=0)
            tab.scrollLeft-=tab1.offsetWidth
        else{
            tab.scrollLeft++;

        }
    }
    var MyMar=setInterval(Marquee,speed);
    tab.onmouseover=function() {clearInterval(MyMar)};
    tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
    -->
                        </script>

                        <div class='clearfix'></div>
                    </div>
                </div>
                <div class="HeightTab clearfix"></div>

                <!--MainBlock end-->
                <!--links start-->
                <div id="Links">
                    <span>友情链接：</span>
                    <% var linklist = PB.get_links(100, "").OrderBy(p => p.Paixu);
                       foreach (var item in linklist)
                       {
                    %>
                    <a href='<%=item.Url %>' target='_blank'><%=item.Name %></a>
                    <%
                   }
                    %>
                </div>
                <!--links end-->
            </div>
            <!--body end-->

            <uc1:bot runat="server" ID="bot" />
        </div>
    </form>
</body>
</html>
