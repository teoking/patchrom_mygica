.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 905
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 906
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 908
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 910
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 78
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    return-void
.end method

.method public run()V
    .registers 122

    .prologue
    .line 84
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 87
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 89
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 92
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 93
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 97
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v100

    .line 99
    .local v100, shutdownAction:Ljava/lang/String;
    if-eqz v100, :cond_4e

    invoke-virtual/range {v100 .. v100}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4e

    .line 100
    const/4 v3, 0x0

    move-object/from16 v0, v100

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_679

    const/16 v94, 0x1

    .line 103
    .local v94, reboot:Z
    :goto_35
    invoke-virtual/range {v100 .. v100}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_67d

    .line 104
    const/4 v3, 0x1

    invoke-virtual/range {v100 .. v100}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v100

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v93

    .line 109
    .local v93, reason:Ljava/lang/String;
    :goto_47
    move/from16 v0, v94

    move-object/from16 v1, v93

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 113
    .end local v93           #reason:Ljava/lang/String;
    .end local v94           #reboot:Z
    :cond_4e
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 114
    .local v69, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v69

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_681

    const/16 v68, 0x0

    .line 116
    .local v68, factoryTest:I
    :goto_60
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 118
    .local v17, headless:Z
    const/16 v41, 0x0

    .line 119
    .local v41, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v57, 0x0

    .line 120
    .local v57, contentService:Landroid/content/ContentService;
    const/16 v75, 0x0

    .line 121
    .local v75, lights:Lcom/android/server/LightsService;
    const/16 v92, 0x0

    .line 122
    .local v92, power:Lcom/android/server/PowerManagerService;
    const/16 v46, 0x0

    .line 123
    .local v46, battery:Lcom/android/server/BatteryService;
    const/16 v111, 0x0

    .line 124
    .local v111, vibrator:Lcom/android/server/VibratorService;
    const/16 v43, 0x0

    .line 125
    .local v43, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 126
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 127
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v84, 0x0

    .line 128
    .local v84, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v55, 0x0

    .line 129
    .local v55, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v118, 0x0

    .line 130
    .local v118, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v116, 0x0

    .line 131
    .local v116, wifi:Lcom/android/server/WifiService;
    const/16 v99, 0x0

    .line 132
    .local v99, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v91, 0x0

    .line 133
    .local v91, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 134
    .local v4, context:Landroid/content/Context;
    const/16 v120, 0x0

    .line 135
    .local v120, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v47, 0x0

    .line 136
    .local v47, bluetooth:Landroid/server/BluetoothService;
    const/16 v49, 0x0

    .line 137
    .local v49, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v63, 0x0

    .line 138
    .local v63, dock:Lcom/android/server/DockObserver;
    const/16 v109, 0x0

    .line 139
    .local v109, usb:Lcom/android/server/usb/UsbService;
    const/16 v97, 0x0

    .line 140
    .local v97, serial:Lcom/android/server/SerialService;
    const/16 v107, 0x0

    .line 141
    .local v107, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v95, 0x0

    .line 142
    .local v95, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v103, 0x0

    .line 143
    .local v103, throttle:Lcom/android/server/ThrottleService;
    const/16 v86, 0x0

    .line 144
    .local v86, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v52, 0x0

    .line 145
    .local v52, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v74, 0x0

    .line 149
    .local v74, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_a3
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 152
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_c0
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_c0} :catch_9fc

    .line 154
    .end local v92           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_c0
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 156
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static/range {v68 .. v68}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 159
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 162
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 166
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 168
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 171
    .local v60, cryptState:Ljava/lang/String;
    const/16 v90, 0x0

    .line 172
    .local v90, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_687

    .line 173
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 v90, 0x1

    .line 180
    :cond_117
    :goto_117
    if-eqz v68, :cond_69c

    const/4 v3, 0x1

    :goto_11a
    move/from16 v0, v90

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_11f
    .catch Ljava/lang/RuntimeException; {:try_start_c0 .. :try_end_11f} :catch_6ab

    move-result-object v91

    .line 183
    const/16 v70, 0x0

    .line 185
    .local v70, firstBoot:Z
    :try_start_122
    invoke-interface/range {v91 .. v91}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_125
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_125} :catch_991
    .catch Ljava/lang/RuntimeException; {:try_start_122 .. :try_end_125} :catch_6ab

    move-result v70

    .line 189
    :goto_126
    :try_start_126
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 191
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_131
    .catch Ljava/lang/RuntimeException; {:try_start_126 .. :try_end_131} :catch_6ab

    .line 195
    :try_start_131
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v42, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_13f
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_13f} :catch_69f
    .catch Ljava/lang/RuntimeException; {:try_start_131 .. :try_end_13f} :catch_6ab

    .line 197
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .local v42, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_13f
    const-string v3, "account"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_13f .. :try_end_146} :catch_a3e
    .catch Ljava/lang/RuntimeException; {:try_start_13f .. :try_end_146} :catch_a05

    move-object/from16 v41, v42

    .line 202
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_148
    :try_start_148
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v3, 0x1

    move/from16 v0, v68

    if-ne v0, v3, :cond_6c2

    const/4 v3, 0x1

    :goto_155
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v57

    .line 206
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 209
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v76, Lcom/android/server/LightsService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_171
    .catch Ljava/lang/RuntimeException; {:try_start_148 .. :try_end_171} :catch_6ab

    .line 212
    .end local v75           #lights:Lcom/android/server/LightsService;
    .local v76, lights:Lcom/android/server/LightsService;
    :try_start_171
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v76

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_17f
    .catch Ljava/lang/RuntimeException; {:try_start_171 .. :try_end_17f} :catch_a0e

    .line 214
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_17f
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 216
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v112, Lcom/android/server/VibratorService;

    move-object/from16 v0, v112

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_192
    .catch Ljava/lang/RuntimeException; {:try_start_17f .. :try_end_192} :catch_a17

    .line 218
    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .local v112, vibrator:Lcom/android/server/VibratorService;
    :try_start_192
    const-string v3, "vibrator"

    move-object/from16 v0, v112

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v76

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 224
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1ae
    .catch Ljava/lang/RuntimeException; {:try_start_192 .. :try_end_1ae} :catch_a1e

    .line 226
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_1ae
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 228
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 232
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v3, 0x1

    move/from16 v0, v68

    if-eq v0, v3, :cond_6c5

    const/4 v3, 0x1

    move v9, v3

    :goto_1d3
    if-nez v70, :cond_6c9

    const/4 v3, 0x1

    :goto_1d6
    move/from16 v0, v90

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v120

    .line 236
    const-string v3, "window"

    move-object/from16 v0, v120

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 237
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v74

    .line 238
    const-string v3, "input"

    move-object/from16 v0, v74

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v120

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1f7
    .catch Ljava/lang/RuntimeException; {:try_start_1ae .. :try_end_1f7} :catch_6da

    .line 242
    const/16 v71, 0x1

    .line 244
    .local v71, hasBluetooth:Z
    :try_start_1f9
    const-string v3, "android.hardware.bluetooth"

    move-object/from16 v0, v91

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_200
    .catch Landroid/os/RemoteException; {:try_start_1f9 .. :try_end_200} :catch_a3b
    .catch Ljava/lang/RuntimeException; {:try_start_1f9 .. :try_end_200} :catch_6da

    move-result v71

    .line 251
    :goto_201
    :try_start_201
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6cc

    .line 252
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_216
    .catch Ljava/lang/RuntimeException; {:try_start_201 .. :try_end_216} :catch_6da

    :goto_216
    move-object/from16 v111, v112

    .end local v112           #vibrator:Lcom/android/server/VibratorService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v75, v76

    .line 282
    .end local v60           #cryptState:Ljava/lang/String;
    .end local v70           #firstBoot:Z
    .end local v71           #hasBluetooth:Z
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v90           #onlyCore:Z
    .restart local v75       #lights:Lcom/android/server/LightsService;
    :goto_21a
    const/16 v61, 0x0

    .line 283
    .local v61, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v101, 0x0

    .line 284
    .local v101, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v72, 0x0

    .line 285
    .local v72, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v44, 0x0

    .line 286
    .local v44, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v88, 0x0

    .line 287
    .local v88, notification:Lcom/android/server/NotificationManagerService;
    const/16 v114, 0x0

    .line 288
    .local v114, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v77, 0x0

    .line 289
    .local v77, location:Lcom/android/server/LocationManagerService;
    const/16 v58, 0x0

    .line 290
    .local v58, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v105, 0x0

    .line 291
    .local v105, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v79, 0x0

    .line 292
    .local v79, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v65, 0x0

    .line 295
    .local v65, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v68

    if-eq v0, v3, :cond_25f

    .line 297
    :try_start_235
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v73, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v73

    move-object/from16 v1, v120

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_245
    .catch Ljava/lang/Throwable; {:try_start_235 .. :try_end_245} :catch_73a

    .line 299
    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .local v73, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_245
    const-string v3, "input_method"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24c
    .catch Ljava/lang/Throwable; {:try_start_245 .. :try_end_24c} :catch_9f7

    move-object/from16 v72, v73

    .line 305
    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v72       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_24e
    :try_start_24e
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25f
    .catch Ljava/lang/Throwable; {:try_start_24e .. :try_end_25f} :catch_746

    .line 314
    :cond_25f
    :goto_25f
    :try_start_25f
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_262
    .catch Ljava/lang/Throwable; {:try_start_25f .. :try_end_262} :catch_752

    .line 320
    :goto_262
    :try_start_262
    invoke-interface/range {v91 .. v91}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_265
    .catch Ljava/lang/Throwable; {:try_start_262 .. :try_end_265} :catch_75e

    .line 326
    :goto_265
    :try_start_265
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403e5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_278
    .catch Landroid/os/RemoteException; {:try_start_265 .. :try_end_278} :catch_9f4

    .line 333
    :goto_278
    const/4 v3, 0x1

    move/from16 v0, v68

    if-eq v0, v3, :cond_a43

    .line 334
    const/16 v82, 0x0

    .line 335
    .local v82, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a4

    .line 341
    :try_start_28d
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v83, Lcom/android/server/MountService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_29b
    .catch Ljava/lang/Throwable; {:try_start_28d .. :try_end_29b} :catch_76a

    .line 343
    .end local v82           #mountService:Lcom/android/server/MountService;
    .local v83, mountService:Lcom/android/server/MountService;
    :try_start_29b
    const-string v3, "mount"

    move-object/from16 v0, v83

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a2
    .catch Ljava/lang/Throwable; {:try_start_29b .. :try_end_2a2} :catch_9ef

    move-object/from16 v82, v83

    .line 350
    .end local v83           #mountService:Lcom/android/server/MountService;
    .restart local v82       #mountService:Lcom/android/server/MountService;
    :cond_2a4
    :goto_2a4
    :try_start_2a4
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v80, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v80

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_2b2
    .catch Ljava/lang/Throwable; {:try_start_2a4 .. :try_end_2b2} :catch_776

    .line 352
    .end local v79           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v80, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_2b2
    const-string v3, "lock_settings"

    move-object/from16 v0, v80

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b9
    .catch Ljava/lang/Throwable; {:try_start_2b2 .. :try_end_2b9} :catch_9ea

    move-object/from16 v79, v80

    .line 358
    .end local v80           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v79       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_2bb
    :try_start_2bb
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v62, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v62

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2c9
    .catch Ljava/lang/Throwable; {:try_start_2bb .. :try_end_2c9} :catch_782

    .line 360
    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v62, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_2c9
    const-string v3, "device_policy"

    move-object/from16 v0, v62

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d0
    .catch Ljava/lang/Throwable; {:try_start_2c9 .. :try_end_2d0} :catch_9e5

    move-object/from16 v61, v62

    .line 366
    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v61       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_2d2
    :try_start_2d2
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v102, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v102

    move-object/from16 v1, v120

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2e2
    .catch Ljava/lang/Throwable; {:try_start_2d2 .. :try_end_2e2} :catch_78e

    .line 368
    .end local v101           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v102, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_2e2
    const-string v3, "statusbar"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e9
    .catch Ljava/lang/Throwable; {:try_start_2e2 .. :try_end_2e9} :catch_9e0

    move-object/from16 v101, v102

    .line 374
    .end local v102           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_2eb
    :try_start_2eb
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2fc
    .catch Ljava/lang/Throwable; {:try_start_2eb .. :try_end_2fc} :catch_79a

    .line 382
    :goto_2fc
    :try_start_2fc
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 384
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30c
    .catch Ljava/lang/Throwable; {:try_start_2fc .. :try_end_30c} :catch_7a6

    .line 390
    :goto_30c
    :try_start_30c
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v106, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31a
    .catch Ljava/lang/Throwable; {:try_start_30c .. :try_end_31a} :catch_7b2

    .line 392
    .end local v105           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v106, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_31a
    const-string v3, "textservices"

    move-object/from16 v0, v106

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_321
    .catch Ljava/lang/Throwable; {:try_start_31a .. :try_end_321} :catch_9db

    move-object/from16 v105, v106

    .line 398
    .end local v106           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v105       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_323
    :try_start_323
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v85, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_331
    .catch Ljava/lang/Throwable; {:try_start_323 .. :try_end_331} :catch_7be

    .line 400
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v85, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_331
    const-string v3, "netstats"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_338
    .catch Ljava/lang/Throwable; {:try_start_331 .. :try_end_338} :catch_9d6

    move-object/from16 v12, v85

    .line 406
    .end local v85           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_33a
    :try_start_33a
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_34c
    .catch Ljava/lang/Throwable; {:try_start_33a .. :try_end_34c} :catch_7ca

    .line 410
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_34c
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_351
    .catch Ljava/lang/Throwable; {:try_start_34c .. :try_end_351} :catch_9d3

    .line 416
    :goto_351
    :try_start_351
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v119, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v119

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_35f
    .catch Ljava/lang/Throwable; {:try_start_351 .. :try_end_35f} :catch_7d8

    .line 418
    .end local v118           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v119, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_35f
    const-string v3, "wifip2p"

    move-object/from16 v0, v119

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_366
    .catch Ljava/lang/Throwable; {:try_start_35f .. :try_end_366} :catch_9ce

    move-object/from16 v118, v119

    .line 424
    .end local v119           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v118       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_368
    :try_start_368
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v117, Lcom/android/server/WifiService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_376
    .catch Ljava/lang/Throwable; {:try_start_368 .. :try_end_376} :catch_7e4

    .line 426
    .end local v116           #wifi:Lcom/android/server/WifiService;
    .local v117, wifi:Lcom/android/server/WifiService;
    :try_start_376
    const-string v3, "wifi"

    move-object/from16 v0, v117

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37d
    .catch Ljava/lang/Throwable; {:try_start_376 .. :try_end_37d} :catch_9c9

    move-object/from16 v116, v117

    .line 432
    .end local v117           #wifi:Lcom/android/server/WifiService;
    .restart local v116       #wifi:Lcom/android/server/WifiService;
    :goto_37f
    :try_start_37f
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v56, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v56

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_38d
    .catch Ljava/lang/Throwable; {:try_start_37f .. :try_end_38d} :catch_7f0

    .line 435
    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .local v56, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_38d
    const-string v3, "connectivity"

    move-object/from16 v0, v56

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 436
    move-object/from16 v0, v56

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 437
    move-object/from16 v0, v56

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 438
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 439
    invoke-virtual/range {v118 .. v118}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_3a4
    .catch Ljava/lang/Throwable; {:try_start_38d .. :try_end_3a4} :catch_9c4

    move-object/from16 v55, v56

    .line 445
    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v55       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_3a6
    :try_start_3a6
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v99

    .line 447
    const-string v3, "servicediscovery"

    move-object/from16 v0, v99

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b8
    .catch Ljava/lang/Throwable; {:try_start_3a6 .. :try_end_3b8} :catch_7fc

    .line 454
    :goto_3b8
    :try_start_3b8
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v104, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_3c6
    .catch Ljava/lang/Throwable; {:try_start_3b8 .. :try_end_3c6} :catch_808

    .line 456
    .end local v103           #throttle:Lcom/android/server/ThrottleService;
    .local v104, throttle:Lcom/android/server/ThrottleService;
    :try_start_3c6
    const-string v3, "throttle"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3cd
    .catch Ljava/lang/Throwable; {:try_start_3c6 .. :try_end_3cd} :catch_9bf

    move-object/from16 v103, v104

    .line 463
    .end local v104           #throttle:Lcom/android/server/ThrottleService;
    .restart local v103       #throttle:Lcom/android/server/ThrottleService;
    :goto_3cf
    :try_start_3cf
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e0
    .catch Ljava/lang/Throwable; {:try_start_3cf .. :try_end_3e0} :catch_814

    .line 475
    :goto_3e0
    if-eqz v82, :cond_3e5

    .line 476
    invoke-virtual/range {v82 .. v82}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 480
    :cond_3e5
    if-eqz v41, :cond_3ea

    .line 481
    :try_start_3e7
    invoke-virtual/range {v41 .. v41}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_3ea
    .catch Ljava/lang/Throwable; {:try_start_3e7 .. :try_end_3ea} :catch_820

    .line 487
    :cond_3ea
    :goto_3ea
    if-eqz v57, :cond_3ef

    .line 488
    :try_start_3ec
    invoke-virtual/range {v57 .. v57}, Landroid/content/ContentService;->systemReady()V
    :try_end_3ef
    .catch Ljava/lang/Throwable; {:try_start_3ec .. :try_end_3ef} :catch_82c

    .line 494
    :cond_3ef
    :goto_3ef
    :try_start_3ef
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v89, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v89

    move-object/from16 v1, v101

    move-object/from16 v2, v75

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_401
    .catch Ljava/lang/Throwable; {:try_start_3ef .. :try_end_401} :catch_838

    .line 496
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .local v89, notification:Lcom/android/server/NotificationManagerService;
    :try_start_401
    const-string v3, "notification"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 497
    move-object/from16 v0, v89

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_40d
    .catch Ljava/lang/Throwable; {:try_start_401 .. :try_end_40d} :catch_9ba

    move-object/from16 v88, v89

    .line 503
    .end local v89           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    :goto_40f
    :try_start_40f
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_420
    .catch Ljava/lang/Throwable; {:try_start_40f .. :try_end_420} :catch_844

    .line 511
    :goto_420
    :try_start_420
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v78, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42e
    .catch Ljava/lang/Throwable; {:try_start_420 .. :try_end_42e} :catch_850

    .line 513
    .end local v77           #location:Lcom/android/server/LocationManagerService;
    .local v78, location:Lcom/android/server/LocationManagerService;
    :try_start_42e
    const-string v3, "location"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_435
    .catch Ljava/lang/Throwable; {:try_start_42e .. :try_end_435} :catch_9b5

    move-object/from16 v77, v78

    .line 519
    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #location:Lcom/android/server/LocationManagerService;
    :goto_437
    :try_start_437
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v59, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_445
    .catch Ljava/lang/Throwable; {:try_start_437 .. :try_end_445} :catch_85c

    .line 521
    .end local v58           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v59, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_445
    const-string v3, "country_detector"

    move-object/from16 v0, v59

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44c
    .catch Ljava/lang/Throwable; {:try_start_445 .. :try_end_44c} :catch_9b0

    move-object/from16 v58, v59

    .line 527
    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v58       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_44e
    :try_start_44e
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45f
    .catch Ljava/lang/Throwable; {:try_start_44e .. :try_end_45f} :catch_868

    .line 535
    :goto_45f
    :try_start_45f
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_477
    .catch Ljava/lang/Throwable; {:try_start_45f .. :try_end_477} :catch_874

    .line 542
    :goto_477
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110024

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_49d

    .line 545
    :try_start_484
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-nez v17, :cond_49d

    .line 547
    new-instance v115, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_494
    .catch Ljava/lang/Throwable; {:try_start_484 .. :try_end_494} :catch_880

    .line 548
    .end local v114           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v115, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_494
    const-string v3, "wallpaper"

    move-object/from16 v0, v115

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49b
    .catch Ljava/lang/Throwable; {:try_start_494 .. :try_end_49b} :catch_9ab

    move-object/from16 v114, v115

    .line 555
    .end local v115           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v114       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_49d
    :goto_49d
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4bc

    .line 557
    :try_start_4ab
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4bc
    .catch Ljava/lang/Throwable; {:try_start_4ab .. :try_end_4bc} :catch_88c

    .line 565
    :cond_4bc
    :goto_4bc
    :try_start_4bc
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v64, Lcom/android/server/DockObserver;

    move-object/from16 v0, v64

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_4ca
    .catch Ljava/lang/Throwable; {:try_start_4bc .. :try_end_4ca} :catch_898

    .end local v63           #dock:Lcom/android/server/DockObserver;
    .local v64, dock:Lcom/android/server/DockObserver;
    move-object/from16 v63, v64

    .line 573
    .end local v64           #dock:Lcom/android/server/DockObserver;
    .restart local v63       #dock:Lcom/android/server/DockObserver;
    :goto_4cc
    :try_start_4cc
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_4d8
    .catch Ljava/lang/Throwable; {:try_start_4cc .. :try_end_4d8} :catch_8a4

    .line 581
    :goto_4d8
    :try_start_4d8
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    new-instance v110, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_4e6
    .catch Ljava/lang/Throwable; {:try_start_4d8 .. :try_end_4e6} :catch_8b0

    .line 584
    .end local v109           #usb:Lcom/android/server/usb/UsbService;
    .local v110, usb:Lcom/android/server/usb/UsbService;
    :try_start_4e6
    const-string v3, "usb"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4ed
    .catch Ljava/lang/Throwable; {:try_start_4e6 .. :try_end_4ed} :catch_9a6

    move-object/from16 v109, v110

    .line 590
    .end local v110           #usb:Lcom/android/server/usb/UsbService;
    .restart local v109       #usb:Lcom/android/server/usb/UsbService;
    :goto_4ef
    :try_start_4ef
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v98, Lcom/android/server/SerialService;

    move-object/from16 v0, v98

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_4fd
    .catch Ljava/lang/Throwable; {:try_start_4ef .. :try_end_4fd} :catch_8bc

    .line 593
    .end local v97           #serial:Lcom/android/server/SerialService;
    .local v98, serial:Lcom/android/server/SerialService;
    :try_start_4fd
    const-string v3, "serial"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_504
    .catch Ljava/lang/Throwable; {:try_start_4fd .. :try_end_504} :catch_9a1

    move-object/from16 v97, v98

    .line 599
    .end local v98           #serial:Lcom/android/server/SerialService;
    .restart local v97       #serial:Lcom/android/server/SerialService;
    :goto_506
    :try_start_506
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v108, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_514
    .catch Ljava/lang/Throwable; {:try_start_506 .. :try_end_514} :catch_8c8

    .end local v107           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v108, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v107, v108

    .line 607
    .end local v108           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v107       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_516
    :try_start_516
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_527
    .catch Ljava/lang/Throwable; {:try_start_516 .. :try_end_527} :catch_8d4

    .line 615
    :goto_527
    :try_start_527
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v45, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_535
    .catch Ljava/lang/Throwable; {:try_start_527 .. :try_end_535} :catch_8e0

    .line 617
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .local v45, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_535
    const-string v3, "appwidget"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53c
    .catch Ljava/lang/Throwable; {:try_start_535 .. :try_end_53c} :catch_99c

    move-object/from16 v44, v45

    .line 623
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_53e
    :try_start_53e
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v96, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_54c
    .catch Ljava/lang/Throwable; {:try_start_53e .. :try_end_54c} :catch_8ec

    .end local v95           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v96, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v95, v96

    .line 630
    .end local v96           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v95       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_54e
    :try_start_54e
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55f
    .catch Ljava/lang/Throwable; {:try_start_54e .. :try_end_55f} :catch_8f8

    .line 641
    :goto_55f
    :try_start_55f
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_570
    .catch Ljava/lang/Throwable; {:try_start_55f .. :try_end_570} :catch_904

    .line 649
    :goto_570
    :try_start_570
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v87, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_57e
    .catch Ljava/lang/Throwable; {:try_start_570 .. :try_end_57e} :catch_910

    .end local v86           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v87, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v86, v87

    .line 656
    .end local v87           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v86       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_580
    :try_start_580
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v53, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_58e
    .catch Ljava/lang/Throwable; {:try_start_580 .. :try_end_58e} :catch_91c

    .line 658
    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v53, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_58e
    const-string v3, "commontime_management"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_595
    .catch Ljava/lang/Throwable; {:try_start_58e .. :try_end_595} :catch_998

    move-object/from16 v52, v53

    .line 664
    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v52       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_597
    :try_start_597
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_5a3
    .catch Ljava/lang/Throwable; {:try_start_597 .. :try_end_5a3} :catch_928

    .line 670
    :goto_5a3
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110038

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5c7

    .line 673
    :try_start_5b0
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v66, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5be
    .catch Ljava/lang/Throwable; {:try_start_5b0 .. :try_end_5be} :catch_934

    .line 676
    .end local v65           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v66, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_5be
    const-string v3, "dreams"

    move-object/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c5
    .catch Ljava/lang/Throwable; {:try_start_5be .. :try_end_5c5} :catch_994

    move-object/from16 v65, v66

    .line 685
    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v82           #mountService:Lcom/android/server/MountService;
    .restart local v65       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_5c7
    :goto_5c7
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 686
    .local v28, safeMode:Z
    if-eqz v28, :cond_940

    .line 687
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 689
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 691
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 700
    :goto_5de
    :try_start_5de
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5e1
    .catch Ljava/lang/Throwable; {:try_start_5de .. :try_end_5e1} :catch_949

    .line 705
    :goto_5e1
    if-eqz v61, :cond_5e6

    .line 707
    :try_start_5e3
    invoke-virtual/range {v61 .. v61}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5e6
    .catch Ljava/lang/Throwable; {:try_start_5e3 .. :try_end_5e6} :catch_955

    .line 713
    :cond_5e6
    :goto_5e6
    if-eqz v88, :cond_5eb

    .line 715
    :try_start_5e8
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5eb
    .catch Ljava/lang/Throwable; {:try_start_5e8 .. :try_end_5eb} :catch_961

    .line 722
    :cond_5eb
    :goto_5eb
    :try_start_5eb
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5ee
    .catch Ljava/lang/Throwable; {:try_start_5eb .. :try_end_5ee} :catch_96d

    .line 727
    :goto_5ee
    if-eqz v28, :cond_5f7

    .line 728
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 734
    :cond_5f7
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v54

    .line 735
    .local v54, config:Landroid/content/res/Configuration;
    new-instance v81, Landroid/util/DisplayMetrics;

    invoke-direct/range {v81 .. v81}, Landroid/util/DisplayMetrics;-><init>()V

    .line 736
    .local v81, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/view/WindowManager;

    .line 737
    .local v113, w:Landroid/view/WindowManager;
    invoke-interface/range {v113 .. v113}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v81

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 738
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v54

    move-object/from16 v1, v81

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 740
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 742
    :try_start_61f
    invoke-interface/range {v91 .. v91}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_622
    .catch Ljava/lang/Throwable; {:try_start_61f .. :try_end_622} :catch_979

    .line 747
    :goto_622
    :try_start_622
    invoke-virtual/range {v79 .. v79}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_625
    .catch Ljava/lang/Throwable; {:try_start_622 .. :try_end_625} :catch_985

    .line 753
    :goto_625
    move-object/from16 v16, v4

    .line 754
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 755
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 756
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 757
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 758
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v55

    .line 759
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v63

    .line 760
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v109

    .line 761
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v103

    .line 762
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v107

    .line 763
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v44

    .line 764
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v114

    .line 765
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v72

    .line 766
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v95

    .line 767
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v77

    .line 768
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v58

    .line 769
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v86

    .line 770
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v52

    .line 771
    .local v36, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v37, v105

    .line 772
    .local v37, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v101

    .line 773
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v38, v65

    .line 774
    .local v38, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v39, v74

    .line 775
    .local v39, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v47

    .line 782
    .local v40, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v40}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;ZLcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 896
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_66e

    .line 897
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_66e
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 901
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void

    .line 100
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #headless:Z
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v54           #config:Landroid/content/res/Configuration;
    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v57           #contentService:Landroid/content/ContentService;
    .end local v58           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v63           #dock:Lcom/android/server/DockObserver;
    .end local v65           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v68           #factoryTest:I
    .end local v69           #factoryTestStr:Ljava/lang/String;
    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v74           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v77           #location:Lcom/android/server/LocationManagerService;
    .end local v79           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v81           #metrics:Landroid/util/DisplayMetrics;
    .end local v86           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v91           #pm:Landroid/content/pm/IPackageManager;
    .end local v95           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v97           #serial:Lcom/android/server/SerialService;
    .end local v99           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v101           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v103           #throttle:Lcom/android/server/ThrottleService;
    .end local v105           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v107           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v109           #usb:Lcom/android/server/usb/UsbService;
    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .end local v113           #w:Landroid/view/WindowManager;
    .end local v114           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v116           #wifi:Lcom/android/server/WifiService;
    .end local v118           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v120           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_679
    const/16 v94, 0x0

    goto/16 :goto_35

    .line 106
    .restart local v94       #reboot:Z
    :cond_67d
    const/16 v93, 0x0

    .restart local v93       #reason:Ljava/lang/String;
    goto/16 :goto_47

    .line 114
    .end local v93           #reason:Ljava/lang/String;
    .end local v94           #reboot:Z
    .restart local v69       #factoryTestStr:Ljava/lang/String;
    :cond_681
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v68

    goto/16 :goto_60

    .line 175
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v17       #headless:Z
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v52       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v55       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v57       #contentService:Landroid/content/ContentService;
    .restart local v60       #cryptState:Ljava/lang/String;
    .restart local v63       #dock:Lcom/android/server/DockObserver;
    .restart local v68       #factoryTest:I
    .restart local v74       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v90       #onlyCore:Z
    .restart local v91       #pm:Landroid/content/pm/IPackageManager;
    .restart local v95       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v97       #serial:Lcom/android/server/SerialService;
    .restart local v99       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v103       #throttle:Lcom/android/server/ThrottleService;
    .restart local v107       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v109       #usb:Lcom/android/server/usb/UsbService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    .restart local v116       #wifi:Lcom/android/server/WifiService;
    .restart local v118       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v120       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_687
    :try_start_687
    const-string v3, "1"

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 176
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v90, 0x1

    goto/16 :goto_117

    .line 180
    :cond_69c
    const/4 v3, 0x0

    goto/16 :goto_11a

    .line 198
    .restart local v70       #firstBoot:Z
    :catch_69f
    move-exception v67

    .line 199
    .local v67, e:Ljava/lang/Throwable;
    :goto_6a0
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v67

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a9
    .catch Ljava/lang/RuntimeException; {:try_start_687 .. :try_end_6a9} :catch_6ab

    goto/16 :goto_148

    .line 277
    .end local v60           #cryptState:Ljava/lang/String;
    .end local v67           #e:Ljava/lang/Throwable;
    .end local v70           #firstBoot:Z
    .end local v90           #onlyCore:Z
    :catch_6ab
    move-exception v67

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .line 278
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v67, e:Ljava/lang/RuntimeException;
    :goto_6b0
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v67

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21a

    .line 203
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v67           #e:Ljava/lang/RuntimeException;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v60       #cryptState:Ljava/lang/String;
    .restart local v70       #firstBoot:Z
    .restart local v90       #onlyCore:Z
    :cond_6c2
    const/4 v3, 0x0

    goto/16 :goto_155

    .line 233
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v112       #vibrator:Lcom/android/server/VibratorService;
    :cond_6c5
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_1d3

    :cond_6c9
    const/4 v3, 0x0

    goto/16 :goto_1d6

    .line 253
    .restart local v71       #hasBluetooth:Z
    :cond_6cc
    const/4 v3, 0x1

    move/from16 v0, v68

    if-ne v0, v3, :cond_6e0

    .line 254
    :try_start_6d1
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_216

    .line 277
    .end local v71           #hasBluetooth:Z
    :catch_6da
    move-exception v67

    move-object/from16 v111, v112

    .end local v112           #vibrator:Lcom/android/server/VibratorService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v75, v76

    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    goto :goto_6b0

    .line 255
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v71       #hasBluetooth:Z
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v112       #vibrator:Lcom/android/server/VibratorService;
    :cond_6e0
    if-nez v71, :cond_6eb

    .line 256
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (no bluetooth feature)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_216

    .line 258
    :cond_6eb
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v48, Landroid/server/BluetoothService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_6f9
    .catch Ljava/lang/RuntimeException; {:try_start_6d1 .. :try_end_6f9} :catch_6da

    .line 260
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .local v48, bluetooth:Landroid/server/BluetoothService;
    :try_start_6f9
    const-string v3, "bluetooth"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 261
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 263
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_726

    .line 264
    new-instance v50, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_71a
    .catch Ljava/lang/RuntimeException; {:try_start_6f9 .. :try_end_71a} :catch_a27

    .line 265
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v50, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_71a
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 267
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_724
    .catch Ljava/lang/RuntimeException; {:try_start_71a .. :try_end_724} :catch_a30

    move-object/from16 v49, v50

    .line 270
    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_726
    :try_start_726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v51

    .line 272
    .local v51, bluetoothOn:I
    if-eqz v51, :cond_736

    .line 273
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->enable()Z
    :try_end_736
    .catch Ljava/lang/RuntimeException; {:try_start_726 .. :try_end_736} :catch_a27

    :cond_736
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_216

    .line 300
    .end local v51           #bluetoothOn:I
    .end local v60           #cryptState:Ljava/lang/String;
    .end local v70           #firstBoot:Z
    .end local v71           #hasBluetooth:Z
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v90           #onlyCore:Z
    .end local v112           #vibrator:Lcom/android/server/VibratorService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v58       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v61       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v72       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v77       #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v101       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v105       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    .restart local v114       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_73a
    move-exception v67

    .line 301
    .local v67, e:Ljava/lang/Throwable;
    :goto_73b
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24e

    .line 308
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_746
    move-exception v67

    .line 309
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25f

    .line 315
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_752
    move-exception v67

    .line 316
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_262

    .line 321
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_75e
    move-exception v67

    .line 322
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_265

    .line 344
    .end local v67           #e:Ljava/lang/Throwable;
    .restart local v82       #mountService:Lcom/android/server/MountService;
    :catch_76a
    move-exception v67

    .line 345
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_76b
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a4

    .line 353
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_776
    move-exception v67

    .line 354
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_777
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2bb

    .line 361
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_782
    move-exception v67

    .line 362
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_783
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d2

    .line 369
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_78e
    move-exception v67

    .line 370
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_78f
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2eb

    .line 377
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_79a
    move-exception v67

    .line 378
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2fc

    .line 385
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_7a6
    move-exception v67

    .line 386
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30c

    .line 393
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_7b2
    move-exception v67

    .line 394
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_7b3
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_323

    .line 401
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_7be
    move-exception v67

    .line 402
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_7bf
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33a

    .line 411
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_7ca
    move-exception v67

    move-object/from16 v8, v84

    .line 412
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_7cd
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_351

    .line 419
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_7d8
    move-exception v67

    .line 420
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_7d9
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_368

    .line 427
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_7e4
    move-exception v67

    .line 428
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_7e5
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37f

    .line 440
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_7f0
    move-exception v67

    .line 441
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_7f1
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a6

    .line 449
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_7fc
    move-exception v67

    .line 450
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b8

    .line 458
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_808
    move-exception v67

    .line 459
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_809
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3cf

    .line 466
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_814
    move-exception v67

    .line 467
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e0

    .line 482
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_820
    move-exception v67

    .line 483
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3ea

    .line 489
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_82c
    move-exception v67

    .line 490
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3ef

    .line 498
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_838
    move-exception v67

    .line 499
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_839
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40f

    .line 506
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_844
    move-exception v67

    .line 507
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_420

    .line 514
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_850
    move-exception v67

    .line 515
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_851
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_437

    .line 522
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_85c
    move-exception v67

    .line 523
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_85d
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44e

    .line 530
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_868
    move-exception v67

    .line 531
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45f

    .line 538
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_874
    move-exception v67

    .line 539
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_477

    .line 550
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_880
    move-exception v67

    .line 551
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_881
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49d

    .line 559
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_88c
    move-exception v67

    .line 560
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4bc

    .line 568
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_898
    move-exception v67

    .line 569
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4cc

    .line 576
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_8a4
    move-exception v67

    .line 577
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d8

    .line 585
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_8b0
    move-exception v67

    .line 586
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_8b1
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4ef

    .line 594
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_8bc
    move-exception v67

    .line 595
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_8bd
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v67

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_506

    .line 602
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_8c8
    move-exception v67

    .line 603
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_516

    .line 610
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_8d4
    move-exception v67

    .line 611
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v67

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_527

    .line 618
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_8e0
    move-exception v67

    .line 619
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_8e1
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53e

    .line 625
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_8ec
    move-exception v67

    .line 626
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54e

    .line 632
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_8f8
    move-exception v67

    .line 633
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55f

    .line 644
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_904
    move-exception v67

    .line 645
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_570

    .line 651
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_910
    move-exception v67

    .line 652
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_580

    .line 659
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_91c
    move-exception v67

    .line 660
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_91d
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_597

    .line 666
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_928
    move-exception v67

    .line 667
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a3

    .line 677
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_934
    move-exception v67

    .line 678
    .restart local v67       #e:Ljava/lang/Throwable;
    :goto_935
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c7

    .line 694
    .end local v67           #e:Ljava/lang/Throwable;
    .end local v82           #mountService:Lcom/android/server/MountService;
    .restart local v28       #safeMode:Z
    :cond_940
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_5de

    .line 701
    :catch_949
    move-exception v67

    .line 702
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e1

    .line 708
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_955
    move-exception v67

    .line 709
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e6

    .line 716
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_961
    move-exception v67

    .line 717
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5eb

    .line 723
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_96d
    move-exception v67

    .line 724
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5ee

    .line 743
    .end local v67           #e:Ljava/lang/Throwable;
    .restart local v54       #config:Landroid/content/res/Configuration;
    .restart local v81       #metrics:Landroid/util/DisplayMetrics;
    .restart local v113       #w:Landroid/view/WindowManager;
    :catch_979
    move-exception v67

    .line 744
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_622

    .line 748
    .end local v67           #e:Ljava/lang/Throwable;
    :catch_985
    move-exception v67

    .line 749
    .restart local v67       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_625

    .line 186
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v54           #config:Landroid/content/res/Configuration;
    .end local v58           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v65           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v67           #e:Ljava/lang/Throwable;
    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v77           #location:Lcom/android/server/LocationManagerService;
    .end local v79           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v81           #metrics:Landroid/util/DisplayMetrics;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v101           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v105           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v113           #w:Landroid/view/WindowManager;
    .end local v114           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v60       #cryptState:Ljava/lang/String;
    .restart local v70       #firstBoot:Z
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90       #onlyCore:Z
    :catch_991
    move-exception v3

    goto/16 :goto_126

    .line 677
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .end local v60           #cryptState:Ljava/lang/String;
    .end local v70           #firstBoot:Z
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v90           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v58       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v61       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v66       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v72       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v82       #mountService:Lcom/android/server/MountService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v101       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v105       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v114       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_994
    move-exception v67

    move-object/from16 v65, v66

    .end local v66           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v65       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_935

    .line 659
    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v53       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_998
    move-exception v67

    move-object/from16 v52, v53

    .end local v53           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v52       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto :goto_91d

    .line 618
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_99c
    move-exception v67

    move-object/from16 v44, v45

    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_8e1

    .line 594
    .end local v97           #serial:Lcom/android/server/SerialService;
    .restart local v98       #serial:Lcom/android/server/SerialService;
    :catch_9a1
    move-exception v67

    move-object/from16 v97, v98

    .end local v98           #serial:Lcom/android/server/SerialService;
    .restart local v97       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_8bd

    .line 585
    .end local v109           #usb:Lcom/android/server/usb/UsbService;
    .restart local v110       #usb:Lcom/android/server/usb/UsbService;
    :catch_9a6
    move-exception v67

    move-object/from16 v109, v110

    .end local v110           #usb:Lcom/android/server/usb/UsbService;
    .restart local v109       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_8b1

    .line 550
    .end local v114           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v115       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_9ab
    move-exception v67

    move-object/from16 v114, v115

    .end local v115           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v114       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_881

    .line 522
    .end local v58           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v59       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_9b0
    move-exception v67

    move-object/from16 v58, v59

    .end local v59           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v58       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_85d

    .line 514
    .end local v77           #location:Lcom/android/server/LocationManagerService;
    .restart local v78       #location:Lcom/android/server/LocationManagerService;
    :catch_9b5
    move-exception v67

    move-object/from16 v77, v78

    .end local v78           #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_851

    .line 498
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v89       #notification:Lcom/android/server/NotificationManagerService;
    :catch_9ba
    move-exception v67

    move-object/from16 v88, v89

    .end local v89           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_839

    .line 458
    .end local v103           #throttle:Lcom/android/server/ThrottleService;
    .restart local v104       #throttle:Lcom/android/server/ThrottleService;
    :catch_9bf
    move-exception v67

    move-object/from16 v103, v104

    .end local v104           #throttle:Lcom/android/server/ThrottleService;
    .restart local v103       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_809

    .line 440
    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v56       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_9c4
    move-exception v67

    move-object/from16 v55, v56

    .end local v56           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v55       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_7f1

    .line 427
    .end local v116           #wifi:Lcom/android/server/WifiService;
    .restart local v117       #wifi:Lcom/android/server/WifiService;
    :catch_9c9
    move-exception v67

    move-object/from16 v116, v117

    .end local v117           #wifi:Lcom/android/server/WifiService;
    .restart local v116       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_7e5

    .line 419
    .end local v118           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v119       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_9ce
    move-exception v67

    move-object/from16 v118, v119

    .end local v119           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v118       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_7d9

    .line 411
    :catch_9d3
    move-exception v67

    goto/16 :goto_7cd

    .line 401
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_9d6
    move-exception v67

    move-object/from16 v12, v85

    .end local v85           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_7bf

    .line 393
    .end local v105           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v106       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_9db
    move-exception v67

    move-object/from16 v105, v106

    .end local v106           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v105       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_7b3

    .line 369
    .end local v101           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v102       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_9e0
    move-exception v67

    move-object/from16 v101, v102

    .end local v102           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_78f

    .line 361
    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_9e5
    move-exception v67

    move-object/from16 v61, v62

    .end local v62           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v61       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_783

    .line 353
    .end local v79           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v80       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_9ea
    move-exception v67

    move-object/from16 v79, v80

    .end local v80           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v79       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_777

    .line 344
    .end local v82           #mountService:Lcom/android/server/MountService;
    .restart local v83       #mountService:Lcom/android/server/MountService;
    :catch_9ef
    move-exception v67

    move-object/from16 v82, v83

    .end local v83           #mountService:Lcom/android/server/MountService;
    .restart local v82       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_76b

    .line 330
    .end local v82           #mountService:Lcom/android/server/MountService;
    :catch_9f4
    move-exception v3

    goto/16 :goto_278

    .line 300
    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_9f7
    move-exception v67

    move-object/from16 v72, v73

    .end local v73           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v72       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_73b

    .line 277
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v58           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v65           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v77           #location:Lcom/android/server/LocationManagerService;
    .end local v79           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v101           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v105           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v114           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #power:Lcom/android/server/PowerManagerService;
    :catch_9fc
    move-exception v67

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v92

    .end local v92           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_6b0

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v60       #cryptState:Ljava/lang/String;
    .restart local v70       #firstBoot:Z
    .restart local v90       #onlyCore:Z
    :catch_a05
    move-exception v67

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_6b0

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    :catch_a0e
    move-exception v67

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v75, v76

    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_6b0

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    :catch_a17
    move-exception v67

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v75, v76

    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_6b0

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v112       #vibrator:Lcom/android/server/VibratorService;
    :catch_a1e
    move-exception v67

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v111, v112

    .end local v112           #vibrator:Lcom/android/server/VibratorService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v75, v76

    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_6b0

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v71       #hasBluetooth:Z
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v112       #vibrator:Lcom/android/server/VibratorService;
    :catch_a27
    move-exception v67

    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v111, v112

    .end local v112           #vibrator:Lcom/android/server/VibratorService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v75, v76

    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_6b0

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v112       #vibrator:Lcom/android/server/VibratorService;
    :catch_a30
    move-exception v67

    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v111, v112

    .end local v112           #vibrator:Lcom/android/server/VibratorService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v75, v76

    .end local v76           #lights:Lcom/android/server/LightsService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_6b0

    .line 245
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v76       #lights:Lcom/android/server/LightsService;
    .restart local v112       #vibrator:Lcom/android/server/VibratorService;
    :catch_a3b
    move-exception v3

    goto/16 :goto_201

    .line 198
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v71           #hasBluetooth:Z
    .end local v76           #lights:Lcom/android/server/LightsService;
    .end local v112           #vibrator:Lcom/android/server/VibratorService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    :catch_a3e
    move-exception v67

    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_6a0

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .end local v60           #cryptState:Ljava/lang/String;
    .end local v70           #firstBoot:Z
    .end local v90           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v58       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v61       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v72       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v77       #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v101       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v105       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v114       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_a43
    move-object/from16 v8, v84

    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_5c7
.end method
