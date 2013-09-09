.class Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

.field final synthetic val$message:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;Landroid/os/Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2157
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2160
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2161
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2163
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20005

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2165
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_82

    .line 2190
    :goto_29
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2191
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->releaseShutdownLock()V

    .line 2192
    return-void

    .line 2168
    :sswitch_3c
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_29

    .line 2172
    :sswitch_48
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_29

    .line 2176
    :cond_54
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "Failed to unload driver!"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 2177
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x20006

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2179
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->val$message:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_94

    goto :goto_29

    .line 2182
    :sswitch_6f
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_29

    .line 2186
    :sswitch_78
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;->this$1:Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;I)V

    goto :goto_29

    .line 2165
    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_3c
        0x4 -> :sswitch_3c
        0xb -> :sswitch_48
        0xe -> :sswitch_48
    .end sparse-switch

    .line 2179
    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_6f
        0x4 -> :sswitch_6f
        0xb -> :sswitch_78
        0xe -> :sswitch_78
    .end sparse-switch
.end method
