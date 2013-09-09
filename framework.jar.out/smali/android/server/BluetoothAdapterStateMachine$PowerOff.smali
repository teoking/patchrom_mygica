.class Landroid/server/BluetoothAdapterStateMachine$PowerOff;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerOff"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method

.method private prepareBluetooth()Z
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 273
    const-string v7, "BluetoothAdapterStateMachine"

    const-string v8, "acquire mWakeLock"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 275
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->enableNative()I

    move-result v7

    if-eqz v7, :cond_2f

    .line 276
    const-string v7, "BluetoothAdapterStateMachine"

    const-string/jumbo v8, "release mWakeLock"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 320
    :goto_2e
    return v6

    .line 282
    :cond_2f
    const/4 v4, 0x2

    .line 283
    .local v4, retryCount:I
    const/4 v1, 0x0

    .local v1, eventLoopStarted:Z
    move v5, v4

    .line 284
    .end local v4           #retryCount:I
    .local v5, retryCount:I
    :goto_32
    add-int/lit8 v4, v5, -0x1

    .end local v5           #retryCount:I
    .restart local v4       #retryCount:I
    if-lez v5, :cond_78

    if-nez v1, :cond_78

    .line 285
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->start()V

    .line 288
    const/4 v2, 0x5

    .local v2, pollCount:I
    move v3, v2

    .line 289
    .end local v2           #pollCount:I
    .local v3, pollCount:I
    :goto_43
    add-int/lit8 v2, v3, -0x1

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    if-lez v3, :cond_56

    if-nez v1, :cond_56

    .line 290
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 291
    const/4 v1, 0x1

    :cond_56
    :goto_56
    move v5, v4

    .line 301
    .end local v4           #retryCount:I
    .restart local v5       #retryCount:I
    goto :goto_32

    .line 295
    .end local v5           #retryCount:I
    .restart local v4       #retryCount:I
    :cond_58
    const-wide/16 v7, 0x64

    :try_start_5a
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_5d} :catch_5f

    move v3, v2

    .line 299
    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_43

    .line 296
    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    :catch_5f
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prepareBluetooth sleep interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    goto :goto_56

    .line 303
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #pollCount:I
    :cond_78
    if-nez v1, :cond_95

    .line 304
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->disableNative()I

    .line 305
    const-string v7, "BluetoothAdapterStateMachine"

    const-string/jumbo v8, "release mWakeLock"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2e

    .line 311
    :cond_95
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->prepareBluetooth()Z

    move-result v7

    if-nez v7, :cond_c6

    .line 312
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->stop()V

    .line 313
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->disableNative()I

    .line 314
    const-string v7, "BluetoothAdapterStateMachine"

    const-string/jumbo v8, "release mWakeLock"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2e

    .line 319
    :cond_c6
    iget-object v6, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v7, 0x68

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    .line 320
    const/4 v6, 0x1

    goto/16 :goto_2e
.end method


# virtual methods
.method public enter()V
    .registers 1

    .prologue
    .line 198
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9
    .parameter "message"

    .prologue
    const/16 v6, 0x65

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v2, 0x0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOff process message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x1

    .line 204
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_134

    move v0, v2

    .line 262
    .end local v0           #retValue:Z
    :cond_26
    :goto_26
    :sswitch_26
    return v0

    .line 207
    .restart local v0       #retValue:Z
    :sswitch_27
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 208
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 209
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 211
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 212
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1000(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 215
    :cond_4d
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_26

    .line 217
    :cond_59
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "failed to prepare bluetooth, abort turning on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1300(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 219
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto :goto_26

    .line 223
    :sswitch_71
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 224
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1400(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_26

    .line 228
    :sswitch_83
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 230
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 231
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 232
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 234
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 235
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1800(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_26

    .line 237
    :cond_b9
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "failed to prepare bluetooth, abort turning on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 239
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto/16 :goto_26

    .line 241
    :cond_d2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2000(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 243
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto/16 :goto_26

    .line 247
    :sswitch_ed
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 248
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2100(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 250
    :cond_fe
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_26

    .line 253
    :sswitch_10c
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-static {v3, v2, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_26

    .line 256
    :sswitch_117
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOff received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 204
    nop

    :sswitch_data_134
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_117
        0x3 -> :sswitch_ed
        0x4 -> :sswitch_10c
        0x5 -> :sswitch_71
        0x37 -> :sswitch_26
        0x38 -> :sswitch_83
    .end sparse-switch
.end method
