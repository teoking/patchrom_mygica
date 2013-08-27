.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$1;,
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityMonitor;
    }
.end annotation


# static fields
.field public static final REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field private static final TAG:Ljava/lang/String; = "Instrumentation"


# instance fields
.field private mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mAutomaticPerformanceSnapshots:Z

.field private mComponent:Landroid/content/ComponentName;

.field private mInstrContext:Landroid/content/Context;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mPerfMetrics:Landroid/os/Bundle;

.field private mPerformanceCollector:Landroid/os/PerformanceCollector;

.field private mRunner:Ljava/lang/Thread;

.field private final mSync:Ljava/lang/Object;

.field private mThread:Landroid/app/ActivityThread;

.field private mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    .line 78
    iput-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 79
    iput-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 92
    return-void
.end method

.method static synthetic access$100(Landroid/app/Instrumentation;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Instrumentation;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    return-object v0
.end method

.method private addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .parameter "key"
    .parameter "value"
    .parameter "results"

    .prologue
    .line 1282
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1283
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1284
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_13

    .line 1285
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1292
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_13
    :goto_13
    return-void

    .line 1288
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_13
.end method

.method static checkStartActivityResult(ILjava/lang/Object;)V
    .registers 5
    .parameter "res"
    .parameter "intent"

    .prologue
    .line 1543
    if-ltz p0, :cond_3

    .line 1544
    return-void

    .line 1547
    :cond_3
    packed-switch p0, :pswitch_data_a2

    .line 1567
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1550
    :pswitch_29
    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_5f

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 1551
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find explicit activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; have you declared this activity in your AndroidManifest.xml?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    .restart local p1
    :cond_5f
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1558
    :pswitch_78
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :pswitch_91
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1564
    :pswitch_99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PendingIntent is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1547
    nop

    :pswitch_data_a2
    .packed-switch -0x5
        :pswitch_99
        :pswitch_78
        :pswitch_91
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .registers 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 992
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 993
    .local v0, app:Landroid/app/Application;
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 994
    return-object v0
.end method

.method private final validateNotAppThread()V
    .registers 3

    .prologue
    .line 1573
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1574
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1577
    :cond_e
    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5
    .parameter "filter"
    .parameter "result"
    .parameter "block"

    .prologue
    .line 630
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 631
    .local v0, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 632
    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5
    .parameter "cls"
    .parameter "result"
    .parameter "block"

    .prologue
    .line 653
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 654
    .local v0, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 655
    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4
    .parameter "monitor"

    .prologue
    .line 603
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_3
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v0, :cond_e

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    .line 607
    :cond_e
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    monitor-exit v1

    .line 609
    return-void

    .line 608
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 11
    .parameter "activity"
    .parameter "icicle"

    .prologue
    .line 1075
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v5, :cond_34

    .line 1076
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1077
    :try_start_7
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1078
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e
    if-ge v3, v0, :cond_33

    .line 1079
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1080
    .local v2, aw:Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, v2, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1081
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1082
    iput-object p1, v2, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1083
    iget-object v5, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v7, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v7, p0, v2}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v5, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1078
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1086
    .end local v2           #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_33
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_59

    .line 1089
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_34
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    .line 1091
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v5, :cond_5d

    .line 1092
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1093
    :try_start_3e
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1094
    .restart local v0       #N:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_45
    if-ge v3, v0, :cond_5c

    .line 1095
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1096
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, p1, p1, v5}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_5e

    .line 1094
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 1086
    .end local v0           #N:I
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v3           #i:I
    :catchall_59
    move-exception v5

    :try_start_5a
    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v5

    .line 1098
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_5c
    :try_start_5c
    monitor-exit v6

    .line 1100
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_5d
    return-void

    .line 1098
    :catchall_5e
    move-exception v5

    monitor-exit v6
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_5e

    throw v5
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 7
    .parameter "activity"

    .prologue
    .line 1119
    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    .line 1121
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_26

    .line 1122
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1123
    :try_start_a
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1124
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v0, :cond_25

    .line 1125
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1126
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1124
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1128
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_25
    monitor-exit v4

    .line 1130
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_26
    return-void

    .line 1128
    :catchall_27
    move-exception v3

    monitor-exit v4
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw v3
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 1163
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1164
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1235
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    .line 1236
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .parameter "activity"
    .parameter "icicle"

    .prologue
    .line 1152
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1153
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1183
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    .line 1184
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 1140
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1141
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 7
    .parameter "activity"

    .prologue
    .line 1193
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/app/Activity;->mResumed:Z

    .line 1194
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    .line 1196
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_29

    .line 1197
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1198
    :try_start_d
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1199
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_28

    .line 1200
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1201
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1199
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1203
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_28
    monitor-exit v4

    .line 1205
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_29
    return-void

    .line 1203
    :catchall_2a
    move-exception v3

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 1225
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1226
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1173
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    .line 1174
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1214
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    .line 1215
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 1245
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    .line 1246
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .registers 2
    .parameter "app"

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 1010
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .registers 5
    .parameter "monitor"
    .parameter "minHits"

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 673
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_6
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I

    move-result v0

    if-ge v0, p2, :cond_f

    .line 675
    const/4 v0, 0x0

    monitor-exit v1

    .line 679
    :goto_e
    return v0

    .line 677
    :cond_f
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 678
    monitor-exit v1

    .line 679
    const/4 v0, 0x1

    goto :goto_e

    .line 678
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public endPerformanceSnapshot()V
    .registers 2

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_e

    .line 204
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 206
    :cond_e
    return-void
