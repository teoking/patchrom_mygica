.class Landroid/server/BluetoothAdapterStateMachine$WarmUp;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WarmUp"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$WarmUp;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .prologue
    .line 333
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter "message"

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WarmUp process message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x1

    .line 340
    .local v0, retValue:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_86

    move v0, v1

    .line 370
    .end local v0           #retValue:Z
    :cond_22
    :goto_22
    return v0

    .line 342
    .restart local v0       #retValue:Z
    :sswitch_23
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v3, 0x68

    invoke-static {v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 343
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 344
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3000(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 345
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 346
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3002(Landroid/server/BluetoothAdapterStateMachine;Z)Z

    goto :goto_22

    .line 350
    :sswitch_48
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "Bluetooth adapter SDP failed to load"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$3100(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 352
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$3200(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 353
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto :goto_22

    .line 362
    :sswitch_65
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-static {v1, p1}, Landroid/server/BluetoothAdapterStateMachine;->access$3300(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_22

    .line 365
    :sswitch_6b
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WarmUp received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 340
    :sswitch_data_86
    .sparse-switch
        0x1 -> :sswitch_65
        0x2 -> :sswitch_6b
        0x3 -> :sswitch_65
        0x4 -> :sswitch_65
        0x33 -> :sswitch_23
        0x37 -> :sswitch_65
        0x38 -> :sswitch_65
        0x65 -> :sswitch_65
        0x68 -> :sswitch_48
    .end sparse-switch
.end method
