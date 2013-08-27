.class Lcom/android/server/RemoteControlService$2;
.super Landroid/os/Handler;
.source "RemoteControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RemoteControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RemoteControlService;


# direct methods
.method constructor <init>(Lcom/android/server/RemoteControlService;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/RemoteControlService$2;->this$0:Lcom/android/server/RemoteControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/high16 v9, 0x4000

    const/16 v8, 0x80

    const/4 v7, 0x5

    .line 186
    const/4 v5, 0x6

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.intent.action.RC_PLAY_FAST"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "android.intent.action.RC_PLAY_SLOW"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string v6, "android.intent.action.RC_PLAY_NEXT"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "android.intent.action.RC_PLAY_PREVIOUS"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string v6, "android.intent.action.RC_PLAY_URL"

    aput-object v6, v0, v5

    const-string v5, "android.intent.action.RC_DATA"

    aput-object v5, v0, v7

    .line 195
    .local v0, action:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/RemoteControlService$2;->this$0:Lcom/android/server/RemoteControlService;

    invoke-static {v5}, Lcom/android/server/RemoteControlService;->access$100(Lcom/android/server/RemoteControlService;)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_34

    .line 196
    const-string v5, "RemoteControlService"

    const-string v6, "can not found the context for send broadcast!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_34
    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v8, v5, :cond_3e

    const/16 v5, 0x81

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_74

    .line 201
    :cond_3e
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v8, v5, :cond_71

    const-string v2, "com.bestv.msg.phone.connect"

    .line 202
    .local v2, connectAction:Ljava/lang/String;
    :goto_44
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v4, it:Landroid/content/Intent;
    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    iget-object v5, p0, Lcom/android/server/RemoteControlService$2;->this$0:Lcom/android/server/RemoteControlService;

    invoke-static {v5}, Lcom/android/server/RemoteControlService;->access$100(Lcom/android/server/RemoteControlService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    const-string v5, "RemoteControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendBroadcast:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v2           #connectAction:Ljava/lang/String;
    .end local v4           #it:Landroid/content/Intent;
    :goto_6d
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 223
    return-void

    .line 201
    :cond_71
    const-string v2, "com.bestv.msg.phone.disconnect"

    goto :goto_44

    .line 208
    :cond_74
    iget v5, p1, Landroid/os/Message;->what:I

    if-le v5, v7, :cond_80

    .line 209
    const-string v5, "RemoteControlService"

    const-string v6, "service data type error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 212
    :cond_80
    new-instance v3, Landroid/content/Intent;

    iget v5, p1, Landroid/os/Message;->what:I

    aget-object v5, v0, v5

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "data"

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 217
    iget-object v5, p0, Lcom/android/server/RemoteControlService$2;->this$0:Lcom/android/server/RemoteControlService;

    invoke-static {v5}, Lcom/android/server/RemoteControlService;->access$100(Lcom/android/server/RemoteControlService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    const-string v5, "RemoteControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendBroadcast:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method
