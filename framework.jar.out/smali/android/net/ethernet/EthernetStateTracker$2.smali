.class Landroid/net/ethernet/EthernetStateTracker$2;
.super Ljava/lang/Object;
.source "EthernetStateTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ethernet/EthernetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method constructor <init>(Landroid/net/ethernet/EthernetStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    .line 495
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 523
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 497
    :pswitch_0
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateTracker;->access$700(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v3

    monitor-enter v3

    .line 498
    :try_start_0
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateTracker;->access$800(Landroid/net/ethernet/EthernetStateTracker;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 499
    const-string v2, "EthernetStateTracker"

    const-string v4, "DhcpHandler: DHCP request started"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V
    invoke-static {v2, v4, v5}, Landroid/net/ethernet/EthernetStateTracker;->access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V

    .line 501
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateTracker;->access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    const/4 v1, 0x1

    .line 503
    .local v1, event:I
    const-string v2, "EthernetStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DhcpHandler: DHCP request succeeded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v5}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v4}, Landroid/net/ethernet/EthernetStateTracker;->access$1102(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 505
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateTracker;->access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/ethernet/EthernetStateTracker;->access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 515
    :goto_1
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    #getter for: Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/ethernet/EthernetStateTracker;->access$1200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 519
    .end local v1           #event:I
    :goto_2
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z
    invoke-static {v2, v4}, Landroid/net/ethernet/EthernetStateTracker;->access$502(Landroid/net/ethernet/EthernetStateTracker;Z)Z

    .line 520
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 507
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, DhcpError:Ljava/lang/String;
    const-string v2, "EthernetStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DhcpHandler: DHCP request failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v2, "dhcpcd to start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    const/4 v1, 0x6

    .restart local v1       #event:I
    goto :goto_1

    .line 513
    .end local v1           #event:I
    :cond_1
    const/4 v1, 0x2

    .restart local v1       #event:I
    goto :goto_1

    .line 517
    .end local v0           #DhcpError:Ljava/lang/String;
    .end local v1           #event:I
    :cond_2
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker$2;->this$0:Landroid/net/ethernet/EthernetStateTracker;

    const/4 v4, 0x0

    #setter for: Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z
    invoke-static {v2, v4}, Landroid/net/ethernet/EthernetStateTracker;->access$802(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
