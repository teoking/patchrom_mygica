.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 478
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 479
    return-void
.end method

.method private connectToService()Z
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 457
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    .local v0, service:Landroid/content/Intent;
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 459
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 461
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 462
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 466
    :goto_27
    return v1

    .line 465
    :cond_28
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v2

    .line 466
    goto :goto_27
.end method

.method private disconnectService()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$302(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 471
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 472
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 473
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 474
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 475
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 40
    .parameter "msg"

    .prologue
    .line 490
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_532

    .line 818
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 493
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 494
    .local v25, params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 499
    .local v21, idx:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v2, :cond_3b

    .line 502
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 503
    const-string v2, "PackageManager"

    const-string v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_7

    .line 509
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 512
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 515
    if-nez v21, :cond_7

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 523
    .end local v21           #idx:I
    .end local v25           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_53
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_66

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->access$302(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 526
    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    if-nez v2, :cond_98

    .line 528
    const-string v2, "PackageManager"

    const-string v3, "Cannot bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_7f
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 531
    .restart local v25       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_7f

    .line 533
    .end local v25           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_8f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    .line 534
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_fb

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 536
    .restart local v25       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v25, :cond_7

    .line 537
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c7

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 546
    :cond_c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_ef

    .line 547
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_7

    .line 550
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 551
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v33

    .line 554
    .local v33, ubmsg:Landroid/os/Message;
    const-wide/16 v2, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 562
    .end local v33           #ubmsg:Landroid/os/Message;
    :cond_ef
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 568
    .end local v25           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_fb
    const-string v2, "PackageManager"

    const-string v3, "Empty queue"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 574
    :pswitch_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 575
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_117

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 578
    :cond_117
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v2

    if-nez v2, :cond_7

    .line 579
    const-string v2, "PackageManager"

    const-string v3, "Failed to bind to media container service"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_12c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 582
    .restart local v25       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_12c

    .line 584
    .end local v25           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_13c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    .line 593
    .end local v20           #i$:Ljava/util/Iterator;
    :pswitch_145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_166

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_166

    .line 594
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v2, :cond_7

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_7

    .line 599
    :cond_166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 610
    :pswitch_17c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7

    .line 616
    :pswitch_186
    const/16 v31, 0x0

    .line 618
    .local v31, size:I
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 620
    :try_start_193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    if-nez v2, :cond_1a1

    .line 621
    monitor-exit v3

    goto/16 :goto_7

    .line 644
    :catchall_19e
    move-exception v2

    monitor-exit v3
    :try_end_1a0
    .catchall {:try_start_193 .. :try_end_1a0} :catchall_19e

    throw v2

    .line 623
    :cond_1a1
    :try_start_1a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v31

    .line 624
    if-gtz v31, :cond_1b0

    .line 626
    monitor-exit v3

    goto/16 :goto_7

    .line 628
    :cond_1b0
    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 629
    .local v24, packages:[Ljava/lang/String;
    move/from16 v0, v31

    new-array v13, v0, [Ljava/util/ArrayList;

    .line 630
    .local v13, components:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v34, v0

    .line 632
    .local v34, uids:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .line 633
    .local v22, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/16 v19, 0x0

    .line 634
    .local v19, i:I
    :goto_1d0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_211

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_211

    .line 635
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 636
    .local v18, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v24, v19

    .line 637
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, v13, v19

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/PackageSetting;

    .line 639
    .local v26, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v26, :cond_20f

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    :goto_20a
    aput v2, v34, v19

    .line 640
    add-int/lit8 v19, v19, 0x1

    .line 641
    goto :goto_1d0

    .line 639
    :cond_20f
    const/4 v2, -0x1

    goto :goto_20a

    .line 642
    .end local v18           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v26           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_211
    move/from16 v31, v19

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 644
    monitor-exit v3
    :try_end_21d
    .catchall {:try_start_1a1 .. :try_end_21d} :catchall_19e

    .line 646
    const/16 v19, 0x0

    :goto_21f
    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_236

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v3, v24, v19

    const/4 v5, 0x1

    aget-object v6, v13, v19

    aget v7, v34, v19

    invoke-static {v2, v3, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 646
    add-int/lit8 v19, v19, 0x1

    goto :goto_21f

    .line 649
    :cond_236
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    .line 653
    .end local v13           #components:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #i:I
    .end local v22           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v24           #packages:[Ljava/lang/String;
    .end local v31           #size:I
    .end local v34           #uids:[I
    :pswitch_23d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 654
    .local v23, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 656
    :try_start_250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26d

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_26d
    monitor-exit v3
    :try_end_26e
    .catchall {:try_start_250 .. :try_end_26e} :catchall_27c

    .line 660
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_7

    .line 659
    :catchall_27c
    move-exception v2

    :try_start_27d
    monitor-exit v3
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_27c

    throw v2

    .line 665
    .end local v23           #packageName:Ljava/lang/String;
    :pswitch_27f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 666
    .local v14, data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 667
    const/4 v15, 0x0

    .line 669
    .local v15, deleteOld:Z
    if-eqz v14, :cond_350

    .line 670
    iget-object v11, v14, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 671
    .local v11, args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v0, v14, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v28, v0

    .line 673
    .local v28, res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_312

    .line 674
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 675
    new-instance v4, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v4, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 676
    .local v4, extras:Landroid/os/Bundle;
    const-string v2, "android.intent.extra.UID"

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v2, :cond_34a

    const/16 v35, 0x1

    .line 678
    .local v35, update:Z
    :goto_2ce
    if-eqz v35, :cond_2d6

    .line 679
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 681
    :cond_2d6
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 684
    if-eqz v35, :cond_309

    .line 685
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 688
    const-string v5, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;I)V

    .line 693
    :cond_309
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v2, :cond_312

    .line 695
    const/4 v15, 0x1

    .line 699
    .end local v4           #extras:Landroid/os/Bundle;
    .end local v35           #update:Z
    :cond_312
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 701
    if-eqz v15, :cond_32d

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 703
    :try_start_322
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 704
    monitor-exit v3
    :try_end_32d
    .catchall {:try_start_322 .. :try_end_32d} :catchall_34d

    .line 706
    :cond_32d
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v2, :cond_7

    .line 708
    :try_start_331
    iget-object v2, v11, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-interface {v2, v3, v5}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_33e
    .catch Landroid/os/RemoteException; {:try_start_331 .. :try_end_33e} :catch_340

    goto/16 :goto_7

    .line 709
    :catch_340
    move-exception v17

    .line 710
    .local v17, e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 677
    .end local v17           #e:Landroid/os/RemoteException;
    .restart local v4       #extras:Landroid/os/Bundle;
    :cond_34a
    const/16 v35, 0x0

    goto :goto_2ce

    .line 704
    .end local v4           #extras:Landroid/os/Bundle;
    :catchall_34d
    move-exception v2

    :try_start_34e
    monitor-exit v3
    :try_end_34f
    .catchall {:try_start_34e .. :try_end_34f} :catchall_34d

    throw v2

    .line 714
    .end local v11           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v28           #res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_350
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bogus post-install token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 719
    .end local v14           #data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v15           #deleteOld:Z
    :pswitch_36e
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b1

    const/16 v27, 0x1

    .line 720
    .local v27, reportStatus:Z
    :goto_377
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b4

    const/16 v16, 0x1

    .line 722
    .local v16, doGc:Z
    :goto_380
    if-eqz v16, :cond_389

    .line 724
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 726
    :cond_389
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_39c

    .line 728
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/util/Set;

    .line 731
    .local v12, args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2, v12}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .line 733
    .end local v12           #args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_39c
    if-eqz v27, :cond_7

    .line 736
    :try_start_39e
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_3a5
    .catch Landroid/os/RemoteException; {:try_start_39e .. :try_end_3a5} :catch_3a7

    goto/16 :goto_7

    .line 737
    :catch_3a7
    move-exception v17

    .line 738
    .restart local v17       #e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "MountService not running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 719
    .end local v16           #doGc:Z
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v27           #reportStatus:Z
    :cond_3b1
    const/16 v27, 0x0

    goto :goto_377

    .line 720
    .restart local v27       #reportStatus:Z
    :cond_3b4
    const/16 v16, 0x0

    goto :goto_380

    .line 743
    .end local v27           #reportStatus:Z
    :pswitch_3b7
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 745
    const/16 v2, 0xd

    :try_start_3c4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 746
    const/16 v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 749
    monitor-exit v3
    :try_end_3e5
    .catchall {:try_start_3c4 .. :try_end_3e5} :catchall_3ec

    .line 750
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    .line 749
    :catchall_3ec
    move-exception v2

    :try_start_3ed
    monitor-exit v3
    :try_end_3ee
    .catchall {:try_start_3ed .. :try_end_3ee} :catchall_3ec

    throw v2

    .line 753
    :pswitch_3ef
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 755
    const/16 v2, 0xe

    :try_start_3fc
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_40d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 757
    .local v36, userId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_40d

    .line 760
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v36           #userId:I
    :catchall_429
    move-exception v2

    monitor-exit v3
    :try_end_42b
    .catchall {:try_start_3fc .. :try_end_42b} :catchall_429

    throw v2

    .line 759
    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_42c
    :try_start_42c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 760
    monitor-exit v3
    :try_end_438
    .catchall {:try_start_42c .. :try_end_438} :catchall_429

    .line 761
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    .line 764
    .end local v20           #i$:Ljava/util/Iterator;
    :pswitch_43f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    .line 765
    .local v37, verificationId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/pm/PackageVerificationState;

    .line 767
    .local v32, state:Lcom/android/server/pm/PackageVerificationState;
    if-eqz v32, :cond_7

    .line 768
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v11

    .line 769
    .restart local v11       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verification timed out for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v11, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 772
    const/16 v30, -0x15

    .line 773
    .local v30, ret:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v30

    invoke-static {v2, v11, v0}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 781
    .end local v11           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v30           #ret:I
    .end local v32           #state:Lcom/android/server/pm/PackageVerificationState;
    .end local v37           #verificationId:I
    :pswitch_499
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v37, v0

    .line 783
    .restart local v37       #verificationId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/pm/PackageVerificationState;

    .line 784
    .restart local v32       #state:Lcom/android/server/pm/PackageVerificationState;
    if-nez v32, :cond_4d1

    .line 785
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid verification token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " received"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 789
    :cond_4d1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/server/pm/PackageVerificationResponse;

    .line 791
    .local v29, response:Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v29

    iget v2, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 793
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 796
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v11

    .line 799
    .restart local v11       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v2

    if-eqz v2, :cond_52e

    .line 800
    const/16 v30, -0x6e

    .line 802
    .restart local v30       #ret:I
    :try_start_503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_50f
    .catch Landroid/os/RemoteException; {:try_start_503 .. :try_end_50f} :catch_525

    move-result v30

    .line 810
    :goto_510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v30

    invoke-static {v2, v11, v0}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 803
    :catch_525
    move-exception v17

    .line 804
    .restart local v17       #e:Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Could not contact the ContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_510

    .line 807
    .end local v17           #e:Landroid/os/RemoteException;
    .end local v30           #ret:I
    :cond_52e
    const/16 v30, -0x16

    .restart local v30       #ret:I
    goto :goto_510

    .line 490
    nop

    :pswitch_data_532
    .packed-switch 0x1
        :pswitch_186
        :pswitch_7
        :pswitch_53
        :pswitch_7
        :pswitch_8
        :pswitch_145
        :pswitch_23d
        :pswitch_7
        :pswitch_27f
        :pswitch_104
        :pswitch_17c
        :pswitch_36e
        :pswitch_3b7
        :pswitch_3ef
        :pswitch_499
        :pswitch_43f
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/16 v1, 0xa

    .line 483
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 485
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 487
    return-void

    .line 485
    :catchall_9
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
