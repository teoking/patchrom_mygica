.class Landroid/net/pppoe/PppoeStateTracker$1;
.super Ljava/lang/Object;
.source "PppoeStateTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/PppoeStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/pppoe/PppoeStateTracker;


# direct methods
.method constructor <init>(Landroid/net/pppoe/PppoeStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 317
    monitor-enter p0

    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, newNetworkstate:Z
    :try_start_3
    new-instance v2, Landroid/net/pppoe/PppoeDevInfo;

    invoke-direct {v2}, Landroid/net/pppoe/PppoeDevInfo;-><init>()V

    .line 321
    .local v2, info:Landroid/net/pppoe/PppoeDevInfo;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_1aa

    .line 403
    :goto_d
    monitor-exit p0

    .line 404
    return v7

    .line 323
    :pswitch_f
    iget-object v8, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$000(Landroid/net/pppoe/PppoeStateTracker;)Z

    move-result v6

    if-nez v6, :cond_b9

    move v6, v7

    :goto_1a
    invoke-static {v8, v6}, Landroid/net/pppoe/PppoeStateTracker;->access$002(Landroid/net/pppoe/PppoeStateTracker;Z)Z

    .line 325
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$000(Landroid/net/pppoe/PppoeStateTracker;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 326
    const-string v6, "PppoeStateTracker"

    const-string v8, "[EVENT: PPP interface is ADDED]"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_2c
    const-string v6, "PppoeStateTracker"

    const-string v8, "clear PPP IP Config"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v6, "dhcp.ppp0.ipaddress"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v6, "dhcp.ppp0.mask"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v6, "dhcp.ppp0.dns1"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v6, "dhcp.ppp0.dns2"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v6, "dhcp.ppp0.gateway"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$100(Landroid/net/pppoe/PppoeStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setIfName(Ljava/lang/String;)V

    .line 338
    const-string v6, "0.0.0.0"

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setIpAddress(Ljava/lang/String;)V

    .line 339
    const-string v6, "0.0.0.0"

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setNetMask(Ljava/lang/String;)V

    .line 340
    const-string v6, "0.0.0.0"

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setDnsAddr(Ljava/lang/String;)V

    .line 341
    const-string v6, "0.0.0.0"

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setRouteAddr(Ljava/lang/String;)V

    .line 342
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$200(Landroid/net/pppoe/PppoeStateTracker;)Landroid/net/pppoe/PppoeManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/net/pppoe/PppoeManager;->UpdatePppoeDevInfo(Landroid/net/pppoe/PppoeDevInfo;)V
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_b6

    .line 345
    :try_start_7c
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-static {v6, v2}, Landroid/net/pppoe/PppoeStateTracker;->access$300(Landroid/net/pppoe/PppoeStateTracker;Landroid/net/pppoe/PppoeDevInfo;)Z
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_b6
    .catch Ljava/net/UnknownHostException; {:try_start_7c .. :try_end_81} :catch_c5

    .line 349
    :goto_81
    const/4 v3, 0x0

    .line 351
    :try_start_82
    const-string/jumbo v6, "net.ppp.errcode"

    const-string v8, "0:0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, ppp_err:Ljava/lang/String;
    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ppp_err:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v6, "0:0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 354
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    const/4 v8, 0x4

    const-string v9, "0:0"

    invoke-static {v6, v3, v8, v9}, Landroid/net/pppoe/PppoeStateTracker;->access$400(Landroid/net/pppoe/PppoeStateTracker;ZILjava/lang/String;)V

    goto/16 :goto_d

    .line 403
    .end local v2           #info:Landroid/net/pppoe/PppoeDevInfo;
    .end local v4           #ppp_err:Ljava/lang/String;
    :catchall_b6
    move-exception v6

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_82 .. :try_end_b8} :catchall_b6

    throw v6

    .line 323
    .restart local v2       #info:Landroid/net/pppoe/PppoeDevInfo;
    :cond_b9
    const/4 v6, 0x0

    goto/16 :goto_1a

    .line 328
    :cond_bc
    :try_start_bc
    const-string v6, "PppoeStateTracker"

    const-string v8, "[EVENT: PPP interface is REMOVED]"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 346
    :catch_c5
    move-exception v0

    .line 347
    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_81

    .line 356
    .end local v0           #e:Ljava/net/UnknownHostException;
    .restart local v4       #ppp_err:Ljava/lang/String;
    :cond_ca
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    const/4 v8, 0x5

    invoke-static {v6, v3, v8, v4}, Landroid/net/pppoe/PppoeStateTracker;->access$400(Landroid/net/pppoe/PppoeStateTracker;ZILjava/lang/String;)V

    goto/16 :goto_d

    .line 361
    .end local v4           #ppp_err:Ljava/lang/String;
    :pswitch_d2
    const-string v6, "PppoeStateTracker"

    const-string v8, "[EVENT: PPP interface is READY]"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v3, 0x1

    .line 364
    const/4 v1, 0x0

    .line 366
    .local v1, i:I
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$100(Landroid/net/pppoe/PppoeStateTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/pppoe/PppoeDevInfo;->setIfName(Ljava/lang/String;)V

    .line 367
    const/4 v5, 0x0

    .line 369
    .local v5, prop_val:Ljava/lang/String;
    :cond_e5
    const-string v6, "dhcp.ppp0.ipaddress"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-virtual {v2, v5}, Landroid/net/pppoe/PppoeDevInfo;->setIpAddress(Ljava/lang/String;)V

    .line 371
    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ip:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_bc .. :try_end_108} :catchall_b6

    .line 373
    const-wide/16 v8, 0x3e8

    :try_start_10a
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_b6
    .catch Ljava/lang/InterruptedException; {:try_start_10a .. :try_end_10d} :catch_1a6

    .line 377
    :goto_10d
    add-int/lit8 v1, v1, 0x1

    .line 378
    :try_start_10f
    invoke-virtual {v2}, Landroid/net/pppoe/PppoeDevInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    const-string v8, "0.0.0.0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    const/16 v6, 0xa

    if-lt v1, v6, :cond_e5

    .line 381
    :cond_11f
    const-string v6, "dhcp.ppp0.mask"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 382
    invoke-virtual {v2, v5}, Landroid/net/pppoe/PppoeDevInfo;->setNetMask(Ljava/lang/String;)V

    .line 383
    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mask:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v6, "dhcp.ppp0.dns1"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-virtual {v2, v5}, Landroid/net/pppoe/PppoeDevInfo;->setDnsAddr(Ljava/lang/String;)V

    .line 387
    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v6, "dhcp.ppp0.gateway"

    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-virtual {v2, v5}, Landroid/net/pppoe/PppoeDevInfo;->setRouteAddr(Ljava/lang/String;)V

    .line 391
    const-string v6, "PppoeStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gw:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-static {v6}, Landroid/net/pppoe/PppoeStateTracker;->access$200(Landroid/net/pppoe/PppoeStateTracker;)Landroid/net/pppoe/PppoeManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/net/pppoe/PppoeManager;->UpdatePppoeDevInfo(Landroid/net/pppoe/PppoeDevInfo;)V
    :try_end_192
    .catchall {:try_start_10f .. :try_end_192} :catchall_b6

    .line 395
    :try_start_192
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    invoke-static {v6, v2}, Landroid/net/pppoe/PppoeStateTracker;->access$300(Landroid/net/pppoe/PppoeStateTracker;Landroid/net/pppoe/PppoeDevInfo;)Z
    :try_end_197
    .catchall {:try_start_192 .. :try_end_197} :catchall_b6
    .catch Ljava/net/UnknownHostException; {:try_start_192 .. :try_end_197} :catch_1a1

    .line 400
    :goto_197
    :try_start_197
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker$1;->this$0:Landroid/net/pppoe/PppoeStateTracker;

    const/4 v8, 0x3

    const-string v9, "0:0"

    invoke-static {v6, v3, v8, v9}, Landroid/net/pppoe/PppoeStateTracker;->access$400(Landroid/net/pppoe/PppoeStateTracker;ZILjava/lang/String;)V

    goto/16 :goto_d

    .line 396
    :catch_1a1
    move-exception v0

    .line 397
    .restart local v0       #e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_1a5
    .catchall {:try_start_197 .. :try_end_1a5} :catchall_b6

    goto :goto_197

    .line 374
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1a6
    move-exception v6

    goto/16 :goto_10d

    .line 321
    nop

    :pswitch_data_1aa
    .packed-switch 0x3
        :pswitch_d2
        :pswitch_f
    .end packed-switch
.end method
