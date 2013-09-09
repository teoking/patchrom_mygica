.class Lcom/android/server/PppoeService$1;
.super Landroid/content/BroadcastReceiver;
.source "PppoeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PppoeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PppoeService;


# direct methods
.method constructor <init>(Lcom/android/server/PppoeService;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    .local p0, this:Lcom/android/server/PppoeService$1;,"Lcom/android/server/PppoeService.1;"
    iput-object p1, p0, Lcom/android/server/PppoeService$1;->this$0:Lcom/android/server/PppoeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    .local p0, this:Lcom/android/server/PppoeService$1;,"Lcom/android/server/PppoeService.1;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 176
    const-string v2, "PppoeService"

    const-string v3, "ACTION_SCREEN_ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_13
    iget-object v2, p0, Lcom/android/server/PppoeService$1;->this$0:Lcom/android/server/PppoeService;

    invoke-static {v2}, Lcom/android/server/PppoeService;->access$000(Lcom/android/server/PppoeService;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/pppoe/PppoeStateTracker;->resetInterface()Z
    :try_end_1c
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_1c} :catch_1d

    .line 186
    :cond_1c
    :goto_1c
    return-void

    .line 179
    :catch_1d
    move-exception v1

    .line 180
    .local v1, e:Ljava/net/UnknownHostException;
    const-string v2, "PppoeService"

    const-string v3, "Wrong pppoe configuration"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 182
    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_26
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 183
    const-string v2, "PppoeService"

    const-string v3, "ACTION_SCREEN_OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/android/server/PppoeService$1;->this$0:Lcom/android/server/PppoeService;

    invoke-static {v2}, Lcom/android/server/PppoeService;->access$000(Lcom/android/server/PppoeService;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/pppoe/PppoeStateTracker;->stopInterface(Z)Z

    goto :goto_1c
.end method
