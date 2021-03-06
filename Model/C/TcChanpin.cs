﻿/**
* Copyright (c) 2016-2020 All rights reserved.
*┌──────────────────────────────────┐
*│  作者QQ:632029078  email: 632029078@qq.com
*│　版权所有：GC网版权所有
*└──────────────────────────────────┘
*/

using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace Tc.Model
{
    //TcChanpin
    public partial class TcChanpin
    {
        public TcChanpin()
        {
            _id = 0;
            _articleid = 0;
            _shuxing = "";
            _addtime = new DateTime(1900, 1, 1);
        }

        /// <summary>
        /// ID
        /// </summary>
        private int _id;

        public int ID
        {
            get { return _id; }
            set { _id = value; }
        }

        /// <summary>
        /// Articleid
        /// </summary>
        private int? _articleid;

        public int? Articleid
        {
            get { return _articleid; }
            set { _articleid = value; }
        }

        /// <summary>
        /// Shuxing
        /// </summary>
        private string _shuxing;

        public string Shuxing
        {
            get { return _shuxing; }
            set { _shuxing = value; }
        }

        /// <summary>
        /// Addtime
        /// </summary>
        private DateTime? _addtime;

        public DateTime? Addtime
        {
            get { return _addtime; }
            set { _addtime = value; }
        }
    }
}