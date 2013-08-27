.class Landroid/net/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 3080
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .prologue
    .line 3084
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3085
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$11608(Landroid/net/wifi/WifiStateMachine;)I

    .line 3086
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3087
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20053

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3089
    :cond_2c
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 3200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3201
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    .line 3203
    :cond_12
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 13
    .parameter "message"

    .prologue
    const-wide/16 v9, 0xbb8

    const v8, 0x20053

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3094
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_170

    .line 3192
    :cond_d
    :goto_d
    return v5

    .line 3096
    :sswitch_e
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 3097
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$11700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v3

    const v5, 0x30006

    invoke-virtual {v3, v5}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    :cond_1f
    :goto_1f
    :sswitch_1f
    move v5, v4

    .line 3192
    goto :goto_d

    .line 3100
    :sswitch_21
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 3101
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3f

    .line 3103
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/DhcpInfoInternal;

    invoke-static {v5, v3}, Landroid/net/wifi/WifiStateMachine;->access$11800(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 3104
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$12000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1f

    .line 3105
    :cond_3f
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_1f

    .line 3107
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;)V

    .line 3108
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$12200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1f

    .line 3112
    :sswitch_54
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 3113
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$12300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1f

    .line 3116
    :sswitch_69
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_1f

    .line 3117
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2004a

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 3118
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3, p1}, Landroid/net/wifi/WifiStateMachine;->access$12400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1f

    .line 3127
    :sswitch_7b
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    goto :goto_d

    .line 3132
    :sswitch_85
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3133
    .local v1, netId:I
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v3, v1, :cond_d

    goto :goto_1f

    .line 3138
    .end local v1           #netId:I
    :sswitch_94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3139
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v2

    .line 3140
    .local v2, result:Landroid/net/wifi/NetworkUpdateResult;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v6

    if-ne v3, v6, :cond_e1

    .line 3141
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 3142
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Reconfiguring IP on connection"

    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3143
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$12500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3145
    :cond_ca
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 3146
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Reconfiguring proxy on connection"

    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$10500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3147
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$12600(Landroid/net/wifi/WifiStateMachine;)V

    .line 3148
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$12700(Landroid/net/wifi/WifiStateMachine;)V

    .line 3152
    :cond_e1
    invoke-virtual {v2}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_f2

    .line 3153
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x25009

    invoke-static {v3, p1, v5}, Landroid/net/wifi/WifiStateMachine;->access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1f

    .line 3155
    :cond_f2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Failed to save network"

    invoke-static {v3, v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3156
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25008

    invoke-static {v3, p1, v6, v5}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1f

    .line 3164
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #result:Landroid/net/wifi/NetworkUpdateResult;
    :sswitch_103
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v6

    if-ne v3, v6, :cond_1f

    .line 3166
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;)V

    .line 3167
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v8, v7, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5, v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1f

    .line 3174
    :sswitch_125
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_154

    move v3, v4

    :goto_12c
    invoke-static {v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3175
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$11608(Landroid/net/wifi/WifiStateMachine;)I

    .line 3176
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3178
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;)V

    .line 3179
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$11600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v8, v7, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5, v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1f

    :cond_154
    move v3, v5

    .line 3174
    goto :goto_12c

    .line 3184
    :sswitch_156
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$12800(Landroid/net/wifi/WifiStateMachine;)V

    .line 3185
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x21018

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$4800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    invoke-static {v3, p1, v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1f

    .line 3094
    nop

    :sswitch_data_170
    .sparse-switch
        0x20047 -> :sswitch_7b
        0x20048 -> :sswitch_69
        0x2004a -> :sswitch_54
        0x20052 -> :sswitch_125
        0x20053 -> :sswitch_103
        0x21017 -> :sswitch_156
        0x24003 -> :sswitch_1f
        0x25001 -> :sswitch_85
        0x25007 -> :sswitch_94
        0x30004 -> :sswitch_e
        0x30005 -> :sswitch_21
    .end sparse-switch
.end method
