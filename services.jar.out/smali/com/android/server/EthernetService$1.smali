.class Lcom/android/server/EthernetService$1;
.super Ljava/lang/Object;
.source "EthernetService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 175
    .local p0, this:Lcom/android/server/EthernetService$1;,"Lcom/android/server/EthernetService.1;"
    iput-object p1, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    .local p0, this:Lcom/android/server/EthernetService$1;,"Lcom/android/server/EthernetService.1;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EthernetService$1;->this$0:Lcom/android/server/EthernetService;

    #getter for: Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;
    invoke-static {v1}, Lcom/android/server/EthernetService;->access$000(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z

    .line 179
    const-string v1, "EthernetService"

    const-string v2, "$$ mResetInterface call resetInterface()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v1, "EthernetService"

    const-string v2, "Wrong ethernet configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
