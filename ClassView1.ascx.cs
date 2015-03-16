using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class ClassView1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClassNameLink.Text = _className;
            ClassNameLink.NavigateUrl = _classUrl;
          
            ClassLink.NavigateUrl = _classUrl;
            ClassPictureImage.ImageUrl = _classPicture;
            ClassDesriptionLabel.Text = _classDescription;
            ClassGoLink.NavigateUrl = _classUrl;
        }


        #region "属性字段"

        /// <summary>
        /// 课程名
        /// </summary>
        private string _className = "暂无名称";
        /// <summary>
        /// 课程URL
        /// </summary>
        private string _classUrl = "";
        /// <summary>
        /// 进入课程的图标
        /// </summary>
        private string _goIcon = "icon.jpg";
        /// <summary>
        /// 课程展示的图片
        /// </summary>
        private string _classPicture = "";
        /// <summary>
        /// 课程说明
        /// </summary>
        private string _classDescription = "暂无描述信息";

        public string ClassName
        {
            set
            {
                _className = value;
            }
            get
            {
                return _className;
            }
        }

        public string ClassUrl
        {
            set
            {
                _classUrl = value;
            }
        }

        public string GoIcon
        {
            set
            {
                _goIcon = value;
            }
        }

        public string ClassPicture
        {
            set
            {
                _classPicture = value;
            }
        }

        public string ClassDescription
        {
            set
            {
                _classDescription = value;
            }
        }

        #endregion
    }
}