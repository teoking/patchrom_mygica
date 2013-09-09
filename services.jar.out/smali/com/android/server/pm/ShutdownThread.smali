.class public final Lcom/android/server/pm/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static final sInstance:Lcom/android/server/pm/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 78
    new-instance v0, Lcom/android/server/pm/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/pm/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 200
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 201
    :try_start_6
    sget-boolean v3, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_13

    .line 202
    const-string v3, "ShutdownThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v4

    .line 258
    :goto_12
    return-void

    .line 205
    :cond_13
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    .line 206
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_a8

    .line 207
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/media/shutdownanimation.zip"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    .line 208
    .local v2, showShutdownAnim:Z
    if-eqz v2, :cond_ab

    .line 209
    const-string v3, "ShutdownThread"

    const-string v4, "shutdownanim"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v3, "service.bootanim.exit"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "ctl.start"

    const-string v4, "shutdownanim"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_39
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object p0, v3, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    .line 226
    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 229
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v7, v3, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 231
    :try_start_4d
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 233
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 234
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_6b} :catch_d8

    .line 241
    :goto_6b
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v7, v3, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 242
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 244
    :try_start_79
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    sget-object v4, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/pm/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "ShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 246
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 247
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_98
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_98} :catch_e5

    .line 255
    :cond_98
    :goto_98
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    new-instance v4, Lcom/android/server/pm/ShutdownThread$2;

    invoke-direct {v4}, Lcom/android/server/pm/ShutdownThread$2;-><init>()V

    iput-object v4, v3, Lcom/android/server/pm/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 257
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    invoke-virtual {v3}, Lcom/android/server/pm/ShutdownThread;->start()V

    goto/16 :goto_12

    .line 206
    .end local v2           #showShutdownAnim:Z
    :catchall_a8
    move-exception v3

    :try_start_a9
    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v3

    .line 215
    .restart local v2       #showShutdownAnim:Z
    :cond_ab
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 216
    .local v1, pd:Landroid/app/ProgressDialog;
    const v3, 0x104012a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    const v3, 0x104012e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 219
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 220
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 222
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_39

    .line 235
    .end local v1           #pd:Landroid/app/ProgressDialog;
    :catch_d8
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v7, v3, Lcom/android/server/pm/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_6b

    .line 248
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_e5
    move-exception v0

    .line 249
    .restart local v0       #e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    sget-object v3, Lcom/android/server/pm/ShutdownThread;->sInstance:Lcom/android/server/pm/ShutdownThread;

    iput-object v7, v3, Lcom/android/server/pm/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_98
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 181
    sput-object p1, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 182
    invoke-static {p0, p2}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 183
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .registers 7
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 503
    if-eqz p0, :cond_31

    .line 504
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :try_start_1a
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_28

    .line 528
    :goto_1d
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Lcom/android/server/PowerManagerService;->lowLevelShutdown()V

    .line 530
    return-void

    .line 507
    :catch_28
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 512
    .end local v0           #e:Ljava/lang/Exception;
    :cond_31
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 514
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_38
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_43

    .line 522
    :goto_3b
    const-wide/16 v2, 0x1f4

    :try_start_3d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_1d

    .line 523
    :catch_41
    move-exception v2

    goto :goto_1d

    .line 515
    :catch_43
    move-exception v0

    .line 517
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x1

    .line 193
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 194
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 195
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 196
    invoke-static {p0, p1}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 197
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v0, 0x0

    .line 100
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    .line 101
    sput-boolean v0, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    .line 102
    invoke-static {p0, p1}, Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 103
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .registers 9
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 108
    sget-object v5, Lcom/android/server/pm/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 109
    :try_start_3
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_10

    .line 110
    const-string v4, "ShutdownThread"

    const-string v6, "Request to shutdown already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    monitor-exit v5

    .line 146
    :goto_f
    return-void

    .line 113
    :cond_10
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_80

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 117
    .local v2, longPressBehavior:I
    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_83

    const v3, 0x1040132

    .line 123
    .local v3, resourceId:I
    :goto_23
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz p1, :cond_92

    .line 126
    new-instance v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v4, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_8e

    const v4, 0x1040131

    :goto_4e
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/server/pm/ShutdownThread$1;

    invoke-direct {v6, p0}, Lcom/android/server/pm/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 139
    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, v0, Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 140
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 141
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 142
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_f

    .line 113
    .end local v0           #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    :catchall_80
    move-exception v4

    :try_start_81
    monitor-exit v5
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v4

    .line 117
    .restart local v2       #longPressBehavior:I
    :cond_83
    const/4 v4, 0x2

    if-ne v2, v4, :cond_8a

    const v3, 0x1040130

    goto :goto_23

    :cond_8a
    const v3, 0x104012f

    goto :goto_23

    .line 127
    .restart local v0       #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    .restart local v3       #resourceId:I
    :cond_8e
    const v4, 0x104012a

    goto :goto_4e

    .line 144
    .end local v0           #closer:Lcom/android/server/pm/ShutdownThread$CloseDialogReceiver;
    :cond_92
    invoke-static {p0}, Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_f
.end method

