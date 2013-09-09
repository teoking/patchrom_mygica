.class public Landroid/net/ethernet/EthernetStateTracker;
.super Ljava/lang/Object;
.source "EthernetStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field public static final EVENT_DHCP_START:I = 0x0

.field public static final EVENT_HW_CHANGED:I = 0x7

.field public static final EVENT_HW_CONNECTED:I = 0x3

.field public static final EVENT_HW_DISCONNECTED:I = 0x4

.field public static final EVENT_HW_PHYCONNECTED:I = 0x5

.field public static final EVENT_HW_PHYDISCONNECTED:I = 0x6

.field public static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x2

.field public static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EthernetStateTracker"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpHandlerCallback:Landroid/os/Handler$Callback;

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpTarget:Landroid/os/Handler;

.field private mEM:Landroid/net/ethernet/EthernetManager;

.field private mHWConnected:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceStopped:Z

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMonitor:Landroid/net/ethernet/EthernetMonitor;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mServiceStarted:Z

.field private mStackConnected:Z

.field private mStartingDhcp:Z

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTrackerHandlerCallback:Landroid/os/Handler$Callback;

.field private mTrackerTarget:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 7
    .parameter "netType"
    .parameter "networkName"

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 405
    new-instance v1, Landroid/net/ethernet/EthernetStateTracker$1;

    invoke-direct {v1, p0}, Landroid/net/ethernet/EthernetStateTracker$1;-><init>(Landroid/net/ethernet/EthernetStateTracker;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerHandlerCallback:Landroid/os/Handler$Callback;

    .line 490
    new-instance v1, Landroid/net/ethernet/EthernetStateTracker$2;

    invoke-direct {v1, p0}, Landroid/net/ethernet/EthernetStateTracker$2;-><init>(Landroid/net/ethernet/EthernetStateTracker;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpHandlerCallback:Landroid/os/Handler$Callback;

    .line 85
    const-string v1, "EthernetStateTracker"

    const-string v2, "Starts..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Landroid/net/NetworkInfo;

    const-string v2, ""

    invoke-direct {v1, p1, v3, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 88
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 89
    new-instance v1, Landroid/net/LinkCapabilities;

    invoke-direct {v1}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 91
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 92
    invoke-virtual {p0, v3}, Landroid/net/ethernet/EthernetStateTracker;->setTeardownRequested(Z)V

    .line 94
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->initEthernetNative()I

    move-result v1

    if-eqz v1, :cond_5f

    .line 95
    const-string v1, "EthernetStateTracker"

    const-string v2, "Can not init ethernet device layers"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_5e
    return-void

    .line 98
    :cond_5f
    const-string v1, "EthernetStateTracker"

    const-string v2, "Success"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mServiceStarted:Z

    .line 100
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DHCP Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    .line 103
    new-instance v1, Landroid/net/ethernet/EthernetMonitor;

    invoke-direct {v1, p0}, Landroid/net/ethernet/EthernetMonitor;-><init>(Landroid/net/ethernet/EthernetStateTracker;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mMonitor:Landroid/net/ethernet/EthernetMonitor;

    goto :goto_5e
.end method

.method static synthetic access$000(Landroid/net/ethernet/EthernetStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    return v0
.end method

.method static synthetic access$002(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/ethernet/EthernetStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/DhcpInfoInternal;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/LinkProperties;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/ethernet/EthernetManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/ethernet/EthernetStateTracker;ZI)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/ethernet/EthernetStateTracker;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/ethernet/EthernetStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    return v0
.end method

.method static synthetic access$502(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/ethernet/EthernetStateTracker;Landroid/net/ethernet/EthernetDevInfo;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/net/ethernet/EthernetStateTracker;->configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/net/ethernet/EthernetStateTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/ethernet/EthernetStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    return v0
.end method

.method static synthetic access$802(Landroid/net/ethernet/EthernetStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    return p1
.end method

.method static synthetic access$900(Landroid/net/ethernet/EthernetStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method private configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z
    .registers 9
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 163
    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    .line 164
    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    .line 165
    iput-boolean v5, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    .line 167
    new-instance v2, Landroid/net/DhcpInfoInternal;

    invoke-direct {v2}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 169
    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dhcp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 170
    iget-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    if-nez v2, :cond_49

    .line 171
    const-string v2, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trigger dhcp for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-boolean v6, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    .line 173
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    :cond_49
    :goto_49
    return v6

    .line 177
    :cond_4a
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 178
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    new-instance v3, Landroid/net/RouteInfo;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v2, v3}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    .line 180
    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 181
    .local v1, ia:Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v3

    iput v3, v2, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 184
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 185
    const-string v2, "EthernetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set ip manually "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ad

    .line 187
    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 189
    :cond_ad
    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-direct {p0, v2, v3}, Landroid/net/ethernet/EthernetStateTracker;->configureInterfaceStatic(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 190
    const/4 v0, 0x1

    .line 191
    .local v0, event:I
    const-string v2, "EthernetStateTracker"

    const-string v3, "Static IP configuration succeeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_c1
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_49

    .line 193
    .end local v0           #event:I
    :cond_c7
    const/4 v0, 0x2

    .line 194
    .restart local v0       #event:I
    const-string v2, "EthernetStateTracker"

    const-string v3, "Static IP configuration failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1
.end method

.method private configureInterfaceStatic(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z
    .registers 12
    .parameter "ifname"
    .parameter "dhcpInfoInternal"

    .prologue
    const/4 v5, 0x0

    .line 141
    const-string/jumbo v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 142
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 143
    .local v3, netd:Landroid/os/INetworkManagementService;
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 144
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 145
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 147
    :try_start_1b
    invoke-interface {v3, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 148
    invoke-virtual {p2}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    iput-object v6, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 149
    iget-object v6, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 150
    const-string v6, "EthernetStateTracker"

    const-string v7, "Static IP configuration succeeded"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_30} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_30} :catch_4c

    .line 151
    const/4 v5, 0x1

    .line 157
    :goto_31
    return v5

    .line 152
    :catch_32
    move-exception v4

    .line 153
    .local v4, re:Landroid/os/RemoteException;
    const-string v6, "EthernetStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 155
    .end local v4           #re:Landroid/os/RemoteException;
    :catch_4c
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v6, "EthernetStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Static IP configuration failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method private postNotification(I)V
    .registers 4
    .parameter "event"

    .prologue
    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 372
    const-string v1, "eth_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method private setEthState(ZI)V
    .registers 9
    .parameter "state"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 377
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEthState state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eq v1, p1, :cond_9e

    .line 379
    if-eqz p1, :cond_a2

    .line 380
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_82
    :goto_82
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 393
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 394
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 395
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 398
    .end local v0           #msg:Landroid/os/Message;
    :cond_9e
    invoke-direct {p0, p2}, Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V

    .line 399
    return-void

    .line 384
    :cond_a2
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v1, 0x4

    if-ne v1, p2, :cond_82

    .line 388
    const-string v1, "EthernetStateTracker"

    const-string v2, "EVENT_HW_DISCONNECTED: StopInterface"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0, v5}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    goto :goto_82
.end method


# virtual methods
.method public StartPolling()V
    .registers 3

    .prologue
    .line 242
    const-string v0, "EthernetStateTracker"

    const-string/jumbo v1, "start polling"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mMonitor:Landroid/net/ethernet/EthernetMonitor;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetMonitor;->startMonitoring()V

    .line 244
    return-void
.end method

.method public defaultRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 338
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 339
    return-void
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .registers 3

    .prologue
    .line 362
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 352
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 345
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    const-string/jumbo v0, "net.tcp.buffersize.default"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 248
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getTotalInterface()I

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v1

    if-eq v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isDefaultRouteSet()Z
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyPhyConnected(Ljava/lang/String;)V
    .registers 6
    .parameter "ifname"

    .prologue
    .line 528
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "report interface is up for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string/jumbo v1, "usbnet0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 530
    const-string v1, "hw.hasethernet"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_2a
    monitor-enter p0

    .line 533
    :try_start_2b
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 534
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 535
    monitor-exit p0

    .line 537
    return-void

    .line 535
    .end local v0           #msg:Landroid/os/Message;
    :catchall_37
    move-exception v1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_37

    throw v1
.end method

.method public notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V
    .registers 6
    .parameter "ifname"
    .parameter "state"

    .prologue
    .line 539
    const-string v0, "EthernetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "report new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on dev "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 541
    const-string v0, "EthernetStateTracker"

    const-string/jumbo v1, "update network state tracker"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    monitor-enter p0

    .line 543
    :try_start_44
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x3

    :goto_4f
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    monitor-exit p0

    .line 551
    :goto_53
    return-void

    .line 543
    :cond_54
    const/4 v0, 0x4

    goto :goto_4f

    .line 545
    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_56

    throw v0

    .line 547
    :cond_59
    const-string v0, "(pulledout)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 548
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V

    goto :goto_53

    .line 550
    :cond_66
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->postNotification(I)V

    goto :goto_53
.end method

.method public privateDnsRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 324
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 325
    return-void
.end method

.method public reconnect()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 253
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_2} :catch_3e

    .line 254
    :try_start_2
    iget-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mHWConnected:Z

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mStackConnected:Z

    if-eqz v2, :cond_13

    .line 255
    const-string v2, "EthernetStateTracker"

    const-string v3, "$$reconnect() returns DIRECTLY)"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-exit p0

    .line 271
    :goto_12
    return v1

    .line 258
    :cond_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_3b

    .line 259
    :try_start_14
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v2

    if-eq v2, v1, :cond_42

    .line 261
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetManager;->setEthEnabled(Z)V

    .line 262
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 263
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->ethSetDefaultConf()V

    .line 265
    :cond_2f
    const-string v1, "EthernetStateTracker"

    const-string v2, "$$reconnect call resetInterface()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z
    :try_end_39
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_39} :catch_3e

    move-result v1

    goto :goto_12

    .line 258
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v1
    :try_end_3e
    .catch Ljava/net/UnknownHostException; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 268
    :catch_3e
    move-exception v0

    .line 269
    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 271
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_42
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public resetInterface()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v1, :cond_75

    .line 207
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v0

    .line 208
    .local v0, info:Landroid/net/ethernet/EthernetDevInfo;
    if-eqz v0, :cond_7a

    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 209
    monitor-enter p0

    .line 210
    :try_start_15
    invoke-virtual {v0}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 211
    const-string v1, "EthernetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 213
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 215
    :cond_40
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    if-eqz v1, :cond_4a

    .line 216
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    :cond_4a
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    .line 219
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 220
    const-string v1, "EthernetStateTracker"

    const-string v2, "Could not stop DHCP"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_5c
    const-string v1, "EthernetStateTracker"

    const-string v2, "Force the connection disconnected before configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Landroid/net/ethernet/EthernetStateTracker;->setEthState(ZI)V

    .line 225
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 226
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    .line 227
    :cond_71
    invoke-direct {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->configureInterface(Landroid/net/ethernet/EthernetDevInfo;)Z

    .line 228
    monitor-exit p0

    .line 234
    .end local v0           #info:Landroid/net/ethernet/EthernetDevInfo;
    :cond_75
    :goto_75
    const/4 v1, 0x1

    return v1

    .line 228
    .restart local v0       #info:Landroid/net/ethernet/EthernetDevInfo;
    :catchall_77
    move-exception v1

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_15 .. :try_end_79} :catchall_77

    throw v1

    .line 231
    :cond_7a
    const-string v1, "EthernetStateTracker"

    const-string v2, "Failed to resetInterface for EthernetManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method

.method public setDependencyMet(Z)V
    .registers 2
    .parameter "met"

    .prologue
    .line 555
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 310
    const-string v0, "EthernetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public setRadio(Z)Z
    .registers 3
    .parameter "turnOn"

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public setTeardownRequested(Z)V
    .registers 3
    .parameter "isRequested"

    .prologue
    .line 107
    iget-object v0, p0, Landroid/net/ethernet/EthernetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    return-void
.end method

.method public setUserDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 306
    const-string v0, "EthernetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v4, 0x1

    .line 280
    const-string v1, "EthernetStateTracker"

    const-string/jumbo v2, "start to monitor the Ethernet devices"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-boolean v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mServiceStarted:Z

    if-eqz v1, :cond_3d

    .line 282
    iput-object p1, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    .line 283
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mContext:Landroid/content/Context;

    const-string v2, "ethernet"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ethernet/EthernetManager;

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    .line 284
    iput-object p2, p0, Landroid/net/ethernet/EthernetStateTracker;->mTarget:Landroid/os/Handler;

    .line 285
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mTrackerTarget:Landroid/os/Handler;

    .line 286
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1}, Landroid/net/ethernet/EthernetManager;->getEthState()I

    move-result v0

    .line 287
    .local v0, state:I
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eq v0, v4, :cond_3d

    .line 288
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-nez v0, :cond_3e

    .line 290
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v1, v4}, Landroid/net/ethernet/EthernetManager;->setEthEnabled(Z)V

    .line 303
    .end local v0           #state:I
    :cond_3d
    :goto_3d
    return-void

    .line 292
    .restart local v0       #state:I
    :cond_3e
    const-string v1, "EthernetStateTracker"

    const-string v2, "$$ DISABLE startMonitoring call resetInterface()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method public stopInterface(Z)Z
    .registers 8
    .parameter "suspend"

    .prologue
    const/4 v5, 0x1

    .line 115
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v2, :cond_49

    .line 116
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;

    move-result-object v1

    .line 117
    .local v1, info:Landroid/net/ethernet/EthernetDevInfo;
    if-eqz v1, :cond_49

    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetManager;->ethConfigured()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 119
    iget-object v3, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    monitor-enter v3

    .line 120
    const/4 v2, 0x1

    :try_start_19
    iput-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mInterfaceStopped:Z

    .line 121
    const-string v2, "EthernetStateTracker"

    const-string/jumbo v4, "stop dhcp and interface"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mDhcpTarget:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/ethernet/EthernetStateTracker;->mStartingDhcp:Z

    .line 124
    invoke-virtual {v1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, ifname:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 127
    const-string v2, "EthernetStateTracker"

    const-string v4, "Could not stop DHCP"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3d
    if-eqz v0, :cond_43

    .line 130
    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 131
    :cond_43
    if-nez p1, :cond_48

    .line 132
    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 133
    :cond_48
    monitor-exit v3

    .line 137
    .end local v0           #ifname:Ljava/lang/String;
    .end local v1           #info:Landroid/net/ethernet/EthernetDevInfo;
    :cond_49
    return v5

    .line 133
    .restart local v1       #info:Landroid/net/ethernet/EthernetDevInfo;
    :catchall_4a
    move-exception v2

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_19 .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method public teardown()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 366
    iget-object v1, p0, Landroid/net/ethernet/EthernetStateTracker;->mEM:Landroid/net/ethernet/EthernetManager;

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/net/ethernet/EthernetStateTracker;->stopInterface(Z)Z

    move-result v0

    :cond_9
    return v0
.end method
