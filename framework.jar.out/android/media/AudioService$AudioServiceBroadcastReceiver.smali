.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 3397
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3397
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method private findUSBStream(Ljava/lang/String;I)Z
    .registers 16
    .parameter "string"
    .parameter "card"

    .prologue
    .line 3399
    const/4 v7, 0x0

    .line 3400
    .local v7, len:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/asound/card"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/stream0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3401
    .local v0, USB_STREAM_PATH:Ljava/lang/String;
    const-string v10, "AudioService"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3404
    .local v4, fileUsbAudio:Ljava/io/File;
    const/4 v6, 0x0

    .local v6, i:I
    const/4 v9, 0x5

    .line 3407
    .local v9, waitSec:I
    :goto_26
    :try_start_26
    const-string v10, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "********Try fileUsbAudio times = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_46} :catch_82
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_46} :catch_8b

    .line 3412
    :goto_46
    :try_start_46
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_94

    .line 3419
    :goto_4c
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3420
    .local v5, fr:Ljava/io/FileReader;
    const/16 v10, 0x400

    new-array v1, v10, [C
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_55} :catch_8b

    .line 3422
    .local v1, data:[C
    :try_start_55
    invoke-virtual {v5, v1}, Ljava/io/FileReader;->read([C)I
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_8b

    move-result v7

    .line 3426
    :goto_59
    :try_start_59
    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V

    .line 3427
    .local v8, usbStream:Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_62} :catch_8b

    move-result v7

    .line 3429
    :try_start_63
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_66} :catch_8b

    .line 3433
    :goto_66
    :try_start_66
    const-string v10, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "len::"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    .end local v1           #data:[C
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v8           #usbStream:Ljava/lang/String;
    :goto_7e
    if-ltz v7, :cond_cc

    .line 3438
    const/4 v10, 0x1

    .line 3439
    :goto_81
    return v10

    .line 3409
    :catch_82
    move-exception v2

    .line 3410
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v10, "AudioService"

    const-string v11, "audio source file does not exist"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_8a} :catch_8b

    goto :goto_46

    .line 3434
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catch_8b
    move-exception v3

    .line 3435
    .local v3, e1:Ljava/io/FileNotFoundException;
    const-string v10, "AudioServiceBroadcastReceiver"

    const-string v11, "create FileReader failed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 3413
    .end local v3           #e1:Ljava/io/FileNotFoundException;
    :cond_94
    if-lt v6, v9, :cond_b6

    .line 3414
    :try_start_96
    const-string v10, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ERROR!!, Can\'t get usbStream file after "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "s!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 3417
    :cond_b6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_26

    .line 3423
    .restart local v1       #data:[C
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_ba
    move-exception v3

    .line 3424
    .local v3, e1:Ljava/io/IOException;
    const-string v10, "AudioServiceBroadcastReceiver"

    const-string v11, "Not get /proc/asound/cardX/stream0"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 3430
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v8       #usbStream:Ljava/lang/String;
    :catch_c3
    move-exception v3

    .line 3431
    .restart local v3       #e1:Ljava/io/IOException;
    const-string v10, "AudioServiceBroadcastReceiver"

    const-string v11, "close fileRead ERROR!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_cb} :catch_8b

    goto :goto_66

    .line 3439
    .end local v1           #data:[C
    .end local v3           #e1:Ljava/io/IOException;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v8           #usbStream:Ljava/lang/String;
    :cond_cc
    const/4 v10, 0x0

    goto :goto_81
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 30
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3444
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 3448
    .local v9, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3449
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 3452
    .local v21, dockState:I
    packed-switch v21, :pswitch_data_3ba

    .line 3467
    const/16 v18, 0x0

    .line 3469
    .local v18, config:I
    :goto_1a
    const/4 v2, 0x3

    move/from16 v0, v18

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3625
    .end local v18           #config:I
    .end local v21           #dockState:I
    :cond_20
    :goto_20
    return-void

    .line 3454
    .restart local v21       #dockState:I
    :pswitch_21
    const/16 v18, 0x7

    .line 3455
    .restart local v18       #config:I
    goto :goto_1a

    .line 3457
    .end local v18           #config:I
    :pswitch_24
    const/16 v18, 0x6

    .line 3458
    .restart local v18       #config:I
    goto :goto_1a

    .line 3460
    .end local v18           #config:I
    :pswitch_27
    const/16 v18, 0x8

    .line 3461
    .restart local v18       #config:I
    goto :goto_1a

    .line 3463
    .end local v18           #config:I
    :pswitch_2a
    const/16 v18, 0x9

    .line 3464
    .restart local v18       #config:I
    goto :goto_1a

    .line 3470
    .end local v18           #config:I
    .end local v21           #dockState:I
    :cond_2d
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 3471
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 3473
    .local v26, state:I
    const/16 v20, 0x10

    .line 3474
    .local v20, device:I
    const/4 v11, 0x0

    .line 3476
    .local v11, address:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/BluetoothDevice;

    .line 3477
    .local v16, btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v16, :cond_20

    .line 3481
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 3482
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v15

    .line 3483
    .local v15, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v15, :cond_5e

    .line 3484
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_3c6

    .line 3495
    :cond_5e
    :goto_5e
    invoke-static {v11}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 3496
    const-string v11, ""

    .line 3499
    :cond_66
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_9a

    const/16 v19, 0x1

    .line 3500
    .local v19, connected:Z
    :goto_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v2, v0, v1, v11}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3501
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 3502
    if-eqz v19, :cond_9d

    .line 3503
    :try_start_86
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3508
    :goto_8f
    monitor-exit v3

    goto :goto_20

    :catchall_91
    move-exception v2

    monitor-exit v3
    :try_end_93
    .catchall {:try_start_86 .. :try_end_93} :catchall_91

    throw v2

    .line 3487
    .end local v19           #connected:Z
    :sswitch_94
    const/16 v20, 0x20

    .line 3488
    goto :goto_5e

    .line 3490
    :sswitch_97
    const/16 v20, 0x40

    goto :goto_5e

    .line 3499
    :cond_9a
    const/16 v19, 0x0

    goto :goto_6d

    .line 3505
    .restart local v19       #connected:Z
    :cond_9d
    :try_start_9d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 3506
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)V
    :try_end_ac
    .catchall {:try_start_9d .. :try_end_ac} :catchall_91

    goto :goto_8f

    .line 3510
    .end local v11           #address:Ljava/lang/String;
    .end local v15           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v16           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v19           #connected:Z
    .end local v20           #device:I
    .end local v26           #state:I
    :cond_ad
    const-string v2, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    const-string v2, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ea

    .line 3512
    :cond_bd
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 3513
    .restart local v26       #state:I
    const-string v2, "card"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 3514
    .local v12, alsaCard:I
    const-string v2, "device"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 3515
    .local v13, alsaDevice:I
    const/4 v2, -0x1

    if-ne v12, v2, :cond_176

    const/4 v2, -0x1

    if-ne v13, v2, :cond_176

    const-string v24, ""

    .line 3517
    .local v24, params:Ljava/lang/String;
    :goto_e1
    const-string v2, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    const/16 v20, 0x2000

    .line 3519
    .restart local v20       #device:I
    :goto_eb
    const-string v3, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast Receiver: Got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    const-string v2, "ACTION_USB_AUDIO_ACCESSORY_PLUG"

    :goto_102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", card: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", device: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    const-string v2, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 3524
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_1a1

    .line 3525
    const-string v2, "Playback"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->findUSBStream(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 3526
    const/16 v20, 0x4000

    .line 3527
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_19d

    const/4 v2, 0x1

    :goto_150
    move/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v3, v2, v0, v1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;ZILjava/lang/String;)Z

    .line 3529
    :cond_157
    const-string v2, "Capture"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->findUSBStream(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3530
    const/high16 v20, 0x100

    .line 3531
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_19f

    const/4 v2, 0x1

    :goto_16d
    move/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v3, v2, v0, v1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;ZILjava/lang/String;)Z

    goto/16 :goto_20

    .line 3515
    .end local v20           #device:I
    .end local v24           #params:Ljava/lang/String;
    :cond_176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_e1

    .line 3517
    .restart local v24       #params:Ljava/lang/String;
    :cond_195
    const/16 v20, 0x0

    goto/16 :goto_eb

    .line 3519
    .restart local v20       #device:I
    :cond_199
    const-string v2, "ACTION_USB_AUDIO_DEVICE_PLUG"

    goto/16 :goto_102

    .line 3527
    :cond_19d
    const/4 v2, 0x0

    goto :goto_150

    .line 3531
    :cond_19f
    const/4 v2, 0x0

    goto :goto_16d

    .line 3534
    :cond_1a1
    const/16 v20, 0x4000

    .line 3535
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_1c9

    const/4 v2, 0x1

    :goto_1ad
    move/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v3, v2, v0, v1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;ZILjava/lang/String;)Z

    .line 3536
    const/high16 v20, 0x100

    .line 3537
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_1cb

    const/4 v2, 0x1

    :goto_1c0
    move/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v3, v2, v0, v1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;ZILjava/lang/String;)Z

    goto/16 :goto_20

    .line 3535
    :cond_1c9
    const/4 v2, 0x0

    goto :goto_1ad

    .line 3537
    :cond_1cb
    const/4 v2, 0x0

    goto :goto_1c0

    .line 3539
    :cond_1cd
    const-string v2, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3540
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_1e8

    const/4 v2, 0x1

    :goto_1df
    move/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v3, v2, v0, v1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;ZILjava/lang/String;)Z

    goto/16 :goto_20

    :cond_1e8
    const/4 v2, 0x0

    goto :goto_1df

    .line 3542
    .end local v12           #alsaCard:I
    .end local v13           #alsaDevice:I
    .end local v20           #device:I
    .end local v24           #params:Ljava/lang/String;
    .end local v26           #state:I
    :cond_1ea
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d6

    .line 3543
    const/4 v14, 0x0

    .line 3544
    .local v14, broadcast:Z
    const/16 v25, -0x1

    .line 3545
    .local v25, scoAudioState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 3546
    :try_start_1fe
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 3548
    .local v17, btState:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_237

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_236

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_236

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_237

    .line 3552
    :cond_236
    const/4 v14, 0x1

    .line 3554
    :cond_237
    packed-switch v17, :pswitch_data_3d4

    .line 3576
    :cond_23a
    :goto_23a
    const/4 v14, 0x0

    .line 3579
    :cond_23b
    :goto_23b
    monitor-exit v3
    :try_end_23c
    .catchall {:try_start_1fe .. :try_end_23c} :catchall_294

    .line 3580
    if-eqz v14, :cond_20

    .line 3581
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move/from16 v0, v25

    invoke-static {v2, v0}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;I)V

    .line 3584
    new-instance v22, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3585
    .local v22, newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3586
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_20

    .line 3556
    .end local v22           #newIntent:Landroid/content/Intent;
    :pswitch_268
    const/16 v25, 0x1

    .line 3557
    :try_start_26a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_23b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_23b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_23b

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    goto :goto_23b

    .line 3579
    .end local v17           #btState:I
    :catchall_294
    move-exception v2

    monitor-exit v3
    :try_end_296
    .catchall {:try_start_26a .. :try_end_296} :catchall_294

    throw v2

    .line 3564
    .restart local v17       #btState:I
    :pswitch_297
    const/16 v25, 0x0

    .line 3565
    :try_start_299
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    .line 3566
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_23b

    .line 3569
    :pswitch_2ab
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_23a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_23a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_23a

    .line 3572
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I
    :try_end_2d4
    .catchall {:try_start_299 .. :try_end_2d4} :catchall_294

    goto/16 :goto_23a

    .line 3588
    .end local v14           #broadcast:Z
    .end local v17           #btState:I
    .end local v25           #scoAudioState:I
    :cond_2d6
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35f

    .line 3589
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7002(Landroid/media/AudioService;Z)Z

    .line 3590
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3593
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "keyguard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-static {v3, v2}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 3595
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7202(Landroid/media/AudioService;I)I

    .line 3596
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$5900(Landroid/media/AudioService;)V

    .line 3597
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Z

    .line 3600
    new-instance v22, Landroid/content/Intent;

    const-string v2, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3601
    .restart local v22       #newIntent:Landroid/content/Intent;
    const-string v2, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3603
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3605
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 3606
    .local v10, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v10, :cond_20

    .line 3607
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v10, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_20

    .line 3610
    .end local v10           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v22           #newIntent:Landroid/content/Intent;
    :cond_35f
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_387

    .line 3611
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_20

    .line 3613
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v23

    .line 3614
    .local v23, packageName:Ljava/lang/String;
    if-eqz v23, :cond_20

    .line 3615
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 3618
    .end local v23           #packageName:Ljava/lang/String;
    :cond_387
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_397

    .line 3619
    const-string/jumbo v2, "screen_state=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_20

    .line 3620
    :cond_397
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a7

    .line 3621
    const-string/jumbo v2, "screen_state=off"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_20

    .line 3622
    :cond_3a7
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3623
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;Landroid/content/Context;)V

    goto/16 :goto_20

    .line 3452
    :pswitch_data_3ba
    .packed-switch 0x1
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch

    .line 3484
    :sswitch_data_3c6
    .sparse-switch
        0x404 -> :sswitch_94
        0x408 -> :sswitch_94
        0x420 -> :sswitch_97
    .end sparse-switch

    .line 3554
    :pswitch_data_3d4
    .packed-switch 0xa
        :pswitch_297
        :pswitch_2ab
        :pswitch_268
    .end packed-switch
.end method
