using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class ClassView2 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClassNameLabel.Text = _className;
            ClassPictureImage.ImageUrl = _classPicture;
            ClassDesriptionLabel.Text = "  现代社会离不开人际交往，人际交往离不开现代礼仪。《现代礼仪》是高等院校开设的一门重要的公共课程。了解和掌握现代礼仪，既是衡量大学生综合素质的重要标准，也是对每一位社会公民的基本要求。您想成为有修养有品位有风度有 .";
            ClassUrl.NavigateUrl = _classUri;
        }

        #region "属性字段"

        /// <summary>
        /// 课程的图片信息
        /// </summary>
        private string _classPicture = "";
        /// <summary>
        /// 课程的名称
        /// </summary>
        private string _className = "暂无名称";
        /// <summary>
        /// 课程的描述信息
        /// </summary>
        private string _classDescription = "暂无描述";
        /// <summary>
        /// 课程的进度
        /// </summary>
        private int _progress = 0;
        /// <summary>
        /// 加入课程的时间
        /// </summary>
        private DateTime _joinTime = DateTime.Now;
        /// <summary>
        /// 进入课程的链接
        /// </summary>
        private string _classUri;

        public string ClassPicture{
            set
            {
                _classPicture = value;
            }
        }

        public string ClassName
        {
            get
            {
                return _className;
            }
            set
            {
                _className = value;
            }
        }

        public string ClassDescription
        {
            set
            {
                _classDescription = value;
            }
        }

        public int Progress
        {
            set
            {
                _progress = value;
            }
            get
            {
                return _progress;
            }
        }

        public DateTime JoinTime
        {
            set
            {
                _joinTime = value;
            }
        }

        public string ClassUri
        {
            set
            {
                _classUri = value;
            }
        }

        #endregion

    }
}