.class Lcom/android/server/EthernetService$4;
.super Ljava/lang/Thread;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EthernetService;->setEthState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EthernetService;


# direct methods
.method constructor <init>(Lcom/android/server/EthernetService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 232
    .local p0, this:Lcom/android/server/EthernetService$4;,"Lcom/android/server/EthernetService.4;"
    iput-object p1, p0, Lcom/android/server/EthernetService$4;->this$0:Lcom/android/server/EthernetService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 236
    .local p0, this:Lcom/android/server/EthernetService$4;,"Lcom/android/server/EthernetService.4;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EthernetService$4;->this$0:Lcom/android/server/EthernetService;

    invoke-static {v1}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_9} :catch_a

    .line 240
    :goto_9
    return-void

    .line 237
    :catch_a
    move-exception v0

    .line 238
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v1, "EthernetService"

    const-string v2, "Wrong ethernet configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