.end method

.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 17
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intents"
    .parameter "options"

    .prologue
    .line 1442
    move-object v1, p2

    check-cast v1, Landroid/app/IApplicationThread;

    .line 1443
    .local v1, whoThread:Landroid/app/IApplicationThread;
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v0, :cond_37

    .line 1444
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1445
    :try_start_a
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 1446
    .local v6, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_11
    if-ge v8, v6, :cond_36

    .line 1447
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1448
    .local v7, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v0, 0x0

    const/4 v4, 0x0

    aget-object v4, p5, v4

    invoke-virtual {v7, p1, v0, v4}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1449
    iget v0, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1450
    invoke-virtual {v7}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1451
    monitor-exit v2

    .line 1469
    .end local v6           #N:I
    .end local v7           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v8           #i:I
    :goto_32
    return-void

    .line 1446
    .restart local v6       #N:I
    .restart local v7       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v8       #i:I
    :cond_33
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 1456
    .end local v7           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_53

    .line 1459
    .end local v6           #N:I
    .end local v8           #i:I
    :cond_37
    :try_start_37
    array-length v0, p5

    new-array v3, v0, [Ljava/lang/String;

    .line 1460
    .local v3, resolvedTypes:[Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3b
    array-length v0, p5

    if-ge v8, v0, :cond_56

    .line 1461
    aget-object v0, p5, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1462
    aget-object v0, p5, v8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_50} :catch_69

    .line 1460
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 1456
    .end local v3           #resolvedTypes:[Ljava/lang/String;
    .end local v8           #i:I
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0

    .line 1464
    .restart local v3       #resolvedTypes:[Ljava/lang/String;
    .restart local v8       #i:I
    :cond_56
    :try_start_56
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v2, p5

    move-object v4, p3

    move-object/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result v9

    .line 1466
    .local v9, result:I
    const/4 v0, 0x0

    aget-object v0, p5, v0

    invoke-static {v9, v0}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_68} :catch_69

    goto :goto_32

    .line 1467
    .end local v3           #resolvedTypes:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #result:I
    :catch_69
    move-exception v0

    goto :goto_32
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 25
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "options"

    .prologue
    .line 1402
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1403
    .local v3, whoThread:Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_49

    .line 1404
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1405
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 1406
    .local v13, N:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_18
    if-ge v15, v13, :cond_48

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1408
    .local v14, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1409
    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1410
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1411
    if-ltz p6, :cond_43

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_41
    monitor-exit v4

    .line 1429
    .end local v13           #N:I
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v15           #i:I
    :goto_42
    return-object v2

    .line 1411
    .restart local v13       #N:I
    .restart local v14       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v15       #i:I
    :cond_43
    const/4 v2, 0x0

    goto :goto_41

    .line 1406
    :cond_45
    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    .line 1416
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_7e

    .line 1419
    .end local v13           #N:I
    .end local v15           #i:I
    :cond_49
    const/4 v2, 0x0

    :try_start_4a
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1420
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1421
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_81

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_66
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move/from16 v8, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v16

    .line 1426
    .local v16, result:I
    move/from16 v0, v16

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_7c} :catch_83

    .line 1429
    .end local v16           #result:I
    :goto_7c
    const/4 v2, 0x0

    goto :goto_42

    .line 1416
    :catchall_7e
    move-exception v2

    :try_start_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v2

    .line 1421
    :cond_81
    const/4 v7, 0x0

    goto :goto_66

    .line 1427
    :catch_83
    move-exception v2

    goto :goto_7c
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 25
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "options"

    .prologue
    .line 1501
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1502
    .local v3, whoThread:Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_49

    .line 1503
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1504
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 1505
    .local v13, N:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_18
    if-ge v15, v13, :cond_48

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1507
    .local v14, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1508
    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1509
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1510
    if-ltz p6, :cond_43

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_41
    monitor-exit v4

    .line 1528
    .end local v13           #N:I
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v15           #i:I
    :goto_42
    return-object v2

    .line 1510
    .restart local v13       #N:I
    .restart local v14       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v15       #i:I
    :cond_43
    const/4 v2, 0x0

    goto :goto_41

    .line 1505
    :cond_45
    add-int/lit8 v15, v15, 0x1

    goto :goto_18

    .line 1515
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_7e

    .line 1518
    .end local v13           #N:I
    .end local v15           #i:I
    :cond_49
    const/4 v2, 0x0

    :try_start_4a
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1519
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1520
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_81

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    :goto_66
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move/from16 v8, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v16

    .line 1525
    .local v16, result:I
    move/from16 v0, v16

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_7c} :catch_83

    .line 1528
    .end local v16           #result:I
    :goto_7c
    const/4 v2, 0x0

    goto :goto_42

    .line 1515
    :catchall_7e
    move-exception v2

    :try_start_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v2

    .line 1520
    :cond_81
    const/4 v7, 0x0

    goto :goto_66

    .line 1526
    :catch_83
    move-exception v2

    goto :goto_7c
