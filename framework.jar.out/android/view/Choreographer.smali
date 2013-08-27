.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x2

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object; = null

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final NANOS_PER_MS:J = 0xf4240L

#the value of this static final field might be set in the static constructor
.field private static final SKIPPED_FRAME_WARNING_LIMIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static volatile sFrameDelay:J

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mIsBenchMark:Z

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 85
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 88
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 101
    const-string v0, "debug.choreographer.vsync"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 105
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 110
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 120
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 9
    .parameter "looper"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 143
    iput-boolean v6, p0, Landroid/view/Choreographer;->mIsBenchMark:Z

    .line 167
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 168
    new-instance v2, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v2, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 169
    sget-boolean v2, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v2, :cond_60

    new-instance v2, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v2, p0, p1}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    :goto_20
    iput-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 170
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 171
    const v2, 0x4e6e6b28

    new-instance v4, Landroid/view/Display;

    invoke-direct {v4, v6, v3}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    invoke-virtual {v4}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    div-float/2addr v2, v4

    float-to-long v4, v2

    iput-wide v4, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 174
    const-string/jumbo v2, "sys.optimization.benchapk"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, tmp:Ljava/lang/String;
    if-eqz v1, :cond_4b

    .line 176
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 177
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/Choreographer;->mIsBenchMark:Z

    .line 181
    :cond_4b
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_51
    const/4 v2, 0x2

    if-gt v0, v2, :cond_62

    .line 183
    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v4, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v4, p0, v3}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V

    aput-object v4, v2, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .end local v0           #i:I
    .end local v1           #tmp:Ljava/lang/String;
    :cond_60
    move-object v2, v3

    .line 169
    goto :goto_20

    .line 185
    .restart local v0       #i:I
    .restart local v1       #tmp:Ljava/lang/String;
    :cond_62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/view/Choreographer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method public static getFrameDelay()J
    .registers 2

    .prologue
    .line 214
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .registers 1

    .prologue
    .line 195
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .registers 3

    .prologue
    .line 604
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 8
    .parameter "dueTime"
    .parameter "action"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 608
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 609
    .local v0, callback:Landroid/view/Choreographer$CallbackRecord;
    if-nez v0, :cond_11

    .line 610
    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    .end local v0           #callback:Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v0, v2}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$1;)V

    .line 615
    .restart local v0       #callback:Landroid/view/Choreographer$CallbackRecord;
    :goto_a
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 616
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 617
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 618
    return-object v0

    .line 612
    :cond_11
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 613
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_a
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .registers 14
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"
    .parameter "delayMillis"

    .prologue
    .line 314
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 315
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 316
    .local v3, now:J
    add-long v0, v3, p4

    .line 317
    .local v0, dueTime:J
    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v0, v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 319
    cmp-long v5, v0, v3

    if-gtz v5, :cond_19

    .line 320
    invoke-direct {p0, v3, v4}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 327
    :goto_17
    monitor-exit v6

    .line 328
    return-void

    .line 322
    :cond_19
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v7, 0x2

    invoke-virtual {v5, v7, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 323
    .local v2, msg:Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 324
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 325
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v5, v2, v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_17

    .line 327
    .end local v0           #dueTime:J
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #now:J
    :catchall_2c
    move-exception v5

    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v5
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .registers 3
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 622
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 623
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 624
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 625
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 626
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"

    .prologue
    .line 357
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_3
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    if-eqz p2, :cond_14

    if-nez p3, :cond_14

    .line 360
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 362
    :cond_14
    monitor-exit v1

    .line 363
    return-void

    .line 362
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private scheduleFrameLocked(J)V
    .registers 11
    .parameter "now"

    .prologue
    const/4 v7, 0x1

    .line 465
    iget-boolean v3, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v3, :cond_18

    .line 466
    iput-boolean v7, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 467
    sget-boolean v3, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v3, :cond_28

    iget-boolean v3, p0, Landroid/view/Choreographer;->mIsBenchMark:Z

    if-nez v3, :cond_28

    .line 475
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 476
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 493
    :cond_18
    :goto_18
    return-void

    .line 478
    :cond_19
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v7}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 479
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 480
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_18

    .line 483
    .end local v0           #msg:Landroid/os/Message;
    :cond_28
    iget-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    sget-wide v5, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v3, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 488
    .local v1, nextFrameTime:J
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 489
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 490
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_18
.end method

.method private scheduleVsyncLocked()V
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 601
    return-void
.end method

.method public static setFrameDelay(J)V
    .registers 2
    .parameter "frameDelay"

    .prologue
    .line 233
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 234
    return-void
.end method

.method public static subtractFrameDelay(J)J
    .registers 6
    .parameter "delayMillis"

    .prologue
    .line 259
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 260
    .local v0, frameDelay:J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    const-wide/16 v2, 0x0

    :goto_8
    return-wide v2

    :cond_9
    sub-long v2, p0, v0

    goto :goto_8
.end method


