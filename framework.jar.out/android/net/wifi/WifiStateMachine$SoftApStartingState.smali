.class Landroid/net/wifi/WifiStateMachine$SoftApStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 3596
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .prologue
    .line 3600
    const v2, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3602
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$15200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v1

    .line 3603
    .local v1, message:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x20015

    if-ne v2, v3, :cond_3c

    .line 3604
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3606
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2a

    .line 3607
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3615
    :goto_29
    return-void

    .line 3609
    :cond_2a
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x20019

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 3610
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_29

    .line 3613
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal transition to SoftApStartingState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 3619
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_4e

    .line 3657
    :goto_6
    return v1

    .line 3635
    :sswitch_7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 3657
    :goto_c
    const/4 v1, 0x1

    goto :goto_6

    .line 3638
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3639
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1a

    .line 3640
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1, v0}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_c

    .line 3642
    :cond_1a
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Softap config is null!"

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3643
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20017

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_c

    .line 3647
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_2a
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0xd

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$2300(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3648
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$15600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$15700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_c

    .line 3652
    :sswitch_3d
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x20002

    const/16 v5, 0xe

    invoke-virtual {v3, v4, v5, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_c

    .line 3619
    :sswitch_data_4e
    .sparse-switch
        0x20001 -> :sswitch_7
        0x20002 -> :sswitch_7
        0x2000b -> :sswitch_7
        0x2000c -> :sswitch_7
        0x2000d -> :sswitch_7
        0x2000e -> :sswitch_7
        0x20015 -> :sswitch_7
        0x20016 -> :sswitch_2a
        0x20017 -> :sswitch_3d
        0x20018 -> :sswitch_7
        0x2001c -> :sswitch_e
        0x2001d -> :sswitch_7
        0x20048 -> :sswitch_7
        0x20049 -> :sswitch_7
        0x20050 -> :sswitch_7
        0x20054 -> :sswitch_7
        0x20055 -> :sswitch_7
        0x2005a -> :sswitch_7
    .end sparse-switch
.end method