.end method

.method public finish(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 182
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    if-eqz v0, :cond_7

    .line 183
    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 185
    :cond_7
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    .line 186
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 188
    :cond_10
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 1298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1299
    .local v0, results:Landroid/os/Bundle;
    const-string v1, "global_alloc_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1300
    const-string v1, "global_alloc_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1301
    const-string v1, "global_freed_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1302
    const-string v1, "global_freed_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1303
    const-string v1, "gc_invocation_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1304
    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 1312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1313
    .local v0, results:Landroid/os/Bundle;
    const-string/jumbo v1, "sent_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1314
    const-string/jumbo v1, "received_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1315
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method final init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;)V
    .registers 7
    .parameter "thread"
    .parameter "instrContext"
    .parameter "appContext"
    .parameter "component"
    .parameter "watcher"

    .prologue
    .line 1534
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 1535
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 1536
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 1537
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 1538
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 1539
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1540
    return-void
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .registers 12
    .parameter "targetActivity"
    .parameter "id"
    .parameter "flag"

    .prologue
    const/16 v7, 0x17

    const/4 v4, 0x0

    .line 782
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 788
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 789
    .local v1, downEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 792
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 794
    :try_start_11
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_19} :catch_30

    .line 800
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 801
    .local v3, upEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 804
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 828
    new-instance v0, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 829
    .local v0, cmr:Landroid/app/Instrumentation$1ContextMenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 830
    iget-boolean v4, v0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    .end local v0           #cmr:Landroid/app/Instrumentation$1ContextMenuRunnable;
    .end local v3           #upEvent:Landroid/view/KeyEvent;
    :goto_2f
    return v4

    .line 795
    :catch_30
    move-exception v2

    .line 796
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v5, "Instrumentation"

    const-string v6, "Could not sleep for long press timeout"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .registers 6
    .parameter "targetActivity"
    .parameter "id"
    .parameter "flag"

    .prologue
    .line 766
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 767
    .local v0, mr:Landroid/app/Instrumentation$1MenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 768
    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return v1
.end method

.method public isProfiling()Z
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 24
    .parameter
    .parameter "context"
    .parameter "token"
    .parameter "application"
    .parameter "intent"
    .parameter "info"
    .parameter "title"
    .parameter "parent"
    .parameter "id"
    .parameter "lastNonConfigurationInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1039
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .local v2, aThread:Landroid/app/ActivityThread;
    move-object/from16 v11, p10

    .line 1040
    check-cast v11, Landroid/app/Activity$NonConfigurationInstances;

    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    move-object v1, p2

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v12}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;)V

    .line 1044
    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 5
    .parameter "cl"
    .parameter "className"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1063
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5
    .parameter "cl"
    .parameter "className"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 977
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "arguments"

    .prologue
    .line 110
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 213
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 4
    .parameter "obj"
    .parameter "e"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 4
    .parameter "monitor"

    .prologue
    .line 727
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    :try_start_3
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 729
    monitor-exit v1

    .line 730
    return-void

    .line 729
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runner"

    .prologue
    .line 336
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 337
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 338
    .local v0, sr:Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 340
    return-void
.end method

