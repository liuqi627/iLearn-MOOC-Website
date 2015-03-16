using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DBlayer;

namespace ilearn
{
    /// <summary>
    /// ContentHandle 的摘要说明
    /// </summary>
    public class ContentHandle : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            context.Response.ContentType = "text/plain";


            DisscussionService ds = new DisscussionService();
            discussion dis = new discussion();

            string text = context.Request.Params["text"];

            int videoid =int.Parse( context.Request.Params["videoid"]);

            if (videoid != 0)
            {
                dis.contents = text;
                dis.userid = 1;//这个瞎写的以后再弄
                int videoid_dis = videoid;
                dis.videoid = videoid_dis;
                dis.publishtime = DateTime.Now;
                ds.AddComment(dis);
              
            
            }
            else
            {
                context.Response.Write("there is no video here,please check out yourself");
            }
           
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}