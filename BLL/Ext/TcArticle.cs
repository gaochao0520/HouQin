using System;
using System.Collections.Generic;
using System.Data;
using Tc.Model;

/**
* Copyright (c) 2016-2020 All rights reserved.
*┌──────────────────────────────────┐
*│  作者QQ:632029078  email: 632029078@qq.com
*│  QQ群： 467635695
*│　版权所有：GC网版权所有　
*└──────────────────────────────────┘
*/

namespace Tc.BLL
{
    /// <summary>
    /// TcArticle
    /// </summary>
    public partial class TcArticle : BLLBase<TcArticle>
    {
        /// <summary>
        /// 获取前多少条数据
        /// </summary>
        /// <param name="Top"></param>
        /// <param name="strWhere"></param>
        /// <param name="filedOrder"></param>
        /// <returns></returns>
        public DataSet GetList(int Top, string strWhere, string filedOrder)
        {
            return dal.GetList(Top, strWhere, filedOrder);
        }
    }
}