.method public sendCharacterSync(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 919
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 920
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 921
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .registers 4
    .parameter "key"

    .prologue
    .line 906
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 907
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 908
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .registers 18
    .parameter "event"

    .prologue
    .line 873
    invoke-direct/range {p0 .. p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 875
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 876
    .local v1, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 877
    .local v3, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 878
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 879
    .local v6, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 880
    .local v7, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 881
    .local v8, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    .line 882
    .local v9, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 883
    .local v10, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    .line 884
    .local v12, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 885
    .local v13, flags:I
    if-nez v12, :cond_2f

    .line 886
    const/16 v12, 0x101

    .line 888
    :cond_2f
    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-nez v11, :cond_39

    .line 889
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 891
    :cond_39
    const-wide/16 v14, 0x0

    cmp-long v11, v1, v14

    if-nez v11, :cond_40

    .line 892
    move-wide v1, v3

    .line 894
    :cond_40
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v11, v13, 0x8

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 896
    .local v0, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v11

    const/4 v14, 0x2

    invoke-virtual {v11, v0, v14}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 898
    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 935
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_10

    .line 937
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 939
    :cond_10
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 941
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .registers 6
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 162
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v1, :cond_b

    .line 164
    :try_start_4
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v2, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 170
    :cond_b
    :goto_b
    return-void

    .line 166
    :catch_c
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    goto :goto_b
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .registers 9
    .parameter "text"

    .prologue
    .line 840
    if-nez p1, :cond_3

    .line 861
    :cond_2
    :goto_2
    return-void

    .line 843
    :cond_3
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 845
    .local v2, keyCharacterMap:Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 847
    .local v0, events:[Landroid/view/KeyEvent;
    if-eqz v0, :cond_2

    .line 848
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    array-length v3, v0

    if-ge v1, v3, :cond_27

    .line 854
    aget-object v3, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 857
    :cond_27
    const-wide/16 v3, 0x12c

    :try_start_29
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_2

    .line 858
    :catch_2d
    move-exception v3

    goto :goto_2
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 955
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 956
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_11

    .line 957
    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 959
    :cond_11
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 961
    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 193
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    .line 194
    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 3
    .parameter "inTouch"

    .prologue
    .line 296
    :try_start_0
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 301
    :goto_e
    return-void

    .line 298
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public start()V
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_c
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    .line 122
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 10
    .parameter "intent"

    .prologue
    .line 363
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 365
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 366
    :try_start_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c0

    .line 368
    .end local p1
    .local v2, intent:Landroid/content/Intent;
    :try_start_b
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 370
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_37

    .line 371
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve activity for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_33

    .line 407
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catchall_33
    move-exception v4

    move-object p1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p1
    :goto_35
    :try_start_35
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_c0

    throw v4

    .line 373
    .end local p1
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_37
    :try_start_37
    iget-object v4, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, myProc:Ljava/lang/String;
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 377
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent in process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resolved to different process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 382
    :cond_74
    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 384
    new-instance v1, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    .line 386
    .local v1, aw:Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v4, :cond_92

    .line 387
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    .line 389
    :cond_92
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string v6, "AccessibilityWindowQueryActivity"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_9e
    .catchall {:try_start_37 .. :try_end_9e} :catchall_33

    move-result v4

    if-eqz v4, :cond_a6

    .line 392
    const-wide/16 v6, 0x5dc

    :try_start_a3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_33
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_be

    .line 397
    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_33

    .line 401
    :cond_ad
    :try_start_ad
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_b2
    .catchall {:try_start_ad .. :try_end_b2} :catchall_33
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_b2} :catch_c3

    .line 404
    :goto_b2
    :try_start_b2
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 406
    iget-object v4, v1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    monitor-exit v5
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_33

    return-object v4

    .line 393
    :catch_be
    move-exception v4

    goto :goto_a6

    .line 407
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #myProc:Ljava/lang/String;
    .restart local p1
    :catchall_c0
    move-exception v4

    goto/16 :goto_35

    .line 402
    .end local p1
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #myProc:Ljava/lang/String;
    :catch_c3
    move-exception v4

    goto :goto_b2
.end method

.method public startAllocCounting()V
    .registers 2

    .prologue
    .line 1256
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1257
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1258
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1260
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 1263
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1264
    return-void
.end method

.method public startPerformanceSnapshot()V
    .registers 3

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_c

    .line 198
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 200
    :cond_c
    return-void
.end method

.method public startProfiling()V
    .registers 4

    .prologue
    .line 270
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 271
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x80

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 275
    .end local v0           #file:Ljava/io/File;
    :cond_23
    return-void
.end method

.method public stopAllocCounting()V
    .registers 2

    .prologue
    .line 1270
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1271
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1272
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1273
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1274
    return-void
.end method

.method public stopProfiling()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 284
    :cond_b
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .registers 5
    .parameter "recipient"

    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 312
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method

.method public waitForIdleSync()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 322
    new-instance v0, Landroid/app/Instrumentation$Idler;

    invoke-direct {v0, v3}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    .line 323
    .local v0, idler:Landroid/app/Instrumentation$Idler;
    iget-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 324
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v2, v3}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    .line 326
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .registers 5
    .parameter "monitor"

    .prologue
    .line 692
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 693
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 694
    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 695
    monitor-exit v2

    .line 696
    return-object v0

    .line 695
    :catchall_e
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .registers 7
    .parameter "monitor"
    .parameter "timeOut"

    .prologue
    .line 711
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    .line 712
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 713
    :try_start_7
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 714
    monitor-exit v2

    .line 715
    return-object v0

    .line 714
    :catchall_e
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
