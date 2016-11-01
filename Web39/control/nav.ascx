<%@ Control Language="C#" AutoEventWireup="true" %>
<!--nav start-->
<div id="NavLink">
    <div class="NavBG">
        <!--Head Menu Start-->
        <ul id='sddm'>
            <li class='CurrentLi'><a href='/index.aspx'>网站首页
            </a></li>
            <li><a href='/page/company.aspx' onmouseover="mopen('m2')" onmouseout='mclosetime()'>部门介绍
            </a>
                <div id='m2' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'><a href='/page/company.aspx'>部门领导</a> <a href='/page/zuzhi.aspx'>组织机构</a> <a href='/page/introduce.aspx'>工作职能</a>  </div>
            </li>
            <li><a href='/product/list.aspx' onmouseover="mopen('m3')" onmouseout='mclosetime()'>新闻中心
            </a>
                <div id='m3' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'><a href='/page/company.aspx'>综合新闻</a> <a href='/page/zuzhi.aspx'>通知公告</a>  </div>
                <%--<div id='m3' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>
                    <% var t_pcate = LibCache.get_fenleis("c");
                       foreach (var item in t_pcate)
                       {
                    %>
                    <a href='/product/list.aspx?c=<%=item.ID %>'><%=item.Name %></a>
                    <%  } %>
                </div>--%>
            </li>
            <li><a href='/news/list.aspx' onmouseover="mopen('m4')" onmouseout='mclosetime()'>服务中心
            </a>
                <div id='m4' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'><a href='/page/company.aspx'>公交查询</a> <a href='/page/zuzhi.aspx'>保修服务</a>  </div>

                <%--<div id='m4' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>
                    <% var t_ncate = LibCache.get_fenleis("a");
                       foreach (var item in t_ncate)
                       {
                    %>
                    <a href='/news/list.aspx?c=<%=item.ID %>'><%=item.Name %></a>
                    <%  } %>
                </div>--%>
            </li>
            <li><a href='/anli/list.aspx' onmouseover="mopen('m5')" onmouseout='mclosetime()'>招标信息
            </a>
            </li>
            <li><a href='/page/zhichi.aspx' onmouseover="mopen('m5')" onmouseout='mclosetime()'>校园风光
            </a>
            </li>
            <li><a href='/page/job.aspx' onmouseover="mopen('m6')" onmouseout='mclosetime()'>政策法规
            </a>
            </li>
            <%--<li><a href='/page/contact.aspx'>联系方式
            </a></li>--%>
        </ul>
        <!--Head Menu End-->
    </div>
    <div class="clearfix"></div>
</div>
<!--nav end-->