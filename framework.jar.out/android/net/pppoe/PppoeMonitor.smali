.class public Landroid/net/pppoe/PppoeMonitor;
.super Ljava/lang/Object;
.source "PppoeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/pppoe/PppoeMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final ADD_ADDR:I = 0x14

.field private static final CONNECTED:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DEL_LINK:I = 0x11

.field private static final DISCONNECTED:I = 0x2

.field private static final NEW_LINK:I = 0x10

.field private static final PHYUP:I = 0x3

.field private static final RM_ADDR:I = 0x15

.field private static final TAG:Ljava/lang/String; = "PppoeMonitor"

.field private static final connectedEvent:Ljava/lang/String; = "CONNECTED"

.field private static final disconnectedEvent:Ljava/lang/String; = "DISCONNECTED"


# instance fields
.field private mTracker:Landroid/net/pppoe/PppoeStateTracker;

.field private final pppoe_running_flag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/pppoe/PppoeStateTracker;)V
    .registers 3
    .parameter "tracker"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, "net.pppoe.running"

    iput-object v0, p0, Landroid/net/pppoe/PppoeMonitor;->pppoe_running_flag:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Landroid/net/pppoe/PppoeMonitor;->mTracker:Landroid/net/pppoe/PppoeStateTracker;

    .line 35
    return-void
.end method

.method static synthetic access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor;->mTracker:Landroid/net/pppoe/PppoeStateTracker;

    return-object v0
.end method


# virtual methods
.method public startMonitoring()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;-><init>(Landroid/net/pppoe/PppoeMonitor;)V

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->start()V

    .line 39
    return-void
.end method
