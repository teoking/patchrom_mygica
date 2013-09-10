.class Lcom/android/server/EthernetService$2;
.super Landroid/content/BroadcastReceiver;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EthernetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EthernetService;


# direct methods
.method constructor <init>(Lcom/android/server/EthernetService;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    .local p0, this:Lcom/android/server/EthernetService$2;,"Lcom/android/server/EthernetService.2;"
    iput-object p1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 189
    .local p0, this:Lcom/android/server/EthernetService$2;,"Lcom/android/server/EthernetService.2;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "EthernetService"

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    #calls: Lcom/android/server/EthernetService;->getPersistedState()I
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$100(Lcom/android/server/EthernetService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    #getter for: Lcom/android/server/EthernetService;->mDelayedHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$300(Lcom/android/server/EthernetService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    #getter for: Lcom/android/server/EthernetService;->mResetInterface:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/EthernetService;->access$200(Lcom/android/server/EthernetService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "EthernetService"

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    #getter for: Lcom/android/server/EthernetService;->mDelayedHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$300(Lcom/android/server/EthernetService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    #getter for: Lcom/android/server/EthernetService;->mResetInterface:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/EthernetService;->access$200(Lcom/android/server/EthernetService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-object v1, p0, Lcom/android/server/EthernetService$2;->this$0:Lcom/android/server/EthernetService;

    #getter for: Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    goto :goto_0
.end method
