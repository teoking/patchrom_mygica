.class Lcom/android/server/ConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 2497
    iput-object p1, p0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2498
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2499
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .parameter "msg"

    .prologue
    .line 2504
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    sparse-switch v15, :sswitch_data_1ee

    .line 2628
    :cond_7
    :goto_7
    return-void

    .line 2506
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkInfo;

    .line 2507
    .local v5, info:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    .line 2508
    .local v13, type:I
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v12

    .line 2510
    .local v12, state:Landroid/net/NetworkInfo$State;
    sget-object v15, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v12, v15, :cond_1e

    sget-object v15, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v12, v15, :cond_56

    .line 2512
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ConnectivityChange for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 2524
    :cond_56
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    and-int/lit8 v15, v15, 0xf

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v16

    and-int/lit8 v16, v16, 0x3f

    shl-int/lit8 v16, v16, 0x4

    or-int v15, v15, v16

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v16

    shl-int/lit8 v16, v16, 0xa

    or-int v4, v15, v16

    .line 2527
    .local v4, eventLogParam:I
    const v15, 0xc364

    invoke-static {v15, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2530
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    sget-object v16, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8b

    .line 2532
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v5}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 2533
    :cond_8b
    sget-object v15, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v12, v15, :cond_98

    .line 2534
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v5}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 2535
    :cond_98
    sget-object v15, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v12, v15, :cond_a5

    .line 2543
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v5}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 2544
    :cond_a5
    sget-object v15, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v12, v15, :cond_7

    .line 2545
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v5}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 2549
    .end local v4           #eventLogParam:I
    .end local v5           #info:Landroid/net/NetworkInfo;
    .end local v12           #state:Landroid/net/NetworkInfo$State;
    .end local v13           #type:I
    :sswitch_b2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkInfo;

    .line 2553
    .restart local v5       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    .line 2556
    .end local v5           #info:Landroid/net/NetworkInfo;
    :sswitch_c7
    const/4 v1, 0x0

    .line 2557
    .local v1, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2558
    :try_start_cf
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)I

    move-result v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_102

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v15

    if-eqz v15, :cond_102

    .line 2560
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v1

    .line 2563
    :cond_102
    monitor-exit v16
    :try_end_103
    .catchall {:try_start_cf .. :try_end_103} :catchall_129

    .line 2564
    if-eqz v1, :cond_7

    .line 2565
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NetTransition Wakelock for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " released by timeout"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2563
    :catchall_129
    move-exception v15

    :try_start_12a
    monitor-exit v16
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_129

    throw v15

    .line 2569
    .end local v1           #causedBy:Ljava/lang/String;
    :sswitch_12c
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 2570
    .local v14, u:Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v14}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_7

    .line 2574
    .end local v14           #u:Lcom/android/server/ConnectivityService$FeatureUser;
    :sswitch_137
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2575
    .local v8, netType:I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    .line 2576
    .local v2, condition:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v8, v2}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_7

    .line 2581
    .end local v2           #condition:I
    .end local v8           #netType:I
    :sswitch_148
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 2582
    .restart local v8       #netType:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 2583
    .local v11, sequence:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v8, v11}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_7

    .line 2588
    .end local v8           #netType:I
    .end local v11           #sequence:I
    :sswitch_159
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 2589
    .local v10, preference:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v10}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_7

    .line 2594
    .end local v10           #preference:I
    :sswitch_166
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_17a

    const/4 v3, 0x1

    .line 2595
    .local v3, enabled:Z
    :goto_171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v3}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_7

    .line 2594
    .end local v3           #enabled:Z
    :cond_17a
    const/4 v3, 0x0

    goto :goto_171

    .line 2600
    :sswitch_17c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    .line 2605
    :sswitch_185
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1a1

    const/4 v7, 0x1

    .line 2606
    .local v7, met:Z
    :goto_190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    .line 2605
    .end local v7           #met:Z
    :cond_1a1
    const/4 v7, 0x0

    goto :goto_190

    .line 2611
    :sswitch_1a3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 2612
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_7

    .line 2618
    :sswitch_1c4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    .line 2619
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v6}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 2623
    .end local v6           #intent:Landroid/content/Intent;
    :sswitch_1d3
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 2624
    .local v9, networkType:I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1eb

    const/4 v3, 0x1

    .line 2625
    .restart local v3       #enabled:Z
    :goto_1e2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$MyHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v15, v9, v3}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    .line 2624
    .end local v3           #enabled:Z
    :cond_1eb
    const/4 v3, 0x0

    goto :goto_1e2

    .line 2504
    nop

    :sswitch_data_1ee
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_b2
        0x65 -> :sswitch_12c
        0x67 -> :sswitch_159
        0x68 -> :sswitch_137
        0x69 -> :sswitch_148
        0x6b -> :sswitch_166
        0x6c -> :sswitch_c7
        0x6d -> :sswitch_17c
        0x6e -> :sswitch_185
        0x6f -> :sswitch_1a3
        0x70 -> :sswitch_1c4
        0x71 -> :sswitch_1d3
    .end sparse-switch
.end method
