.class Landroid/net/wifi/p2p/WifiP2pNotifier$1;
.super Landroid/os/FileObserver;
.source "WifiP2pNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/p2p/WifiP2pNotifier;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pNotifier;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$1;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .parameter "event"
    .parameter "path"

    .prologue
    .line 81
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$1;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mFolder:Ljava/io/File;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$000(Landroid/net/wifi/p2p/WifiP2pNotifier;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v1, ipFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, fullName:Ljava/lang/String;
    const-string v2, "WifiP2pNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFD : File changed : path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$1;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #getter for: Landroid/net/wifi/p2p/WifiP2pNotifier;->mAutoStartWfd:Z
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$100(Landroid/net/wifi/p2p/WifiP2pNotifier;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/String;

    const-string v3, "dnsmasq.txt"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pNotifier$1;->this$0:Landroid/net/wifi/p2p/WifiP2pNotifier;

    #calls: Landroid/net/wifi/p2p/WifiP2pNotifier;->parseDnsmasqAddr(Ljava/lang/String;)V
    invoke-static {v2, v0}, Landroid/net/wifi/p2p/WifiP2pNotifier;->access$200(Landroid/net/wifi/p2p/WifiP2pNotifier;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
