.class public Lcom/android/server/EthernetService;
.super Landroid/net/ethernet/IEthernetManager$Stub;
.source "EthernetService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<syncronized:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/ethernet/IEthernetManager$Stub;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetService"


# instance fields
.field private DevName:[Ljava/lang/String;

.field private isEthEnabled:I

.field private isEthernetServiceInited:Z

.field private mContext:Landroid/content/Context;

.field private mDelayedHandler:Landroid/os/Handler;

.field private mEthState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mResetInterface:Ljava/lang/Runnable;

.field private mTracker:Landroid/net/ethernet/EthernetStateTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/ethernet/EthernetStateTracker;)V
    .locals 3
    .parameter "context"
    .parameter "Tracker"

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/net/ethernet/IEthernetManager$Stub;-><init>()V

    .line 46
    iput v0, p0, Lcom/android/server/EthernetService;->mEthState:I

    .line 49
    iput-boolean v0, p0, Lcom/android/server/EthernetService;->isEthernetServiceInited:Z

    .line 175
    new-instance v0, Lcom/android/server/EthernetService$1;

    invoke-direct {v0, p0}, Lcom/android/server/EthernetService$1;-><init>(Lcom/android/server/EthernetService;)V

    iput-object v0, p0, Lcom/android/server/EthernetService;->mResetInterface:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Lcom/android/server/EthernetService$2;

    invoke-direct {v0, p0}, Lcom/android/server/EthernetService$2;-><init>(Lcom/android/server/EthernetService;)V

    iput-object v0, p0, Lcom/android/server/EthernetService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p2, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    .line 54
    iput-object p1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/android/server/EthernetService;->getPersistedState()I

    move-result v0

    iput v0, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    .line 57
    const-string v0, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ethernet dev enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->getDeviceNameList()[Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/android/server/EthernetService;->isEthEnabled:I

    invoke-virtual {p0, v0}, Lcom/android/server/EthernetService;->setEthState(I)V

    .line 60
    invoke-direct {p0}, Lcom/android/server/EthernetService;->registerForBroadcasts()V

    .line 61
    const-string v0, "EthernetService"

    const-string v1, "Trigger the ethernet monitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateTracker;->StartPolling()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/EthernetService;->mDelayedHandler:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/EthernetService;->isEthernetServiceInited:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EthernetService;)Landroid/net/ethernet/EthernetStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/EthernetService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/EthernetService;->getPersistedState()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/EthernetService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/EthernetService;->mResetInterface:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/EthernetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/EthernetService;->mDelayedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPersistedState()I
    .locals 3

    .prologue
    .line 160
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "eth_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 165
    :goto_0
    return v2

    .line 163
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized persistEthEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 170
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "eth_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 171
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 170
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 122
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "ro.platform.falsestandby"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/EthernetService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method

.method private scanEthDevice()I
    .locals 5

    .prologue
    .line 136
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v0, 0x0

    .line 137
    .local v0, i:I
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->getInterfaceCnt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string v2, "EthernetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " net devices"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 140
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    .line 145
    :cond_1
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 146
    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    invoke-static {v1}, Landroid/net/ethernet/EthernetNative;->getInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 147
    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 152
    .end local v1           #j:I
    :cond_2
    return v0

    .line 149
    .restart local v1       #j:I
    :cond_3
    const-string v2, "EthernetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized UpdateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 103
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "eth_conf"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    const-string v2, "eth_ifname"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIfName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    const-string v2, "eth_ip"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    const-string v2, "eth_mode"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getConnectMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    const-string v2, "eth_dns"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getDnsAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    const-string v2, "eth_route"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getRouteAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    const-string v2, "eth_mask"

    invoke-virtual {p1}, Landroid/net/ethernet/EthernetDevInfo;->getNetMask()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    iget v2, p0, Lcom/android/server/EthernetService;->mEthState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 113
    :try_start_1
    iget-object v2, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v2}, Landroid/net/ethernet/EthernetStateTracker;->resetInterface()Z

    .line 114
    const-string v2, "EthernetService"

    const-string v3, "$$UpdateEthDevInfo() call resetInterface()"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_2
    const-string v2, "EthernetService"

    const-string v3, "Wrong ethernet configuration"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 103
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-direct {p0}, Lcom/android/server/EthernetService;->scanEthDevice()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 297
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget-object v0, p0, Lcom/android/server/EthernetService;->mTracker:Landroid/net/ethernet/EthernetStateTracker;

    invoke-virtual {v0}, Landroid/net/ethernet/EthernetStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEthState()I
    .locals 1

    .prologue
    .line 248
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    iget v0, p0, Lcom/android/server/EthernetService;->mEthState:I

    return v0
.end method

