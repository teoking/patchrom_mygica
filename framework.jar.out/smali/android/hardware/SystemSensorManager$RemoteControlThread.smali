.class Landroid/hardware/SystemSensorManager$RemoteControlThread;
.super Ljava/lang/Thread;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteControlThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SystemSensorManager;)V
    .locals 1
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    .line 489
    const-string v0, "RemoteControlSensorReader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 490
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v18, v0

    #calls: Landroid/hardware/SystemSensorManager;->connect()Z
    invoke-static/range {v18 .. v18}, Landroid/hardware/SystemSensorManager;->access$300(Landroid/hardware/SystemSensorManager;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 493
    const-string v18, "SensorManager"

    const-string v19, "RC, connect to remote_control_sensor socket ok"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 499
    .local v6, data:[B
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 500
    .local v4, bytesLeft:I
    const/4 v5, 0x0

    .line 501
    .local v5, bytesRead:I
    const/4 v10, 0x0

    .line 503
    .local v10, inStream:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v18, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;
    invoke-static/range {v18 .. v18}, Landroid/hardware/SystemSensorManager;->access$400(Landroid/hardware/SystemSensorManager;)Landroid/net/LocalSocket;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v18, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;
    invoke-static/range {v18 .. v18}, Landroid/hardware/SystemSensorManager;->access$500(Landroid/hardware/SystemSensorManager;)Ljava/io/InputStream;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v18, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;
    invoke-static/range {v18 .. v18}, Landroid/hardware/SystemSensorManager;->access$600(Landroid/hardware/SystemSensorManager;)Ljava/io/OutputStream;

    move-result-object v18

    if-nez v18, :cond_3

    .line 583
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v18, v0

    #calls: Landroid/hardware/SystemSensorManager;->disconnect()V
    invoke-static/range {v18 .. v18}, Landroid/hardware/SystemSensorManager;->access$800(Landroid/hardware/SystemSensorManager;)V

    .line 584
    return-void

    .line 508
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v18, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;
    invoke-static/range {v18 .. v18}, Landroid/hardware/SystemSensorManager;->access$500(Landroid/hardware/SystemSensorManager;)Ljava/io/InputStream;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 509
    const-string v18, "SensorManager"

    const-string v19, "RC, read data length fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 512
    :catch_0
    move-exception v8

    .line 513
    .local v8, ex:Ljava/io/IOException;
    const-string v18, "SensorManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RC, read length exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 517
    .end local v8           #ex:Ljava/io/IOException;
    :cond_4
    const/4 v7, 0x0

    .line 518
    .local v7, dataLen:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v9, v0, :cond_5

    .line 519
    aget-byte v18, v6, v9

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    mul-int/lit8 v19, v9, 0x8

    shl-int v18, v18, v19

    add-int v7, v7, v18

    .line 518
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 524
    :cond_5
    move v4, v7

    .line 525
    new-array v10, v7, [B

    .line 526
    :goto_3
    if-lez v4, :cond_6

    .line 528
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v18, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;
    invoke-static/range {v18 .. v18}, Landroid/hardware/SystemSensorManager;->access$500(Landroid/hardware/SystemSensorManager;)Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v5, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 529
    sub-int/2addr v4, v5

    goto :goto_3

    .line 530
    :catch_1
    move-exception v8

    .line 531
    .restart local v8       #ex:Ljava/io/IOException;
    const-string v18, "SensorManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RC, read data exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v8           #ex:Ljava/io/IOException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/SystemSensorManager$RemoteControlThread;->this$0:Landroid/hardware/SystemSensorManager;

    move-object/from16 v18, v0

    #getter for: Landroid/hardware/SystemSensorManager;->mRegisterListener:Z
    invoke-static/range {v18 .. v18}, Landroid/hardware/SystemSensorManager;->access$700(Landroid/hardware/SystemSensorManager;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 537
    const-string v18, "SensorManager"

    const-string v19, "RC, application not registerListener!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 541
    :cond_7
    const/16 v18, 0x4

    const/16 v19, 0x0

    aget-byte v19, v10, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x12

    move/from16 v0, v18

    if-lt v7, v0, :cond_1

    .line 544
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 545
    .local v17, values:[F
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v15, v0, [J

    .line 547
    .local v15, timestamp:[J
    const/16 v18, 0x1

    aget-byte v16, v10, v18

    .line 548
    .local v16, type:B
    const/16 v18, 0x2

    aget-byte v18, v10, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x18

    const/16 v19, 0x3

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    const/16 v19, 0x4

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    const/16 v19, 0x5

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    .line 549
    .local v11, intBits:I
    const/16 v18, 0x0

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v19

    aput v19, v17, v18

    .line 550
    const/16 v18, 0x6

    aget-byte v18, v10, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x18

    const/16 v19, 0x7

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    const/16 v19, 0x8

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    const/16 v19, 0x9

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    .line 551
    const/16 v18, 0x1

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v19

    aput v19, v17, v18

    .line 552
    const/16 v18, 0xa

    aget-byte v18, v10, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x18

    const/16 v19, 0xb

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    const/16 v19, 0xc

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    const/16 v19, 0xd

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    .line 553
    const/16 v18, 0x2

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v19

    aput v19, v17, v18

    .line 554
    const/16 v18, 0xe

    aget-byte v18, v10, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x18

    const/16 v19, 0xf

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    const/16 v19, 0x10

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    const/16 v19, 0x11

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v3, v18, v19

    .line 558
    .local v3, accuracy:I
    const/4 v13, 0x0

    .line 559
    .local v13, sensorObject:Landroid/hardware/Sensor;
    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 560
    new-instance v13, Landroid/hardware/Sensor;

    .end local v13           #sensorObject:Landroid/hardware/Sensor;
    move/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/hardware/Sensor;-><init>(I)V

    .line 568
    .restart local v13       #sensorObject:Landroid/hardware/Sensor;
    :cond_8
    :goto_4
    const/16 v18, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    aput-wide v19, v15, v18

    .line 569
    sget-object v19, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v19

    .line 570
    if-eqz v13, :cond_b

    .line 571
    :try_start_2
    sget-object v18, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 572
    .local v14, size:I
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v14, :cond_b

    .line 573
    sget-object v18, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 574
    .local v12, listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v12, v13}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 575
    const-string v18, "SensorManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RC, listen size:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",get listener:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    move-object/from16 v0, v17

    invoke-virtual {v12, v13, v0, v15, v3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->onSensorChangedLocked(Landroid/hardware/Sensor;[F[JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 563
    .end local v12           #listener:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v14           #size:I
    :cond_a
    const/16 v18, 0x4

    move/from16 v0, v18

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 564
    new-instance v13, Landroid/hardware/Sensor;

    .end local v13           #sensorObject:Landroid/hardware/Sensor;
    move/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/hardware/Sensor;-><init>(I)V

    .restart local v13       #sensorObject:Landroid/hardware/Sensor;
    goto :goto_4

    .line 580
    :cond_b
    :try_start_3
    monitor-exit v19

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v18
.end method
