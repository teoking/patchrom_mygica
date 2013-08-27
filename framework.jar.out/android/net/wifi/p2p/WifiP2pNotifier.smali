.class public Landroid/net/wifi/p2p/WifiP2pNotifier;
.super Ljava/lang/Object;
.source "WifiP2pNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final DNSMASQ_IP_ADDR_ACTION:Ljava/lang/String; = "android.net.dnsmasq.IP_ADDR"

.field public static final DNSMASQ_IP_EXTRA:Ljava/lang/String; = "IP_EXTRA"

.field public static final DNSMASQ_MAC_EXTRA:Ljava/lang/String; = "MAC_EXTRA"

.field public static final DNSMASQ_PORT_EXTRA:Ljava/lang/String; = "PORT_EXTRA"

.field private static final TAG:Ljava/lang/String; = "WifiP2pNotifier"


# instance fields
.field private mAddrObserver:Landroid/os/FileObserver;

.field private mAutoStartWfd:Z

.field private mContext:Landroid/content/Context;

.field private mFolder:Ljava/io/File;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mWfdPort:I

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pReceiver:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mAddrObserver:Landroid/os/FileObserver;

    .line 70
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/adb"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mFolder:Ljava/io/File;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mAutoStartWfd:Z

    .line 75
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mContext:Landroid/content/Context;

    .line 76
    const-string/jumbo v1, "wifip2p"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 77
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 79
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pNotifier$1;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pNotifier$1;-><init>(Landroid/net/wifi/p2p/WifiP2pNotifier;Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mAddrObserver:Landroid/os/FileObserver;

    .line 89
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mAddrObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    invoke-direct {v1, p0, v4}, Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pNotifier;Landroid/net/wifi/p2p/WifiP2pNotifier$1;)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWifiP2pReceiver:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    .line 94
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWifiP2pReceiver:Landroid/net/wifi/p2p/WifiP2pNotifier$WifiP2pReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/p2p/WifiP2pNotifier;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mFolder:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/p2p/WifiP2pNotifier;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mAutoStartWfd:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/p2p/WifiP2pNotifier;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mAutoStartWfd:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/wifi/p2p/WifiP2pNotifier;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pNotifier;->parseDnsmasqAddr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/wifi/p2p/WifiP2pNotifier;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/wifi/p2p/WifiP2pNotifier;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/wifi/p2p/WifiP2pNotifier;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Landroid/net/wifi/p2p/WifiP2pNotifier;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/p2p/WifiP2pNotifier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWfdPort:I

    return v0
.end method

.method static synthetic access$802(Landroid/net/wifi/p2p/WifiP2pNotifier;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWfdPort:I

    return p1
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pNotifier;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pNotifier;->connectToRtspServer(Ljava/lang/String;I)V

    return-void
.end method

.method private connectToRtspServer(Ljava/lang/String;I)V
    .registers 6
    .parameter "ip"
    .parameter "wfdPort"

    .prologue
    .line 115
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, port:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "xx.xx.xx.xx.xx.xx"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, v0}, Landroid/net/wifi/p2p/WifiP2pNotifier;->sendDnsmasqBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 4
    .parameter "group"

    .prologue
    .line 98
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string/jumbo v0, "null"

    goto :goto_e
.end method

.method private parseDnsmasqAddr(Ljava/lang/String;)V
    .registers 9
    .parameter "fileName"

    .prologue
    .line 120
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 122
    .local v4, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 123
    .local v3, mac:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 125
    .local v2, ip:Ljava/lang/String;
    :try_start_10
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_3d

    .line 126
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_60

    .line 132
    if-eqz v5, :cond_2a

    .line 134
    :try_start_27
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_58

    :cond_2a
    :goto_2a
    move-object v4, v5

    .line 140
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_2b
    :goto_2b
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 141
    iget v6, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mWfdPort:I

    invoke-direct {p0, v2, v6}, Landroid/net/wifi/p2p/WifiP2pNotifier;->connectToRtspServer(Ljava/lang/String;I)V

    .line 143
    :cond_3c
    return-void

    .line 129
    :catch_3d
    move-exception v0

    .line 130
    .local v0, e:Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    .line 132
    if-eqz v4, :cond_2b

    .line 134
    :try_start_43
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_2b

    .line 135
    :catch_47
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .line 132
    .end local v0           #e:Ljava/io/IOException;
    :catchall_4c
    move-exception v6

    :goto_4d
    if-eqz v4, :cond_52

    .line 134
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 132
    :cond_52
    :goto_52
    throw v6

    .line 135
    :catch_53
    move-exception v0

    .line 136
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_58
    move-exception v0

    .line 136
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 132
    .end local v0           #e:Ljava/io/IOException;
    :catchall_5d
    move-exception v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_4d

    .line 129
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_60
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3e
.end method

.method private sendDnsmasqBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "mac"
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 103
    const-string v1, "WifiP2pNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending DNSMASQ_IP_ADDR_ACTION broadcast : mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.dnsmasq.IP_ADDR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    const-string v1, "MAC_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "IP_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "PORT_EXTRA"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
