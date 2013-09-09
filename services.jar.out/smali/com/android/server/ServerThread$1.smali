.class Lcom/android/server/ServerThread$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$bluetoothF:Landroid/server/BluetoothService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$contextF:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$dreamyF:Landroid/service/dreams/DreamManagerService;

.field final synthetic val$headless:Z

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$throttleF:Lcom/android/server/ThrottleService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;Landroid/content/Context;ZLcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V
    .registers 28
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    iput-object p2, p0, Lcom/android/server/ServerThread$1;->val$contextF:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/server/ServerThread$1;->val$headless:Z

    iput-object p4, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p5, p0, Lcom/android/server/ServerThread$1;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p6, p0, Lcom/android/server/ServerThread$1;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p7, p0, Lcom/android/server/ServerThread$1;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p8, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p9, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p10, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p11, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p12, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    iput-object p13, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iput-boolean p14, p0, Lcom/android/server/ServerThread$1;->val$safeMode:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$dreamyF:Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$bluetoothF:Landroid/server/BluetoothService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 784
    const-string v2, "SystemServer"

    const-string v3, "Making services ready"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v1, Lcom/android/server/RemoteControlService;

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$contextF:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/RemoteControlService;-><init>(Landroid/content/Context;)V

    .line 786
    .local v1, remoteControlService:Lcom/android/server/RemoteControlService;
    iget-boolean v2, p0, Lcom/android/server/ServerThread$1;->val$headless:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$contextF:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    .line 788
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v2}, Lcom/android/server/BatteryService;->systemReady()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_20} :catch_d9

    .line 793
    :cond_20
    :goto_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v2}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_e3

    .line 798
    :cond_29
    :goto_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_32} :catch_ed

    .line 803
    :cond_32
    :goto_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3b} :catch_f7

    .line 808
    :cond_3b
    :goto_3b
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_44} :catch_101

    .line 813
    :cond_44
    :goto_44
    :try_start_44
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v2}, Lcom/android/server/DockObserver;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4d} :catch_10b

    .line 818
    :cond_4d
    :goto_4d
    :try_start_4d
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_56} :catch_115

    .line 823
    :cond_56
    :goto_56
    :try_start_56
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5f} :catch_11f

    .line 828
    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v2}, Lcom/android/server/RecognitionManagerService;->systemReady()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_68} :catch_129

    .line 832
    :cond_68
    :goto_68
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 838
    :try_start_6f
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v3, p0, Lcom/android/server/ServerThread$1;->val$safeMode:Z

    invoke-virtual {v2, v3}, Lcom/android/server/AppWidgetService;->systemReady(Z)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_7a} :catch_133

    .line 843
    :cond_7a
    :goto_7a
    :try_start_7a
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v2}, Lcom/android/server/WallpaperManagerService;->systemReady()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_83} :catch_13d

    .line 848
    :cond_83
    :goto_83
    :try_start_83
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/InputMethodManagerService;->systemReady(Lcom/android/server/StatusBarManagerService;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8e} :catch_147

    .line 853
    :cond_8e
    :goto_8e
    :try_start_8e
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v2, :cond_97

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService;->systemReady()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_97} :catch_151

    .line 858
    :cond_97
    :goto_97
    :try_start_97
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v2}, Lcom/android/server/CountryDetectorService;->systemReady()V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_a0} :catch_15b

    .line 863
    :cond_a0
    :goto_a0
    :try_start_a0
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    invoke-virtual {v2}, Lcom/android/server/ThrottleService;->systemReady()V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a9} :catch_165

    .line 868
    :cond_a9
    :goto_a9
    :try_start_a9
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v2, :cond_b2

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v2}, Lcom/android/server/NetworkTimeUpdateService;->systemReady()V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_b2} :catch_16f

    .line 873
    :cond_b2
    :goto_b2
    :try_start_b2
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v2, :cond_bb

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v2}, Lcom/android/server/CommonTimeManagementService;->systemReady()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_bb} :catch_179

    .line 878
    :cond_bb
    :goto_bb
    :try_start_bb
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v2, :cond_c4

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService;->systemReady()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c4} :catch_183

    .line 883
    :cond_c4
    :goto_c4
    :try_start_c4
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$dreamyF:Landroid/service/dreams/DreamManagerService;

    if-eqz v2, :cond_cd

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$dreamyF:Landroid/service/dreams/DreamManagerService;

    invoke-virtual {v2}, Landroid/service/dreams/DreamManagerService;->systemReady()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_cd} :catch_18d

    .line 888
    :cond_cd
    :goto_cd
    :try_start_cd
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v2, :cond_d8

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/ServerThread$1;->val$bluetoothF:Landroid/server/BluetoothService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->systemReady(Landroid/server/BluetoothService;)V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_d8} :catch_197

    .line 892
    :cond_d8
    :goto_d8
    return-void

    .line 789
    :catch_d9
    move-exception v0

    .line 790
    .local v0, e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Battery Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 794
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_e3
    move-exception v0

    .line 795
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Network Managment Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 799
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_ed
    move-exception v0

    .line 800
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Network Stats Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 804
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_f7
    move-exception v0

    .line 805
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Network Policy Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 809
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_101
    move-exception v0

    .line 810
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Connectivity Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 814
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_10b
    move-exception v0

    .line 815
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Dock Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 819
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_115
    move-exception v0

    .line 820
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making USB Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .line 824
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_11f
    move-exception v0

    .line 825
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making UI Mode Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    .line 829
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_129
    move-exception v0

    .line 830
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Recognition Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    .line 839
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_133
    move-exception v0

    .line 840
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making App Widget Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7a

    .line 844
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_13d
    move-exception v0

    .line 845
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Wallpaper Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_83

    .line 849
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_147
    move-exception v0

    .line 850
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Input Method Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e

    .line 854
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_151
    move-exception v0

    .line 855
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Location Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_97

    .line 859
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_15b
    move-exception v0

    .line 860
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Country Detector Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a0

    .line 864
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_165
    move-exception v0

    .line 865
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Throttle Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a9

    .line 869
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_16f
    move-exception v0

    .line 870
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Network Time Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b2

    .line 874
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_179
    move-exception v0

    .line 875
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Common time management service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_bb

    .line 879
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_183
    move-exception v0

    .line 880
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making Text Services Manager Service ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c4

    .line 884
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_18d
    move-exception v0

    .line 885
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making DreamManagerService ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_cd

    .line 889
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_197
    move-exception v0

    .line 890
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v3, "making InputManagerService ready"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d8
.end method
