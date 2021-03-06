﻿/**
* Copyright (c) 2016-2020 All rights reserved.
*┌──────────────────────────────────┐
*│  作者QQ:632029078  email: 632029078@qq.com
*│　版权所有：GC网版权所有
*└──────────────────────────────────┘
*/
using Maticsoft.DBUtility;//Please add references
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Tc.DAL
{
    /// <summary>
    /// 数据访问类:TcArticle
    /// </summary>
    public partial class TcArticle
    {
        public TcArticle()
        { }

        #region BasicMethod

        /// <summary>
        /// 得到最大ID
        /// </summary>
        public int GetMaxId()
        {
            return DbHelperSQL.GetMaxID("ID", "TcArticle");
        }

        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from TcArticle");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)
			};
            parameters[0].Value = ID;

            return DbHelperSQL.Exists(strSql.ToString(), parameters);
        }

        /// <summary>
        /// 增加一条数据
        /// </summary>
        public int Add(Tc.Model.TcArticle model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("insert into TcArticle(");
            strSql.Append("Fenleiid,Title,Types,Jianyao,Tupian,Shipin,Url,Content,Click,AddUser,Addtime,Color,IsTuijian,IsTop,SeoTitle,SeoKeyword,SeoDescription)");
            strSql.Append(" values (");
            strSql.Append("@Fenleiid,@Title,@Types,@Jianyao,@Tupian,@Shipin,@Url,@Content,@Click,@AddUser,@Addtime,@Color,@IsTuijian,@IsTop,@SeoTitle,@SeoKeyword,@SeoDescription)");
            strSql.Append(";select @@IDENTITY");
            SqlParameter[] parameters = {
					new SqlParameter("@Fenleiid", SqlDbType.Int,4),
					new SqlParameter("@Title", SqlDbType.NVarChar,200),
					new SqlParameter("@Types", SqlDbType.NVarChar,200),
					new SqlParameter("@Jianyao", SqlDbType.NVarChar,200),
					new SqlParameter("@Tupian", SqlDbType.NVarChar,200),
					new SqlParameter("@Shipin", SqlDbType.NVarChar,500),
					new SqlParameter("@Url", SqlDbType.NVarChar,200),
					new SqlParameter("@Content", SqlDbType.NText),
					new SqlParameter("@Click", SqlDbType.Int,4),
					new SqlParameter("@AddUser", SqlDbType.Int,4),
					new SqlParameter("@Addtime", SqlDbType.DateTime),
					new SqlParameter("@Color", SqlDbType.NVarChar,20),
					new SqlParameter("@IsTuijian", SqlDbType.Int,4),
					new SqlParameter("@IsTop", SqlDbType.Int,4),
					new SqlParameter("@SeoTitle", SqlDbType.NVarChar,300),
					new SqlParameter("@SeoKeyword", SqlDbType.NVarChar,300),
					new SqlParameter("@SeoDescription", SqlDbType.NVarChar,300)};
            parameters[0].Value = model.Fenleiid;
            parameters[1].Value = model.Title;
            parameters[2].Value = model.Types;
            parameters[3].Value = model.Jianyao;
            parameters[4].Value = model.Tupian;
            parameters[5].Value = model.Shipin;
            parameters[6].Value = model.Url;
            parameters[7].Value = model.Content;
            parameters[8].Value = model.Click;
            parameters[9].Value = model.AddUser;
            parameters[10].Value = model.Addtime;
            parameters[11].Value = model.Color;
            parameters[12].Value = model.IsTuijian;
            parameters[13].Value = model.IsTop;
            parameters[14].Value = model.SeoTitle;
            parameters[15].Value = model.SeoKeyword;
            parameters[16].Value = model.SeoDescription;

            object obj = DbHelperSQL.GetSingle(strSql.ToString(), parameters);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }

        /// <summary>
        /// 更新一条数据
        /// </summary>
        public bool Update(Tc.Model.TcArticle model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update TcArticle set ");
            strSql.Append("Fenleiid=@Fenleiid,");
            strSql.Append("Title=@Title,");
            strSql.Append("Types=@Types,");
            strSql.Append("Jianyao=@Jianyao,");
            strSql.Append("Tupian=@Tupian,");
            strSql.Append("Shipin=@Shipin,");
            strSql.Append("Url=@Url,");
            strSql.Append("Content=@Content,");
            strSql.Append("Click=@Click,");
            strSql.Append("AddUser=@AddUser,");
            strSql.Append("Addtime=@Addtime,");
            strSql.Append("Color=@Color,");
            strSql.Append("IsTuijian=@IsTuijian,");
            strSql.Append("IsTop=@IsTop,");
            strSql.Append("SeoTitle=@SeoTitle,");
            strSql.Append("SeoKeyword=@SeoKeyword,");
            strSql.Append("SeoDescription=@SeoDescription");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
					new SqlParameter("@Fenleiid", SqlDbType.Int,4),
					new SqlParameter("@Title", SqlDbType.NVarChar,200),
					new SqlParameter("@Types", SqlDbType.NVarChar,200),
					new SqlParameter("@Jianyao", SqlDbType.NVarChar,200),
					new SqlParameter("@Tupian", SqlDbType.NVarChar,200),
					new SqlParameter("@Shipin", SqlDbType.NVarChar,500),
					new SqlParameter("@Url", SqlDbType.NVarChar,200),
					new SqlParameter("@Content", SqlDbType.NText),
					new SqlParameter("@Click", SqlDbType.Int,4),
					new SqlParameter("@AddUser", SqlDbType.Int,4),
					new SqlParameter("@Addtime", SqlDbType.DateTime),
					new SqlParameter("@Color", SqlDbType.NVarChar,20),
					new SqlParameter("@IsTuijian", SqlDbType.Int,4),
					new SqlParameter("@IsTop", SqlDbType.Int,4),
					new SqlParameter("@SeoTitle", SqlDbType.NVarChar,300),
					new SqlParameter("@SeoKeyword", SqlDbType.NVarChar,300),
					new SqlParameter("@SeoDescription", SqlDbType.NVarChar,300),
					new SqlParameter("@ID", SqlDbType.Int,4)};
            parameters[0].Value = model.Fenleiid;
            parameters[1].Value = model.Title;
            parameters[2].Value = model.Types;
            parameters[3].Value = model.Jianyao;
            parameters[4].Value = model.Tupian;
            parameters[5].Value = model.Shipin;
            parameters[6].Value = model.Url;
            parameters[7].Value = model.Content;
            parameters[8].Value = model.Click;
            parameters[9].Value = model.AddUser;
            parameters[10].Value = model.Addtime;
            parameters[11].Value = model.Color;
            parameters[12].Value = model.IsTuijian;
            parameters[13].Value = model.IsTop;
            parameters[14].Value = model.SeoTitle;
            parameters[15].Value = model.SeoKeyword;
            parameters[16].Value = model.SeoDescription;
            parameters[17].Value = model.ID;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from TcArticle ");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)
			};
            parameters[0].Value = ID;

            int rows = DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 批量删除数据
        /// </summary>
        public bool DeleteList(string IDlist)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("delete from TcArticle ");
            strSql.Append(" where ID in (" + IDlist + ")  ");
            int rows = DbHelperSQL.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public Tc.Model.TcArticle GetModel(int ID)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select  top 1 ID,Fenleiid,Title,Types,Jianyao,Tupian,Shipin,Url,Content,Click,AddUser,Addtime,Color,IsTuijian,IsTop,SeoTitle,SeoKeyword,SeoDescription from TcArticle ");
            strSql.Append(" where ID=@ID");
            SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)
			};
            parameters[0].Value = ID;

            Tc.Model.TcArticle model = new Tc.Model.TcArticle();
            DataSet ds = DbHelperSQL.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return DataRowToModel(ds.Tables[0].Rows[0]);
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public Tc.Model.TcArticle DataRowToModel(DataRow row)
        {
            Tc.Model.TcArticle model = new Tc.Model.TcArticle();
            if (row != null)
            {
                if (row["ID"] != null && row["ID"].ToString() != "")
                {
                    model.ID = int.Parse(row["ID"].ToString());
                }
                if (row["Fenleiid"] != null && row["Fenleiid"].ToString() != "")
                {
                    model.Fenleiid = int.Parse(row["Fenleiid"].ToString());
                }
                if (row["Title"] != null)
                {
                    model.Title = row["Title"].ToString();
                }
                if (row["Types"] != null)
                {
                    model.Types = row["Types"].ToString();
                }
                if (row["Jianyao"] != null)
                {
                    model.Jianyao = row["Jianyao"].ToString();
                }
                if (row["Tupian"] != null)
                {
                    model.Tupian = row["Tupian"].ToString();
                }
                if (row["Shipin"] != null)
                {
                    model.Shipin = row["Shipin"].ToString();
                }
                if (row["Url"] != null)
                {
                    model.Url = row["Url"].ToString();
                }
                if (row["Content"] != null)
                {
                    model.Content = row["Content"].ToString();
                }
                if (row["Click"] != null && row["Click"].ToString() != "")
                {
                    model.Click = int.Parse(row["Click"].ToString());
                }
                if (row["AddUser"] != null && row["AddUser"].ToString() != "")
                {
                    model.AddUser = int.Parse(row["AddUser"].ToString());
                }
                if (row["Addtime"] != null && row["Addtime"].ToString() != "")
                {
                    model.Addtime = DateTime.Parse(row["Addtime"].ToString());
                }
                if (row["Color"] != null)
                {
                    model.Color = row["Color"].ToString();
                }
                if (row["IsTuijian"] != null && row["IsTuijian"].ToString() != "")
                {
                    model.IsTuijian = int.Parse(row["IsTuijian"].ToString());
                }
                if (row["IsTop"] != null && row["IsTop"].ToString() != "")
                {
                    model.IsTop = int.Parse(row["IsTop"].ToString());
                }
                if (row["SeoTitle"] != null)
                {
                    model.SeoTitle = row["SeoTitle"].ToString();
                }
                if (row["SeoKeyword"] != null)
                {
                    model.SeoKeyword = row["SeoKeyword"].ToString();
                }
                if (row["SeoDescription"] != null)
                {
                    model.SeoDescription = row["SeoDescription"].ToString();
                }
            }
            return model;
        }

        /// <summary>
        /// 获得数据列表
        /// </summary>
        public DataSet GetList(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ID,Fenleiid,Title,Types,Jianyao,Tupian,Shipin,Url,Content,Click,AddUser,Addtime,Color,IsTuijian,IsTop,SeoTitle,SeoKeyword,SeoDescription ");
            strSql.Append(" FROM TcArticle ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获得前几行数据
        /// </summary>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select ");
            if (Top > 0)
            {
                strSql.Append(" top " + Top.ToString());
            }
            strSql.Append(" ID,Fenleiid,Title,Types,Jianyao,Tupian,Shipin,Url,Content,Click,AddUser,Addtime,Color,IsTuijian,IsTop,SeoTitle,SeoKeyword,SeoDescription ");
            strSql.Append(" FROM TcArticle ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            strSql.Append(" order by " + filedOrder);
            return DbHelperSQL.Query(strSql.ToString());
        }

        /// <summary>
        /// 获取记录总数
        /// </summary>
        public int GetRecordCount(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) FROM TcArticle ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            object obj = DbHelperSQL.GetSingle(strSql.ToString());
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(obj);
            }
        }

        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * FROM ( ");
            strSql.Append(" SELECT ROW_NUMBER() OVER (");
            if (!string.IsNullOrEmpty(orderby.Trim()))
            {
                strSql.Append("order by T." + orderby);
            }
            else
            {
                strSql.Append("order by T.ID desc");
            }
            strSql.Append(")AS Row, T.*  from TcArticle T ");
            if (!string.IsNullOrEmpty(strWhere.Trim()))
            {
                strSql.Append(" WHERE " + strWhere);
            }
            strSql.Append(" ) TT");
            strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
            return DbHelperSQL.Query(strSql.ToString());
        }

        /*

        /// <summary>
        /// 分页获取数据列表
        /// </summary>
        public DataSet GetList(int PageSize,int PageIndex,string strWhere)
        {
            SqlParameter[] parameters = {
                    new SqlParameter("@tblName", SqlDbType.VarChar, 255),
                    new SqlParameter("@fldName", SqlDbType.VarChar, 255),
                    new SqlParameter("@PageSize", SqlDbType.Int),
                    new SqlParameter("@PageIndex", SqlDbType.Int),
                    new SqlParameter("@IsReCount", SqlDbType.Bit),
                    new SqlParameter("@OrderType", SqlDbType.Bit),
                    new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
                    };
            parameters[0].Value = "TcArticle";
            parameters[1].Value = "ID";
            parameters[2].Value = PageSize;
            parameters[3].Value = PageIndex;
            parameters[4].Value = 0;
            parameters[5].Value = 0;
            parameters[6].Value = strWhere;
            return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
        }*/

        #endregion BasicMethod

        #region ExtensionMethod

        #endregion ExtensionMethod
    }
}