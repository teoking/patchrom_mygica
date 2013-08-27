.class Lcom/android/server/WifiService$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .registers 2
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .registers 4
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1088
    and-int v0, p1, p2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private shouldWifiStayAwake(II)Z
    .registers 8
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 1056
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1060
    .local v0, wifiSleepPolicy:I
    if-ne v0, v4, :cond_15

    .line 1069
    :cond_14
    :goto_14
    return v1

    .line 1063
    :cond_15
    if-ne v0, v1, :cond_19

    if-nez p2, :cond_14

    .line 1069
    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$3;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_14
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 953
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_idle_ms"

    const-wide/32 v10, 0xdbba0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 958
    .local v1, idleMillis:J
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "stay_on_while_plugged_in"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 961
    .local v5, stayAwakeConditions:I
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 965
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v9}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 966
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->releaseShutdownLock()V

    .line 967
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$1802(Lcom/android/server/WifiService;Z)Z

    .line 968
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)V

    .line 969
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 970
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;Z)V

    .line 1045
    :cond_63
    :goto_63
    return-void

    .line 971
    :cond_64
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    .line 975
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$1802(Lcom/android/server/WifiService;Z)Z

    .line 976
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)V

    .line 983
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v8

    if-nez v8, :cond_63

    .line 984
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->acquireShutdownLock()V

    .line 989
    const-string v8, "tv.powermanager.nevertimeout"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 990
    const-wide/16 v1, 0x3e8

    .line 997
    :goto_97
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v1

    iget-object v12, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v12}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_63

    .line 993
    :cond_ad
    const-wide/32 v1, 0x1d4c0

    goto :goto_97

    .line 1007
    :cond_b1
    const-string v8, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c0

    .line 1008
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;Z)V

    goto :goto_63

    .line 1009
    :cond_c0
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11c

    .line 1017
    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1021
    .local v3, pluggedType:I
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)Z

    move-result v8

    if-eqz v8, :cond_ff

    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v8

    if-eqz v8, :cond_ff

    invoke-direct {p0, v5, v3}, Lcom/android/server/WifiService$3;->shouldWifiStayAwake(II)Z

    move-result v8

    if-nez v8, :cond_ff

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v6, v8, v1

    .line 1027
    .local v6, triggerTime:J
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v10}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v8, v9, v6, v7, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1031
    .end local v6           #triggerTime:J
    :cond_ff
    if-nez v3, :cond_112

    .line 1032
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 1033
    :try_start_108
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 1034
    monitor-exit v9
    :try_end_112
    .catchall {:try_start_108 .. :try_end_112} :catchall_119

    .line 1036
    :cond_112
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8, v3}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;I)I

    goto/16 :goto_63

    .line 1034
    :catchall_119
    move-exception v8

    :try_start_11a
    monitor-exit v9
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    throw v8

    .line 1037
    .end local v3           #pluggedType:I
    :cond_11c
    const-string v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_136

    .line 1038
    const-string v8, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1040
    .local v4, state:I
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_63

    .line 1041
    .end local v4           #state:I
    :cond_136
    const-string v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 1042
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const-string v9, "phoneinECMState"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Z)Z

    .line 1043
    iget-object v8, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-static {v8}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)V

    goto/16 :goto_63
.end method
