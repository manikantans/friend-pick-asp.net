using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

public class Chat : Hub
{
    String uid, msg;
  
    public void sendmessage()
    {
        uid = "";
        msg = "";
        this.Clients.All.sendmsg(uid,msg);
    }
}
