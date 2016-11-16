using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tc.UI
{
    public class Image:UIBase
    {
        protected Model.TcImage img = new Model.TcImage();
        protected Model.TcFenlei cate = new Model.TcFenlei();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryInt("id");
                if (id > 0)
                {
                    img = BLL.TcImage.Instance.GetModel(id);
                    if (img != null)
                    {
                        img.Click = img.Click.GetInt() + 1;
                        BLL.TcImage.Instance.Update(img);
                        cate = BLL.TcFenlei.Instance.GetModel(img.Fenleiid.GetInt());
                        if (cate == null)
                            cate = new Model.TcFenlei();
                    }
                    else
                    {
                        img = new Model.TcImage();
                    }
                }
            }
        }
    }
}