# virtual methods
.method doCallbacks(IJ)V
    .registers 12
    .parameter "callbackType"
    .parameter "frameTimeNanos"

    .prologue
    .line 548
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 552
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 553
    .local v3, now:J
    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v1

    .line 554
    .local v1, callbacks:Landroid/view/Choreographer$CallbackRecord;
    if-nez v1, :cond_13

    .line 555
    monitor-exit v6

    .line 578
    :goto_12
    return-void

    .line 557
    :cond_13
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 558
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_20

    .line 560
    move-object v0, v1

    .local v0, c:Landroid/view/Choreographer$CallbackRecord;
    :goto_18
    if-eqz v0, :cond_37

    .line 566
    :try_start_1a
    invoke-virtual {v0, p2, p3}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    .line 560
    iget-object v0, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_23

    goto :goto_18

    .line 558
    .end local v0           #c:Landroid/view/Choreographer$CallbackRecord;
    .end local v1           #callbacks:Landroid/view/Choreographer$CallbackRecord;
    .end local v3           #now:J
    :catchall_20
    move-exception v5

    :try_start_21
    monitor-exit v6
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v5

    .line 569
    .restart local v0       #c:Landroid/view/Choreographer$CallbackRecord;
    .restart local v1       #callbacks:Landroid/view/Choreographer$CallbackRecord;
    .restart local v3       #now:J
    :catchall_23
    move-exception v5

    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 570
    const/4 v7, 0x0

    :try_start_28
    iput-boolean v7, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 572
    :cond_2a
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 573
    .local v2, next:Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {p0, v1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 574
    move-object v1, v2

    .line 575
    if-nez v1, :cond_2a

    .line 576
    monitor-exit v6
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_34

    .line 569
    throw v5

    .line 576
    .end local v2           #next:Landroid/view/Choreographer$CallbackRecord;
    :catchall_34
    move-exception v5

    :try_start_35
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v5

    .line 569
    :cond_37
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 570
    const/4 v5, 0x0

    :try_start_3b
    iput-boolean v5, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 572
    :cond_3d
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 573
    .restart local v2       #next:Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {p0, v1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 574
    move-object v1, v2

    .line 575
    if-nez v1, :cond_3d

    .line 576
    monitor-exit v6

    goto :goto_12

    .end local v2           #next:Landroid/view/Choreographer$CallbackRecord;
    :catchall_47
    move-exception v5

    monitor-exit v6
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_47

    throw v5
.end method

.method doFrame(JI)V
    .registers 16
    .parameter "frameTimeNanos"
    .parameter "frame"

    .prologue
    .line 497
    iget-object v9, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 498
    :try_start_3
    iget-boolean v8, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v8, :cond_9

    .line 499
    monitor-exit v9

    .line 544
    :goto_8
    return-void

    .line 502
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 503
    .local v6, startNanos:J
    sub-long v0, v6, p1

    .line 504
    .local v0, jitterNanos:J
    iget-wide v10, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    cmp-long v8, v0, v10

    if-ltz v8, :cond_4a

    .line 505
    iget-wide v10, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    div-long v4, v0, v10

    .line 506
    .local v4, skippedFrames:J
    sget v8, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v10, v8

    cmp-long v8, v4, v10

    if-ltz v8, :cond_44

    .line 507
    const-string v8, "Choreographer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " frames!  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "The application may be doing too much work on its main thread."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_44
    iget-wide v10, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    rem-long v2, v0, v10

    .line 518
    .local v2, lastFrameOffset:J
    sub-long p1, v6, v2

    .line 521
    .end local v2           #lastFrameOffset:J
    .end local v4           #skippedFrames:J
    :cond_4a
    iget-wide v10, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    cmp-long v8, p1, v10

    if-gez v8, :cond_58

    .line 526
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 527
    monitor-exit v9

    goto :goto_8

    .line 532
    .end local v0           #jitterNanos:J
    .end local v6           #startNanos:J
    :catchall_55
    move-exception v8

    monitor-exit v9
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v8

    .line 530
    .restart local v0       #jitterNanos:J
    .restart local v6       #startNanos:J
    :cond_58
    const/4 v8, 0x0

    :try_start_59
    iput-boolean v8, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 531
    iput-wide p1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 532
    monitor-exit v9
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_55

    .line 534
    const/4 v8, 0x0

    invoke-virtual {p0, v8, p1, p2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 535
    const/4 v8, 0x1

    invoke-virtual {p0, v8, p1, p2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 536
    const/4 v8, 0x2

    invoke-virtual {p0, v8, p1, p2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    goto :goto_8
.end method

.method doScheduleCallback(I)V
    .registers 6
    .parameter "callbackType"

    .prologue
    .line 589
    iget-object v3, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 590
    :try_start_3
    iget-boolean v2, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v2, :cond_18

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 592
    .local v0, now:J
    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 593
    invoke-direct {p0, v0, v1}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 596
    .end local v0           #now:J
    :cond_18
    monitor-exit v3

    .line 597
    return-void

    .line 596
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method doScheduleVsync()V
    .registers 3

    .prologue
    .line 581
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_3
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v0, :cond_a

    .line 583
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 585
    :cond_a
    monitor-exit v1

    .line 586
    return-void

    .line 585
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getFrameTime()J
    .registers 5

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .registers 4

    .prologue
    .line 455
    iget-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 456
    :try_start_3
    iget-boolean v0, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-nez v0, :cond_12

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :catchall_f
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 460
    :cond_12
    :try_start_12
    sget-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    :goto_18
    monitor-exit v2

    return-wide v0

    :cond_1a
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_f

    move-result-wide v0

    goto :goto_18
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 10
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"

    .prologue
    .line 277
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 278
    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .registers 8
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"
    .parameter "delayMillis"

    .prologue
    .line 296
    if-nez p2, :cond_a

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_a
    if-ltz p1, :cond_f

    const/4 v0, 0x2

    if-le p1, v0, :cond_17

    .line 300
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_17
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 304
    return-void
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 377
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 378
    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .registers 10
    .parameter "callback"
    .parameter "delayMillis"

    .prologue
    .line 393
    if-nez p1, :cond_a

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_a
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 399
    return-void
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 6
    .parameter "callbackType"
    .parameter "action"
    .parameter "token"

    .prologue
    .line 344
    if-ltz p1, :cond_5

    const/4 v0, 0x2

    if-le p1, v0, :cond_d

    .line 345
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 410
    if-nez p1, :cond_a

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_a
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 415
    return-void
.end method
