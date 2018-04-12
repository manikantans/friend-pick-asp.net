using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Facebook;

public partial class notif : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
     //private void CheckAuthorization()
     //   {
        //    string app_id = "901430759906998";
        //    string app_secret = "a5258fd42f3d832461450eb0709c8993";
        //    string scope = "publish_stream,manage_pages";
 
        //    if (Request["code"] == null)
        //    {
        //        Response.Redirect(string.Format(
        //            "https://graph.facebook.com/oauth/authorize?client_id={0}&redirect_uri={1}&scope={2}",
        //            app_id, Request.Url.AbsoluteUri, scope));
        //    }
        //    else
        //    {
        //        Dictionary<string, string> tokens = new Dictionary<string, string>();
 
        //        string url = string.Format("https://graph.facebook.com/oauth/access_token?client_id={0}&redirect_uri={1}&scope={2}&code={3}&client_secret={4}",
        //            app_id, Request.Url.AbsoluteUri, scope, Request["code"].ToString(), app_secret);

        //        HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
 
        //        using (HttpWebResponse response = request.GetResponse() as HttpWebResponse)
        //        {
        //            StreamReader reader = new StreamReader(response.GetResponseStream());
 
        //            string vals = reader.ReadToEnd();
 
        //            foreach (string token in vals.Split('&'))
        //            {
        //                //meh.aspx?token1=steve&token2=jake&...
        //                tokens.Add(token.Substring(0, token.IndexOf("=")),
        //                    token.Substring(token.IndexOf("=") + 1, token.Length - token.IndexOf("=") - 1));
        //            }
        //        }
 
        //        string access_token = tokens["access_token"];
 
        //        var client = new FacebookClient(access_token);
 
               
        //    }
        //}
    }


   
