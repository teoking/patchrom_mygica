.class Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;
.super Ljava/lang/Object;
.source "WifiP2pNotifier.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;->this$1:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 8
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    .line 162
    const-string v4, "WifiP2pNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received group info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #calls: Landroid/net/wifi/p2p/WifiP2pNotifier;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$700(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v4

    if-ne v4, v7, :cond_2

    .line 166
    const-string v4, "WifiP2pNotifier"

    const-string v5, "WFD : I am GO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 170
    .local v1, c:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object v2, v1

    .line 173
    .end local v1           #c:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v4, :cond_1

    .line 174
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;->this$1:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    iget-object v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v5

    #setter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mWfdPort:I
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$802(Landroid/net/wifi/p2p/WifiP2pNotifier;I)I

    .line 175
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;->this$1:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #setter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mAutoStartWfd:Z
    invoke-static {v4, v7}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$102(Landroid/net/wifi/p2p/WifiP2pNotifier;Z)Z

    .line 190
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-void

    .line 180
    .end local v2           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    const-string v4, "WifiP2pNotifier"

    const-string v5, "WFD : I am GC"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, addr:Ljava/net/InetAddress;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 184
    .restart local v2       #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;->this$1:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$500(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 185
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;->this$1:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    iget-object v5, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v5

    #setter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mWfdPort:I
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$802(Landroid/net/wifi/p2p/WifiP2pNotifier;I)I

    .line 186
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;->this$1:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$500(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 187
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;->this$1:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;->this$1:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mWfdPort:I
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$800(Landroid/net/wifi/p2p/WifiP2pNotifier;)I

    move-result v6

    #calls: Landroid/net/wifi/p2p/WifiP2pNotifier;->connectToRtspServer(Ljava/lang/String;I)V
    invoke-static {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$900(Landroid/net/wifi/p2p/WifiP2pNotifier;Ljava/lang/String;I)V

    goto :goto_0
.end method
