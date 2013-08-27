.class Lcom/android/server/PppoeService$3;
.super Ljava/lang/Thread;
.source "PppoeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PppoeService;->setPppoeState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PppoeService;


# direct methods
.method constructor <init>(Lcom/android/server/PppoeService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 216
    .local p0, this:Lcom/android/server/PppoeService$3;,"Lcom/android/server/PppoeService.3;"
    iput-object p1, p0, Lcom/android/server/PppoeService$3;->this$0:Lcom/android/server/PppoeService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 220
    .local p0, this:Lcom/android/server/PppoeService$3;,"Lcom/android/server/PppoeService.3;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PppoeService$3;->this$0:Lcom/android/server/PppoeService;

    invoke-static {v1}, Lcom/android/server/PppoeService;->access$000(Lcom/android/server/PppoeService;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/pppoe/PppoeStateTracker;->resetInterface()Z
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_9} :catch_a

    .line 224
    :goto_9
    return-void

    .line 221
    :catch_a
    move-exception v0

    .line 222
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v1, "PppoeService"

    const-string v2, "Wrong pppoe configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