.method private shutdownRadios(I)V
    .registers 10
    .parameter "timeout"

    .prologue
    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 384
    .local v1, endTime:J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 385
    .local v0, done:[Z
    new-instance v3, Lcom/android/server/pm/ShutdownThread$5;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/server/pm/ShutdownThread$5;-><init>(Lcom/android/server/pm/ShutdownThread;J[Z)V

    .line 485
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 487
    int-to-long v4, p1

    :try_start_13
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_23

    .line 490
    :goto_16
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_22

    .line 491
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_22
    return-void

    .line 488
    :catch_23
    move-exception v4

    goto :goto_16
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 263
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 264
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 22

    .prologue
    .line 272
    new-instance v5, Lcom/android/server/pm/ShutdownThread$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/pm/ShutdownThread$3;-><init>(Lcom/android/server/pm/ShutdownThread;)V

    .line 278
    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/media/shutdownanimation.zip"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 280
    const-wide/16 v2, 0x1388

    :try_start_16
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_138

    .line 291
    :cond_19
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_103

    const-string v2, "1"

    :goto_24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_107

    sget-object v2, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_2e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 292
    .local v20, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_48

    .line 300
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_48
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v16, v2, v6

    .line 311
    .local v16, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 312
    :goto_77
    :try_start_77
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_90

    .line 313
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v16, v6

    .line 314
    .local v11, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_10b

    .line 315
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v11           #delay:J
    :cond_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_77 .. :try_end_91} :catchall_117

    .line 325
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 329
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_a9

    .line 331
    const/16 v2, 0x2710

    :try_start_a6
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_a9} :catch_13b

    .line 337
    :cond_a9
    :goto_a9
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/pm/ShutdownThread;->shutdownRadios(I)V

    .line 340
    new-instance v19, Lcom/android/server/pm/ShutdownThread$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShutdownThread$4;-><init>(Lcom/android/server/pm/ShutdownThread;)V

    .line 347
    .local v19, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    .line 351
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v14, v2, v6

    .line 352
    .local v14, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 354
    :try_start_d2
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v18

    .line 356
    .local v18, mount:Landroid/os/storage/IMountService;
    if-eqz v18, :cond_11a

    .line 357
    invoke-interface/range {v18 .. v19}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_e1
    .catchall {:try_start_d2 .. :try_end_e1} :catchall_12b
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e1} :catch_122

    .line 364
    .end local v18           #mount:Landroid/os/storage/IMountService;
    :goto_e1
    :try_start_e1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_fa

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v14, v6

    .line 366
    .restart local v11       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_12e

    .line 367
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v11           #delay:J
    :cond_fa
    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_e1 .. :try_end_fb} :catchall_12b

    .line 377
    sget-boolean v2, Lcom/android/server/pm/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/pm/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 378
    return-void

    .line 291
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v14           #endShutTime:J
    .end local v16           #endTime:J
    .end local v19           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v20           #reason:Ljava/lang/String;
    :cond_103
    const-string v2, "0"

    goto/16 :goto_24

    :cond_107
    const-string v2, ""

    goto/16 :goto_2e

    .line 319
    .restart local v11       #delay:J
    .restart local v16       #endTime:J
    .restart local v20       #reason:Ljava/lang/String;
    :cond_10b
    :try_start_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_112
    .catchall {:try_start_10b .. :try_end_112} :catchall_117
    .catch Ljava/lang/InterruptedException; {:try_start_10b .. :try_end_112} :catch_114

    goto/16 :goto_77

    .line 320
    :catch_114
    move-exception v2

    goto/16 :goto_77

    .line 323
    .end local v11           #delay:J
    :catchall_117
    move-exception v2

    :try_start_118
    monitor-exit v3
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw v2

    .line 359
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v14       #endShutTime:J
    .restart local v18       #mount:Landroid/os/storage/IMountService;
    .restart local v19       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_11a
    :try_start_11a
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_11a .. :try_end_121} :catchall_12b
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_121} :catch_122

    goto :goto_e1

    .line 361
    .end local v18           #mount:Landroid/os/storage/IMountService;
    :catch_122
    move-exception v13

    .line 362
    .local v13, e:Ljava/lang/Exception;
    :try_start_123
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e1

    .line 375
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_12b
    move-exception v2

    monitor-exit v3
    :try_end_12d
    .catchall {:try_start_123 .. :try_end_12d} :catchall_12b

    throw v2

    .line 371
    .restart local v11       #delay:J
    :cond_12e
    :try_start_12e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_135
    .catchall {:try_start_12e .. :try_end_135} :catchall_12b
    .catch Ljava/lang/InterruptedException; {:try_start_12e .. :try_end_135} :catch_136

    goto :goto_e1

    .line 372
    :catch_136
    move-exception v2

    goto :goto_e1

    .line 281
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v11           #delay:J
    .end local v14           #endShutTime:J
    .end local v16           #endTime:J
    .end local v19           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v20           #reason:Ljava/lang/String;
    :catch_138
    move-exception v2

    goto/16 :goto_19

    .line 332
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v16       #endTime:J
    .restart local v20       #reason:Ljava/lang/String;
    :catch_13b
    move-exception v2

    goto/16 :goto_a9
.end method
