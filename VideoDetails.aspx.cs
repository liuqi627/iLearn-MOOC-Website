using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using DBlayer;



namespace ilearn
{
    public partial class VideoDetails : System.Web.UI.Page
    {
        public int videoid;
        public int classid;
        protected void Page_Load(object sender, EventArgs e)
        {

            //绑定该课程（对应的classid）的listview
            string id_string = Request.QueryString["classid"];
            string videoid_string = Request.QueryString["videoid"];//播放该class的第几个

            if (id_string != "" && id_string != null && videoid_string != null && videoid_string != "")
            {
                classid = int.Parse(id_string);
                videoid = int.Parse(videoid_string);
                VideoService vsc = new VideoService();
                List<video> videolist_temp = new List<video>();
                videolist_temp = vsc.GetVideoByCid(classid, 1, 1000);
              //  Response.Write("此class里的video数目为" + videolist_temp.Count);
                if (videolist_temp.Count != 0)//当这个class里没有video的时候什么也别干了就
                {
                    //下面处理从首页推荐来的class，应显示class的第一个video
                    if (videoid == 0)
                    {
                        video video_temp = videolist_temp.First<video>();
                        videoid = video_temp.id;
                    }
                   // Response.Write("videoid=" + videoid.ToString());
                  //  Response.Write("classid=" + classid.ToString());
                    //把这个class的所有video列表绑定在videos_in_class这个Listview上，用于让用户选择这个课程的其他视频
                    VideoService vs = new VideoService();
                    int pagesize = vs.GetVideoCountByCid(classid);
                    List<video> lv = vs.GetVideoByCid(classid, 1, pagesize + 1);
                    videos_in_class.DataSource = lv;
                    videos_in_class.DataBind();
                    //绑定该视频的评论列表Listview
                    DisscussionService ds = new DisscussionService();
                    int discussionNum = ds.GetCommentCountByVideoId(videoid);
                  //  Response.Write("该视频有" + discussionNum.ToString() + "条评论");
                    if (discussionNum != 0)
                    {
                        List<discussion> ld = ds.GetCommentById(videoid, 1, 100);//这里显示100条评论，以后做分页
                        discussion_listview.DataSource = ld;
                        discussion_listview.DataBind();
                    }
                }
            }




        }

        protected void discussion_input_button_Click(object sender, EventArgs e)
        {
            DisscussionService ds = new DisscussionService();
            discussion dis = new discussion();
            //string videoid_string = Request.QueryString["videoid"];
            if (videoid != 0)
            {
                dis.contents = discussion_input_textbox.Text;
                dis.userid = 1;//这个瞎写的以后再弄
                int videoid_dis = videoid;
                dis.videoid = videoid_dis;
                dis.publishtime = DateTime.Now;
                ds.AddComment(dis);
                int discussionNum = ds.GetCommentCountByVideoId(videoid);
                List<discussion> ld = ds.GetCommentById(videoid, 1, 100);//这里显示100条评论，以后做分页
                discussion_listview.DataSource = ld;
                discussion_listview.DataBind();
                discussion_input_textbox.Text = "";
            }
            else
            {
                discussion_input_textbox.Text = "";
            }

        }

    }
}