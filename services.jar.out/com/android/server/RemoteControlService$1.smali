.class Lcom/android/server/RemoteControlService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 168
    iput-object p1, p0, Lcom/android/server/RemoteControlService$1;->this$0:Lcom/android/server/RemoteControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, action:Ljava/lang/String;
    const-string v1, "RemoteControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v1, "android.intent.action.RC_DAEMON_ENABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 176
    iget-object v1, p0, Lcom/android/server/RemoteControlService$1;->this$0:Lcom/android/server/RemoteControlService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/RemoteControlService;->access$000(Lcom/android/server/RemoteControlService;Z)Z

    .line 181
    :cond_2a
    :goto_2a
    return-void

    .line 178
    :cond_2b
    const-string v1, "android.intent.action.RC_DAEMON_DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 179
    iget-object v1, p0, Lcom/android/server/RemoteControlService$1;->this$0:Lcom/android/server/RemoteControlService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/RemoteControlService;->access$000(Lcom/android/server/RemoteControlService;Z)Z

    goto :goto_2a
.end method
