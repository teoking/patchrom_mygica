.class Landroid/net/wifi/WifiStateMachine$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 3206
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 9

    .prologue
    const v7, 0x20010

    .line 3210
    const v4, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3212
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 3214
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$11702(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 3216
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 3217
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$11700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    const v5, 0x30001

    invoke-virtual {v4, v5}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 3236
    :goto_4b
    return-void

    .line 3219
    :cond_4c
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$4900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$4600(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfigStore;->getIpConfiguration(I)Landroid/net/DhcpInfoInternal;

    move-result-object v0

    .line 3221
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 3222
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3223
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 3225
    :try_start_6b
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 3227
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2000f

    invoke-virtual {v4, v5, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_82} :catch_83
    .catch Ljava/lang/IllegalStateException; {:try_start_6b .. :try_end_82} :catch_a2

    goto :goto_4b

    .line 3228
    :catch_83
    move-exception v3

    .line 3229
    .local v3, re:Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Static IP configuration failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3230
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_4b

    .line 3231
    .end local v3           #re:Landroid/os/RemoteException;
    :catch_a2
    move-exception v1

    .line 3232
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Static IP configuration failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3233
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_4b
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter "message"

    .prologue
    .line 3240
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3a

    .line 3257
    const/4 v0, 0x0

    .line 3259
    :goto_6
    return v0

    .line 3242
    :sswitch_7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpInfoInternal;

    invoke-static {v1, v0}, Landroid/net/wifi/WifiStateMachine;->access$11800(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 3243
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$12900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3259
    :goto_1b
    const/4 v0, 0x1

    goto :goto_6

    .line 3246
    :sswitch_1d
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;)V

    .line 3247
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$10800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$13000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1b

    .line 3250
    :sswitch_2e
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$13100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1b

    .line 3254
    :sswitch_34
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$13200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1b

    .line 3240
    :sswitch_data_3a
    .sparse-switch
        0x2000f -> :sswitch_7
        0x20010 -> :sswitch_1d
        0x2004d -> :sswitch_34
        0x25007 -> :sswitch_2e
    .end sparse-switch
.end method
