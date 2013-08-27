.class Landroid/net/pppoe/PppoeMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "PppoeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/PppoeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/pppoe/PppoeMonitor;


# direct methods
.method public constructor <init>(Landroid/net/pppoe/PppoeMonitor;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    .line 44
    const-string v0, "PppoeMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method handleEvent(Ljava/lang/String;I)V
    .registers 5
    .parameter "ifname"
    .parameter "event"

    .prologue
    .line 109
    packed-switch p2, :pswitch_data_32

    .line 120
    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    invoke-static {v0}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p1, v1}, Landroid/net/pppoe/PppoeStateTracker;->notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V

    .line 122
    :goto_e
    return-void

    .line 111
    :pswitch_f
    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    invoke-static {v0}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p1, v1}, Landroid/net/pppoe/PppoeStateTracker;->notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_e

    .line 114
    :pswitch_1b
    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    invoke-static {v0}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, p1, v1}, Landroid/net/pppoe/PppoeStateTracker;->notifyStateChange(Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_e

    .line 117
    :pswitch_27
    iget-object v0, p0, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->this$0:Landroid/net/pppoe/PppoeMonitor;

    invoke-static {v0}, Landroid/net/pppoe/PppoeMonitor;->access$000(Landroid/net/pppoe/PppoeMonitor;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/pppoe/PppoeStateTracker;->notifyPppConnected(Ljava/lang/String;)V

    goto :goto_e

    .line 109
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_f
        :pswitch_27
    .end packed-switch
.end method

.method public run()V
    .registers 12

    .prologue
    .line 53
    :cond_0
    :goto_0
    const-string v8, "PppoeMonitor"

    const-string v9, "go poll events"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Landroid/net/pppoe/PppoeNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, eventName:Ljava/lang/String;
    const-string/jumbo v8, "net.pppoe.running"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, propVal:Ljava/lang/String;
    const/4 v6, 0x0

    .line 58
    .local v6, n:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_27

    .line 60
    :try_start_19
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1c} :catch_af

    move-result v6

    .line 66
    :goto_1d
    if-nez v6, :cond_30

    .line 67
    const-string v8, "PppoeMonitor"

    const-string v9, "!net.pppoe.running. Discard event"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_27
    const-string v8, "PppoeMonitor"

    const-string/jumbo v9, "net.pppoe.running not FOUND"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 71
    :cond_30
    if-eqz v2, :cond_0

    .line 74
    const-string v8, "PppoeMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "got event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, events:[Ljava/lang/String;
    array-length v5, v3

    .line 80
    .local v5, index:I
    const/4 v8, 0x2

    if-lt v5, v8, :cond_0

    .line 82
    const/4 v4, 0x0

    .line 83
    .local v4, i:I
    :goto_55
    if-eqz v5, :cond_0

    add-int/lit8 v8, v5, -0x1

    if-ge v4, v8, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, event:I
    const-string v8, "PppoeMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dev: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ev "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    add-int/lit8 v8, v4, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, cmd:I
    const/16 v8, 0x11

    if-ne v0, v8, :cond_99

    .line 88
    const/4 v1, 0x2

    .line 89
    aget-object v8, v3, v4

    invoke-virtual {p0, v8, v1}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->handleEvent(Ljava/lang/String;I)V

    .line 98
    :cond_96
    :goto_96
    add-int/lit8 v4, v4, 0x2

    .line 99
    goto :goto_55

    .line 91
    :cond_99
    const/16 v8, 0x14

    if-ne v0, v8, :cond_a4

    .line 92
    const/4 v1, 0x1

    .line 93
    aget-object v8, v3, v4

    invoke-virtual {p0, v8, v1}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->handleEvent(Ljava/lang/String;I)V

    goto :goto_96

    .line 94
    :cond_a4
    const/16 v8, 0x10

    if-ne v0, v8, :cond_96

    .line 95
    const/4 v1, 0x3

    .line 96
    aget-object v8, v3, v4

    invoke-virtual {p0, v8, v1}, Landroid/net/pppoe/PppoeMonitor$MonitorThread;->handleEvent(Ljava/lang/String;I)V

    goto :goto_96

    .line 61
    .end local v0           #cmd:I
    .end local v1           #event:I
    .end local v3           #events:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #index:I
    :catch_af
    move-exception v8

    goto/16 :goto_1d
.end method