.method public declared-synchronized getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;
    .locals 3

    .prologue
    .line 77
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthConfigured()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/net/ethernet/EthernetDevInfo;

    invoke-direct {v1}, Landroid/net/ethernet/EthernetDevInfo;-><init>()V

    .line 80
    .local v1, info:Landroid/net/ethernet/EthernetDevInfo;
    const-string v2, "eth_mode"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    .line 81
    const-string v2, "eth_ifname"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    .line 82
    const-string v2, "eth_ip"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    .line 83
    const-string v2, "eth_dns"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    .line 84
    const-string v2, "eth_mask"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setNetMask(Ljava/lang/String;)V

    .line 85
    const-string v2, "eth_route"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/ethernet/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #info:Landroid/net/ethernet/EthernetDevInfo;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getTotalInterface()I
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    invoke-static {}, Landroid/net/ethernet/EthernetNative;->getInterfaceCnt()I

    move-result v0

    return v0
.end method

.method public isEthConfigured()Z
    .locals 5

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    iget-object v4, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "eth_conf"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, x:I
    if-ne v1, v2, :cond_0

    .line 73
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public isEthDeviceAdded()Z
    .locals 6

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 278
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-nez v1, :cond_1

    .line 279
    :cond_0
    const-string v1, "EthernetService"

    const-string v4, "isEthDeviceAdded: trigger scanEthDevice"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/server/EthernetService;->scanEthDevice()I

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-nez v1, :cond_4

    .line 284
    :cond_2
    const-string v1, "EthernetService"

    const-string v2, "EthernetNative.isEthDeviceAdded: No Device Found"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_3
    :goto_0
    return v3

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/net/ethernet/EthernetNative;->isInterfaceAdded(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, retval:I
    const-string v4, "EthernetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EthernetNative.isEthDeviceAdded("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") return "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-nez v0, :cond_3

    move v3, v2

    .line 291
    goto :goto_0

    :cond_5
    move v1, v3

    .line 289
    goto :goto_1
.end method

.method public isEthDeviceUp()Z
    .locals 9

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v5, 0x0

    .line 253
    const/4 v3, 0x0

    .line 254
    .local v3, retval:Z
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/net/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/operstate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 255
    .local v2, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v6, 0x20

    invoke-direct {v0, v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 256
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, status:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, "up"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 258
    const-string v6, "EthernetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EthDevice status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v3, 0x1

    .line 268
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 269
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 273
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #retval:Z
    .end local v4           #status:Ljava/lang/String;
    :goto_1
    return v3

    .line 261
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #retval:Z
    .restart local v4       #status:Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    const-string v6, "down"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    const-string v6, "EthernetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EthDevice status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v3, 0x0

    goto :goto_0

    .line 266
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 271
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v4           #status:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/io/IOException;
    const-string v6, "EthernetService"

    const-string v7, "get EthDevice status error"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 273
    goto :goto_1
.end method

.method public declared-synchronized setEthMode(Ljava/lang/String;)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 93
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set ethernet mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "eth_ifname"

    iget-object v2, p0, Lcom/android/server/EthernetService;->DevName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    const-string v1, "eth_conf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    const-string v1, "eth_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setEthState(I)V
    .locals 5
    .parameter "state"

    .prologue
    .local p0, this:Lcom/android/server/EthernetService;,"Lcom/android/server/EthernetService<Tsyncronized;>;"
    const/4 v4, 0x1

    .line 205
    monitor-enter p0

    :try_start_0
    const-string v1, "EthernetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEthState from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/EthernetService;->mEthState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/android/server/EthernetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 207
    .local v0, cr:Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/EthernetService;->mEthState:I

    if-eq v1, p1, :cond_0

    .line 208
    iput p1, p0, Lcom/android/server/EthernetService;->mEthState:I

    .line 209
    if-ne p1, v4, :cond_1

    .line 210
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 212
    new-instance v1, Lcom/android/server/EthernetService$3;

    const-string v2, "stopInterface"

    invoke-direct {v1, p0, v2}, Lcom/android/server/EthernetService$3;-><init>(Lcom/android/server/EthernetService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/EthernetService$3;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 220
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/EthernetService;->persistEthEnabled(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/server/EthernetService;->isEthConfigured()Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    const-string v1, "dhcp"

    invoke-virtual {p0, v1}, Lcom/android/server/EthernetService;->setEthMode(Ljava/lang/String;)V

    .line 226
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/EthernetService;->isEthernetServiceInited:Z

    if-nez v1, :cond_3

    .line 227
    const-string v1, "EthernetService"

    const-string v2, "$$ EthernetService uninited,disable setEthState() call resetInterface()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v1, "EthernetService"

    const-string v2, "$$ resetInterface() will be called in reconnect()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 231
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_3
    :try_start_2
    const-string v1, "EthernetService"

    const-string v2, "$$ setEthState() start thread to resetInterface()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v1, Lcom/android/server/EthernetService$4;

    const-string v2, "resetInterface"

    invoke-direct {v1, p0, v2}, Lcom/android/server/EthernetService$4;-><init>(Lcom/android/server/EthernetService;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/EthernetService$4;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
