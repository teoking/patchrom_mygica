.class Landroid/net/wifi/WifiStateMachine$DriverStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 2841
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 2845
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2846
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "message"

    .prologue
    .line 2850
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_24

    .line 2872
    const/4 v1, 0x0

    .line 2874
    :goto_6
    return v1

    .line 2852
    :sswitch_7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$7200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 2853
    .local v0, state:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_1c

    .line 2854
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$7400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 2874
    .end local v0           #state:Landroid/net/wifi/SupplicantState;
    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    goto :goto_6

    .line 2869
    :sswitch_1e
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1c

    .line 2850
    :sswitch_data_24
    .sparse-switch
        0x2000d -> :sswitch_1e
        0x2000e -> :sswitch_1e
        0x20047 -> :sswitch_1e
        0x20049 -> :sswitch_1e
        0x2004a -> :sswitch_1e
        0x2004b -> :sswitch_1e
        0x2004c -> :sswitch_1e
        0x20050 -> :sswitch_1e
        0x20054 -> :sswitch_1e
        0x20055 -> :sswitch_1e
        0x2005a -> :sswitch_1e
        0x24006 -> :sswitch_7
    .end sparse-switch
.end method
