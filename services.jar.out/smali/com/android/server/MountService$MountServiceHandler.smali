.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "l"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 383
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Ljava/util/ArrayList;

    .line 384
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .parameter "msg"

    .prologue
    .line 388
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_198

    .line 507
    :cond_7
    :goto_7
    return-void

    .line 391
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/MountService$UnmountCallBack;

    .line 392
    .local v12, ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v13, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    if-eqz v13, :cond_25

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Ljava/util/ArrayList;

    iget-object v14, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 398
    :cond_25
    iget-object v13, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    if-eqz v13, :cond_32

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Ljava/util/ArrayList;

    iget-object v14, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_32
    iget-object v13, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    if-eqz v13, :cond_76

    iget-object v13, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4e

    iget-object v13, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/MountService;->access$400()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_76

    .line 403
    :cond_4e
    iget-object v13, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_68

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/MountService;->access$400()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 407
    :cond_68
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_7

    .line 410
    :cond_76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v13, v12}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Lcom/android/server/MountService$UnmountCallBack;)V

    goto :goto_7

    .line 415
    .end local v12           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_7e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 416
    .local v4, donePath:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 417
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/MountService;->access$400()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 418
    invoke-static {}, Lcom/android/server/MountService;->access$400()Ljava/lang/String;

    move-result-object v4

    .line 421
    :cond_a0
    const/4 v2, 0x0

    .line 428
    .local v2, bNeedMsgRetry:Z
    :goto_a1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 429
    .local v8, size:I
    new-array v9, v8, [I

    .line 430
    .local v9, sizeArr:[I
    const/4 v10, 0x0

    .line 432
    .local v10, sizeArrN:I
    const-string v13, "activity"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 434
    .local v1, ams:Lcom/android/server/am/ActivityManagerService;
    const/4 v5, 0x0

    .local v5, i:I
    move v11, v10

    .end local v10           #sizeArrN:I
    .local v11, sizeArrN:I
    :goto_b6
    if-ge v5, v8, :cond_108

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/MountService$UnmountCallBack;

    .line 436
    .restart local v12       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v6, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 437
    .local v6, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 439
    .local v3, done:Z
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d0

    move v10, v11

    .line 434
    .end local v11           #sizeArrN:I
    .restart local v10       #sizeArrN:I
    :goto_cc
    add-int/lit8 v5, v5, 0x1

    move v11, v10

    .end local v10           #sizeArrN:I
    .restart local v11       #sizeArrN:I
    goto :goto_b6

    .line 443
    :cond_d0
    iget-boolean v13, v12, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    if-nez v13, :cond_118

    .line 444
    const/4 v3, 0x1

    .line 459
    :cond_d5
    :goto_d5
    if-nez v3, :cond_13c

    iget v13, v12, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v14, 0x4

    if-ge v13, v14, :cond_13c

    .line 461
    const-string v13, "MountService"

    const-string v14, "Retrying to kill storage users again"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget v13, v12, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    .line 463
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v14}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x2

    iget-object v0, v12, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x1e

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 467
    const/4 v2, 0x1

    .line 480
    .end local v3           #done:Z
    .end local v6           #path:Ljava/lang/String;
    .end local v12           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_108
    add-int/lit8 v5, v11, -0x1

    :goto_10a
    if-ltz v5, :cond_166

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    aget v14, v9, v5

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 480
    add-int/lit8 v5, v5, -0x1

    goto :goto_10a

    .line 446
    .restart local v3       #done:Z
    .restart local v6       #path:Ljava/lang/String;
    .restart local v12       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :cond_118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v13, v6}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v7

    .line 447
    .local v7, pids:[I
    if-eqz v7, :cond_125

    array-length v13, v7

    if-nez v13, :cond_127

    .line 448
    :cond_125
    const/4 v3, 0x1

    goto :goto_d5

    .line 451
    :cond_127
    const-string v13, "unmount media"

    const/4 v14, 0x1

    invoke-virtual {v1, v7, v13, v14}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v13, v6}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v7

    .line 454
    if-eqz v7, :cond_13a

    array-length v13, v7

    if-nez v13, :cond_d5

    .line 455
    :cond_13a
    const/4 v3, 0x1

    goto :goto_d5

    .line 470
    .end local v7           #pids:[I
    :cond_13c
    iget v13, v12, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v14, 0x4

    if-lt v13, v14, :cond_148

    .line 471
    const-string v13, "MountService"

    const-string v14, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_148
    add-int/lit8 v10, v11, 0x1

    .end local v11           #sizeArrN:I
    .restart local v10       #sizeArrN:I
    aput v5, v9, v11

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-static {v14}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_cc

    .line 484
    .end local v3           #done:Z
    .end local v6           #path:Ljava/lang/String;
    .end local v10           #sizeArrN:I
    .end local v12           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    .restart local v11       #sizeArrN:I
    :cond_166
    if-nez v2, :cond_7

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 489
    invoke-static {}, Lcom/android/server/MountService;->access$400()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 491
    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v4

    .line 492
    goto/16 :goto_a1

    .line 500
    .end local v1           #ams:Lcom/android/server/am/ActivityManagerService;
    .end local v2           #bNeedMsgRetry:Z
    .end local v4           #donePath:Ljava/lang/String;
    .end local v5           #i:I
    .end local v8           #size:I
    .end local v9           #sizeArr:[I
    .end local v11           #sizeArrN:I
    :pswitch_18d
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/MountService$UnmountCallBack;

    .line 503
    .restart local v12       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual {v12}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_7

    .line 388
    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7e
        :pswitch_18d
    .end packed-switch
.end method
