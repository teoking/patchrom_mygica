.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 1711
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const v6, 0x1110027

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1714
    if-nez p2, :cond_9

    .line 1761
    :cond_8
    :goto_8
    return-void

    .line 1716
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1717
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1718
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1722
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1723
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v4

    const/16 v5, 0x37

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_8

    .line 1725
    :cond_2d
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v4

    const/16 v5, 0x38

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_8

    .line 1727
    :cond_39
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1728
    const-string v4, "BluetoothService"

    const-string v5, "bt mScreenOn"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4, v7}, Landroid/server/BluetoothService;->access$502(Landroid/server/BluetoothService;Z)Z

    .line 1730
    const-string v4, "bluetooth_on"

    invoke-static {v2, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_5b

    .line 1731
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, v7, v8}, Landroid/server/BluetoothService;->enable(ZZ)Z

    goto :goto_8

    .line 1732
    :cond_5b
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1734
    const-string v4, "BluetoothService"

    const-string/jumbo v5, "turn hot bt"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_8

    .line 1737
    :cond_7e
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 1738
    const-string v4, "BluetoothService"

    const-string v5, "bt mScreenOff"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4, v8}, Landroid/server/BluetoothService;->access$502(Landroid/server/BluetoothService;Z)Z

    .line 1740
    const-string v4, "bluetooth_on"

    invoke-static {v2, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_8

    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1743
    const-string v4, "BluetoothService"

    const-string/jumbo v5, "turn cold bt"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v4

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto/16 :goto_8

    .line 1746
    :cond_bf
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1747
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1749
    .local v3, state:I
    const-string v4, "BluetoothService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    if-nez v3, :cond_f1

    .line 1751
    invoke-static {v9}, Landroid/server/BluetoothService;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 1752
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4, v9}, Landroid/server/BluetoothService;->access$802(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_8

    .line 1754
    :cond_f1
    iget-object v4, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "bluetooth_service_settings"

    iget-object v6, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v6}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Landroid/content/Context;

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1757
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dock_bluetooth_address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/server/BluetoothService;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1758
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_8
.end method
