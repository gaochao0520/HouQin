﻿using Maticsoft.DBUtility;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

/**
* Copyright (c) 2013-2020 Tuichu.net. All rights reserved.
*┌──────────────────────────────────┐
*│  作者QQ:599906561  email: 599906561@qq.com
*│  QQ群： 2068911
*│　版权所有：推出网版权所有 http://www.tuichu.net　
*└──────────────────────────────────┘
*/

namespace Tc.DAL
{
    public class DALP
    {
        /// <summary>
        /// 获取分页数据
        /// </summary>
        /// <param name="tablename"></param>
        /// <param name="orderby"></param>
        /// <param name="startrecordindex"></param>
        /// <param name="pagesize"></param>
        /// <param name="where"></param>
        /// <param name="sumcount"></param>
        /// <returns></returns>
        public DataTable Get_Page_List(string tablename, string orderby, int startrecordindex, int pagesize, string where, out int sumcount)
        {
            StringBuilder sb = new StringBuilder();
            var sql = "select row_number() over ( order by " + orderby + " ) as rowid ,* from " + tablename;
            if (where.Length > 0)
            {
                sql += " where " + where;
            }
            sb.Append("with temp as( ");
            sb.Append(sql);
            sb.Append(" )");
            sb.Append(" select * from temp where rowid between ");
            sb.Append(startrecordindex);
            sb.Append(" and ");
            sb.Append(startrecordindex + pagesize - 1);
            sb.Append(" ;select count(id) from (");
            sb.Append(sql);
            sb.Append(") t ");
            DataSet ds = DbHelperSQL.Query(sb.ToString());
            sumcount = ds.Tables[1].Rows[0][0].GetString().GetInt();
            return ds.Tables[0];
        }


        public DataTable Get_Page_List(string tablename, string orderby, int startrecordindex, int pagesize, out int sumcount)
        {
            StringBuilder sb = new StringBuilder();
            var sql = "select row_number() over ( order by " + orderby + " ) as rowid ,* from " + tablename;
            sb.Append("with temp as( ");
            sb.Append(sql);
            sb.Append(" )");
            sb.Append(" select * from temp where rowid between ");
            sb.Append(startrecordindex);
            sb.Append(" and ");
            sb.Append(startrecordindex + pagesize - 1);
            sb.Append(" ;select count(id) from (");
            sb.Append(sql);
            sb.Append(") t ");
            DataSet ds = DbHelperSQL.Query(sb.ToString());
            sumcount = ds.Tables[1].Rows[0][0].GetString().GetInt();
            return ds.Tables[0];
        }
    }
}