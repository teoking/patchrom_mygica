.class Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiP2pReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;


# direct methods
.method private constructor <init>(Landroid/net/wifi/p2p/WifiP2pNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pNotifier;Landroid/net/wifi/p2p/WifiP2pNotifier$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pNotifier;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1, v0}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$402(Landroid/net/wifi/p2p/WifiP2pNotifier;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 152
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    const-string/jumbo v0, "wifiP2pInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    #setter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v1, v0}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$502(Landroid/net/wifi/p2p/WifiP2pNotifier;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 154
    const-string v0, "WifiP2pNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$400(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " p2pInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$500(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$400(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$1000(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$600(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver$1;-><init>(Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    const/4 v1, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mAutoStartWfd:Z
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$102(Landroid/net/wifi/p2p/WifiP2pNotifier;Z)Z

    goto :goto_0
.end method
