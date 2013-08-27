.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceBinderListener;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$ShutdownCallBack;,
        Lcom/android/server/MountService$UmsEnableCallBack;,
        Lcom/android/server/MountService$UnmountCallBack;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$VolumeState;
    }
.end annotation


# static fields
.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field private static final DEBUG_UNMOUNT:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName; = null

.field private static final EXTERNAL_STORAGE2_PATH:Ljava/lang/String; = null

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = null

.field private static final H_UNMOUNT_MS:I = 0x3

.field private static final H_UNMOUNT_PM_DONE:I = 0x2

.field private static final H_UNMOUNT_PM_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = false

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MAX_UNMOUNT_RETRIES:I = 0x4

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final RETRY_UNMOUNT_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE:Ljava/lang/String; = "storage"

.field private static final TAG_STORAGE_LIST:Ljava/lang/String; = "StorageList"

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z


# instance fields
.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private mBooted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContext:Landroid/content/Context;

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field private mEmulateExternalStorage:Z

.field private mExternalStoragePath:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$MountServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPrevAsecMountSet:[Ljava/lang/String;

.field private mPrimaryVolume:Landroid/os/storage/StorageVolume;

.field private mSendUmsConnectedOnBoot:Z

.field private final mSharedVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageDevNode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageDevType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUmsAvailable:Z

.field private mUmsEnabling:Z

.field private final mUmsEnablingVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MountService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    .line 201
    invoke-static {}, Landroid/os/Environment;->getExternalStorage2Directory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MountService;->EXTERNAL_STORAGE2_PATH:Ljava/lang/String;

    .line 295
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1370
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mVolumeLabel:Ljava/util/Map;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mSharedVolumes:Ljava/util/ArrayList;

    .line 182
    iput-boolean v1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    .line 186
    iput-boolean v1, p0, Lcom/android/server/MountService;->mBooted:Z

    .line 187
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 188
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 189
    iput-boolean v1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mStorage:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mStorageDevType:Ljava/util/HashMap;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mStorageDevNode:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    .line 209
    iput-object v3, p0, Lcom/android/server/MountService;->mPrevAsecMountSet:[Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    .line 298
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 315
    iput-object v3, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 539
    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1371
    iput-object p1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    .line 1372
    invoke-direct {p0}, Lcom/android/server/MountService;->readStorageList()V

    .line 1374
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_b6

    .line 1375
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    .line 1376
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    .line 1377
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-eqz v0, :cond_b6

    .line 1378
    const-string v0, "MountService"

    const-string v1, "using emulated external storage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    const-string v2, "mounted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    :cond_b6
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1386
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1387
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 1390
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1392
    :cond_db
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/MountService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1394
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MountService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1395
    iget-object v0, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1396
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    .line 1399
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1406
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1408
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1409
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1415
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/MountService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeLabel:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/server/MountService;->EXTERNAL_STORAGE2_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MountService;Lcom/android/server/MountService$UnmountCallBack;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->finishMediaUpdate(Lcom/android/server/MountService$UnmountCallBack;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/MountService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/MountService;->mBooted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 9
    .parameter "obbState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2333
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2334
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2336
    .local v4, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_26

    .line 2337
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2338
    .restart local v4       #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2350
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_48

    .line 2365
    iget-object v5, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    return-void

    .line 2340
    :cond_26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 2341
    .local v3, o:Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2342
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2351
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #o:Lcom/android/server/MountService$ObbState;
    :catch_48
    move-exception v1

    .line 2356
    .local v1, e:Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2357
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 2358
    iget-object v5, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2362
    :cond_57
    throw v1
.end method

.method private doFormatVolume(Ljava/lang/String;)I
    .registers 10
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 1119
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "format"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_13
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_13} :catch_14

    .line 1128
    :goto_13
    return v2

    .line 1121
    :catch_14
    move-exception v1

    .line 1122
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1123
    .local v0, code:I
    const/16 v2, 0x191

    if-ne v0, v2, :cond_1f

    .line 1124
    const/4 v2, -0x2

    goto :goto_13

    .line 1125
    :cond_1f
    const/16 v2, 0x193

    if-ne v0, v2, :cond_25

    .line 1126
    const/4 v2, -0x4

    goto :goto_13

    .line 1128
    :cond_25
    const/4 v2, -0x1

    goto :goto_13
.end method

.method private doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "path"
    .parameter "method"

    .prologue
    const/4 v2, 0x0

    .line 1136
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "shared"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_16
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_16} :catch_2a

    move-result-object v0

    .line 1142
    .local v0, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v3

    const/16 v4, 0xd4

    if-ne v3, v4, :cond_29

    .line 1143
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1145
    .end local v0           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_29
    :goto_29
    return v2

    .line 1137
    :catch_2a
    move-exception v1

    .line 1138
    .local v1, ex:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read response to volume shared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private doMountVolume(Ljava/lang/String;)I
    .registers 11
    .parameter "path"

    .prologue
    .line 1007
    const/4 v3, 0x0

    .line 1011
    .local v3, rc:I
    :try_start_1
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_13
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_13} :catch_14

    .line 1051
    :cond_13
    :goto_13
    return v3

    .line 1012
    :catch_14
    move-exception v2

    .line 1016
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v0, 0x0

    .line 1017
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1018
    .local v1, code:I
    const/16 v4, 0x191

    if-ne v1, v4, :cond_25

    .line 1022
    const/4 v3, -0x2

    .line 1046
    :goto_1f
    if-eqz v0, :cond_13

    .line 1047
    invoke-direct {p0, v0, p1}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1023
    :cond_25
    const/16 v4, 0x192

    if-ne v1, v4, :cond_32

    .line 1028
    const-string v4, "nofs"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 1030
    const/4 v3, -0x3

    goto :goto_1f

    .line 1031
    :cond_32
    const/16 v4, 0x193

    if-ne v1, v4, :cond_3f

    .line 1036
    const-string v4, "unmountable"

    invoke-direct {p0, p1, v4}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 1038
    const/4 v3, -0x4

    goto :goto_1f

    .line 1040
    :cond_3f
    const/4 v3, -0x1

    goto :goto_1f
.end method

.method private doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "path"
    .parameter "method"
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 665
    const-string v2, "ums"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 666
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Method %s not supported"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "volume"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p3, :cond_32

    const-string v2, "share"

    :goto_26
    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    aput-object p2, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 688
    :cond_31
    :goto_31
    return-void

    .line 670
    :cond_32
    const-string v2, "unshare"
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_34} :catch_35

    goto :goto_26

    .line 671
    :catch_35
    move-exception v0

    .line 672
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Failed to share/unshare"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 674
    iget-object v3, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    monitor-enter v3

    .line 676
    :try_start_46
    iget-object v2, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    if-ltz v1, :cond_53

    .line 677
    iget-object v2, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 680
    :cond_53
    iget-object v2, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 682
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 683
    iget-object v2, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 685
    :cond_64
    monitor-exit v3

    goto :goto_31

    .end local v1           #index:I
    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_66

    throw v2
.end method

.method private doUnmountVolume(Ljava/lang/String;ZZ)I
    .registers 13
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    const/16 v4, 0x194

    const/4 v5, 0x0

    .line 1066
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "mounted"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move v3, v4

    .line 1112
    :goto_10
    return v3

    .line 1076
    :cond_11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 1079
    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1080
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v5, v5}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 1082
    :cond_25
    :try_start_25
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v3, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v3, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p3, :cond_63

    .line 1084
    const-string v3, "force_and_revert"

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1088
    :cond_3e
    :goto_3e
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;

    .line 1089
    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1091
    iget-object v6, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_4e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_25 .. :try_end_4e} :catch_6b

    .line 1098
    :try_start_4e
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/MountService;->mPrevAsecMountSet:[Ljava/lang/String;

    .line 1099
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 1100
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_4e .. :try_end_61} :catchall_74

    :cond_61
    move v3, v5

    .line 1102
    goto :goto_10

    .line 1085
    :cond_63
    if-eqz p2, :cond_3e

    .line 1086
    :try_start_65
    const-string v3, "force"

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_6a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_65 .. :try_end_6a} :catch_6b

    goto :goto_3e

    .line 1103
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :catch_6b
    move-exception v2

    .line 1106
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1107
    .local v1, code:I
    if-ne v1, v4, :cond_77

    .line 1108
    const/4 v3, -0x5

    goto :goto_10

    .line 1100
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0       #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :catchall_74
    move-exception v3

    :try_start_75
    monitor-exit v6
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    throw v3
    :try_end_77
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_76 .. :try_end_77} :catch_6b

    .line 1109
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v1       #code:I
    .restart local v2       #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_77
    const/16 v3, 0x195

    if-ne v1, v3, :cond_7d

    .line 1110
    const/4 v3, -0x7

    goto :goto_10

    .line 1112
    :cond_7d
    const/4 v3, -0x1

    goto :goto_10
.end method

.method private finishMediaUpdate(Lcom/android/server/MountService$UnmountCallBack;)V
    .registers 6
    .parameter "ucb"

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2088
    return-void
.end method

.method private getUmsEnabling()Z
    .registers 3

    .prologue
    .line 1503
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1504
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    monitor-exit v1

    return v0

    .line 1505
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 8
    .parameter "packageName"
    .parameter "callerUid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2091
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_7

    .line 2106
    :cond_6
    :goto_6
    return v1

    .line 2095
    :cond_7
    if-nez p1, :cond_b

    move v1, v2

    .line 2096
    goto :goto_6

    .line 2099
    :cond_b
    iget-object v3, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserId;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 2106
    .local v0, packageUid:I
    if-eq p2, v0, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method private notifyShareAvailabilityChange(Z)V
    .registers 9
    .parameter "avail"

    .prologue
    .line 1150
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1151
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    .line 1152
    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_d
    if-ltz v2, :cond_39

    .line 1153
    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2d

    .line 1155
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_17
    iget-object v4, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v4, p1}, Landroid/os/storage/IMountServiceListener;->onUsbMassStorageConnectionChanged(Z)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_30

    .line 1152
    :goto_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 1156
    :catch_1f
    move-exception v3

    .line 1157
    .local v3, rex:Landroid/os/RemoteException;
    :try_start_20
    const-string v4, "MountService"

    const-string v6, "Listener dead"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    .line 1163
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v3           #rex:Landroid/os/RemoteException;
    :catchall_2d
    move-exception v4

    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_2d

    throw v4

    .line 1159
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_30
    move-exception v1

    .line 1160
    .local v1, ex:Ljava/lang/Exception;
    :try_start_31
    const-string v4, "MountService"

    const-string v6, "Listener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 1163
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2d

    .line 1165
    iget-boolean v4, p0, Lcom/android/server/MountService;->mBooted:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4d

    .line 1166
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->sendUmsIntent(Z)V

    .line 1171
    :goto_42
    if-nez p1, :cond_4c

    .line 1175
    new-instance v4, Lcom/android/server/MountService$4;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$4;-><init>(Lcom/android/server/MountService;)V

    invoke-virtual {v4}, Lcom/android/server/MountService$4;->start()V

    .line 1255
    :cond_4c
    return-void

    .line 1168
    :cond_4d
    iput-boolean p1, p0, Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z

    goto :goto_42
.end method

.method private notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .parameter "label"
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v4, 0x7

    .line 931
    invoke-virtual {p0, p2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, vs:Ljava/lang/String;
    const/4 v0, 0x0

    .line 936
    .local v0, action:Ljava/lang/String;
    if-ne p3, v4, :cond_f

    if-eq p4, p3, :cond_f

    .line 938
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-direct {p0, v3, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_f
    const/4 v3, -0x1

    if-ne p4, v3, :cond_18

    .line 1001
    :cond_12
    :goto_12
    if-eqz v0, :cond_17

    .line 1002
    invoke-direct {p0, v0, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_17
    :goto_17
    return-void

    .line 942
    :cond_18
    if-eqz p4, :cond_12

    .line 944
    const/4 v3, 0x1

    if-ne p4, v3, :cond_43

    .line 949
    const-string v3, "bad_removal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "nofs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "unmountable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v3

    if-nez v3, :cond_12

    .line 954
    const-string v3, "unmounted"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    goto :goto_12

    .line 957
    :cond_43
    const/4 v3, 0x2

    if-eq p4, v3, :cond_12

    .line 958
    const/4 v3, 0x3

    if-ne p4, v3, :cond_51

    .line 960
    const-string v3, "checking"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v0, "android.intent.action.MEDIA_CHECKING"

    goto :goto_12

    .line 962
    :cond_51
    const/4 v3, 0x4

    if-ne p4, v3, :cond_5c

    .line 964
    const-string v3, "mounted"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    goto :goto_12

    .line 966
    :cond_5c
    const/4 v3, 0x5

    if-ne p4, v3, :cond_62

    .line 967
    const-string v0, "android.intent.action.MEDIA_EJECT"

    goto :goto_12

    .line 968
    :cond_62
    const/4 v3, 0x6

    if-eq p4, v3, :cond_12

    .line 969
    if-ne p4, v4, :cond_a5

    .line 972
    const-string v3, "unmounted"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {p0, v3, p2}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v3, "shared"

    invoke-direct {p0, p2, v3}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 980
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 981
    iget-object v4, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 983
    :try_start_81
    iget-object v3, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    if-ltz v1, :cond_8e

    .line 984
    iget-object v3, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 987
    :cond_8e
    iget-object v3, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 989
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 990
    iget-object v3, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 992
    :cond_9f
    monitor-exit v4

    goto/16 :goto_12

    .end local v1           #index:I
    :catchall_a2
    move-exception v3

    monitor-exit v4
    :try_end_a4
    .catchall {:try_start_81 .. :try_end_a4} :catchall_a2

    throw v3

    .line 994
    :cond_a5
    const/16 v3, 0x8

    if-ne p4, v3, :cond_b2

    .line 995
    const-string v3, "MountService"

    const-string v4, "Live shared mounts not supported yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 998
    :cond_b2
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled VolumeState {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12
.end method

.method private readStorageList()V
    .registers 28

    .prologue
    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 1285
    .local v22, resources:Landroid/content/res/Resources;
    const v17, 0x10f000c

    .line 1286
    .local v17, id:I
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 1287
    .local v19, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v19 .. v19}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    .line 1290
    .local v12, attrs:Landroid/util/AttributeSet;
    :try_start_19
    const-string v23, "StorageList"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1292
    :cond_22
    :goto_22
    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1294
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_167
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_28} :catch_15e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_1d2

    move-result-object v15

    .line 1295
    .local v15, element:Ljava/lang/String;
    if-nez v15, :cond_57

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1358
    .local v18, length:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_37
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1f3

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1358
    add-int/lit8 v16, v16, 0x1

    goto :goto_37

    .line 1297
    .end local v16           #i:I
    .end local v18           #length:I
    :cond_57
    :try_start_57
    const-string v23, "storage"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 1298
    sget-object v23, Lcom/android/internal/R$styleable;->Storage:[I

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1301
    .local v11, a:Landroid/content/res/TypedArray;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 1303
    .local v20, path:Ljava/lang/CharSequence;
    const/16 v23, 0x1

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1305
    .local v4, descriptionId:I
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1307
    .local v13, description:Ljava/lang/CharSequence;
    const/16 v23, 0x2

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    .line 1309
    .local v21, primary:Z
    const/16 v23, 0x3

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 1311
    .local v5, removable:Z
    const/16 v23, 0x4

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1313
    .local v6, emulated:Z
    const/16 v23, 0x5

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 1315
    .local v7, mtpReserve:I
    const/16 v23, 0x6

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1318
    .local v8, allowMassStorage:Z
    const/16 v23, 0x7

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x400

    mul-long v23, v23, v25

    const-wide/16 v25, 0x400

    mul-long v9, v23, v25

    .line 1321
    .local v9, maxFileSize:J
    const-string v23, "MountService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "got storage path: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " description: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " primary: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " removable: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " emulated: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mtpReserve: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " allowMassStorage: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " maxFileSize: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    if-eqz v20, :cond_152

    if-nez v13, :cond_196

    .line 1327
    :cond_152
    const-string v23, "MountService"

    const-string v24, "path or description is null in readStorageList"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :goto_159
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_15c
    .catchall {:try_start_57 .. :try_end_15c} :catchall_167
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_15c} :catch_15e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_15c} :catch_1d2

    goto/16 :goto_22

    .line 1351
    .end local v4           #descriptionId:I
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v11           #a:Landroid/content/res/TypedArray;
    .end local v13           #description:Ljava/lang/CharSequence;
    .end local v15           #element:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/CharSequence;
    .end local v21           #primary:Z
    :catch_15e
    move-exception v14

    .line 1352
    .local v14, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_15f
    new-instance v23, Ljava/lang/RuntimeException;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v23
    :try_end_167
    .catchall {:try_start_15f .. :try_end_167} :catchall_167

    .line 1357
    .end local v14           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_167
    move-exception v23

    move-object/from16 v24, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1358
    .restart local v18       #length:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_176
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1ef

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->setStorageId(I)V

    .line 1358
    add-int/lit8 v16, v16, 0x1

    goto :goto_176

    .line 1329
    .end local v16           #i:I
    .end local v18           #length:I
    .restart local v4       #descriptionId:I
    .restart local v5       #removable:Z
    .restart local v6       #emulated:Z
    .restart local v7       #mtpReserve:I
    .restart local v8       #allowMassStorage:Z
    .restart local v9       #maxFileSize:J
    .restart local v11       #a:Landroid/content/res/TypedArray;
    .restart local v13       #description:Ljava/lang/CharSequence;
    .restart local v15       #element:Ljava/lang/String;
    .restart local v20       #path:Ljava/lang/CharSequence;
    .restart local v21       #primary:Z
    :cond_196
    :try_start_196
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1330
    .local v3, pathString:Ljava/lang/String;
    new-instance v2, Landroid/os/storage/StorageVolume;

    invoke-direct/range {v2 .. v10}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;IZZIZJ)V

    .line 1333
    .local v2, volume:Landroid/os/storage/StorageVolume;
    if-eqz v21, :cond_1ad

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    if-nez v23, :cond_1db

    .line 1335
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 1340
    :cond_1ad
    :goto_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mPrimaryVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_1e3

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1346
    :goto_1c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d1
    .catchall {:try_start_196 .. :try_end_1d1} :catchall_167
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_196 .. :try_end_1d1} :catch_15e
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1d1} :catch_1d2

    goto :goto_159

    .line 1353
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v3           #pathString:Ljava/lang/String;
    .end local v4           #descriptionId:I
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v11           #a:Landroid/content/res/TypedArray;
    .end local v13           #description:Ljava/lang/CharSequence;
    .end local v15           #element:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/CharSequence;
    .end local v21           #primary:Z
    :catch_1d2
    move-exception v14

    .line 1354
    .local v14, e:Ljava/io/IOException;
    :try_start_1d3
    new-instance v23, Ljava/lang/RuntimeException;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v23
    :try_end_1db
    .catchall {:try_start_1d3 .. :try_end_1db} :catchall_167

    .line 1337
    .end local v14           #e:Ljava/io/IOException;
    .restart local v2       #volume:Landroid/os/storage/StorageVolume;
    .restart local v3       #pathString:Ljava/lang/String;
    .restart local v4       #descriptionId:I
    .restart local v5       #removable:Z
    .restart local v6       #emulated:Z
    .restart local v7       #mtpReserve:I
    .restart local v8       #allowMassStorage:Z
    .restart local v9       #maxFileSize:J
    .restart local v11       #a:Landroid/content/res/TypedArray;
    .restart local v13       #description:Ljava/lang/CharSequence;
    .restart local v15       #element:Ljava/lang/String;
    .restart local v20       #path:Ljava/lang/CharSequence;
    .restart local v21       #primary:Z
    :cond_1db
    :try_start_1db
    const-string v23, "MountService"

    const-string v24, "multiple primary volumes in storage list"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ad

    .line 1344
    :cond_1e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ee
    .catchall {:try_start_1db .. :try_end_1ee} :catchall_167
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1db .. :try_end_1ee} :catch_15e
    .catch Ljava/io/IOException; {:try_start_1db .. :try_end_1ee} :catch_1d2

    goto :goto_1c6

    .line 1361
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    .end local v3           #pathString:Ljava/lang/String;
    .end local v4           #descriptionId:I
    .end local v5           #removable:Z
    .end local v6           #emulated:Z
    .end local v7           #mtpReserve:I
    .end local v8           #allowMassStorage:Z
    .end local v9           #maxFileSize:J
    .end local v11           #a:Landroid/content/res/TypedArray;
    .end local v13           #description:Ljava/lang/CharSequence;
    .end local v15           #element:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/CharSequence;
    .end local v21           #primary:Z
    .restart local v16       #i:I
    .restart local v18       #length:I
    :cond_1ef
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1357
    throw v24

    .line 1361
    .restart local v15       #element:Ljava/lang/String;
    :cond_1f3
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1363
    return-void
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 6
    .parameter "obbState"

    .prologue
    .line 2369
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2370
    .local v0, binder:Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2371
    .local v1, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 2372
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2373
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 2375
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2376
    iget-object v2, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    :cond_22
    iget-object v2, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    return-void
.end method

.method private sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "action"
    .parameter "path"

    .prologue
    .line 1258
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1260
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "storage_volume"

    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1261
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1262
    const-string v1, "system-send"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1263
    :cond_37
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStorageIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1265
    return-void
.end method

.method private sendUmsIntent(Z)V
    .registers 5
    .parameter "c"

    .prologue
    .line 1268
    iget-object v1, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    if-eqz p1, :cond_f

    const-string v0, "android.intent.action.UMS_CONNECTED"

    :goto_8
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1270
    return-void

    .line 1268
    :cond_f
    const-string v0, "android.intent.action.UMS_DISCONNECTED"

    goto :goto_8
.end method

.method private setUmsEnabling(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1510
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/MountService;->mUmsEnabling:Z

    .line 1511
    monitor-exit v1

    .line 1512
    return-void

    .line 1511
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 692
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v6

    .line 693
    :try_start_5
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 695
    .local v3, oldState:Ljava/lang/String;
    if-nez v3, :cond_11

    .line 696
    const-string v3, "removed"

    .line 697
    :cond_11
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_2e

    .line 698
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 699
    const-string v5, "MountService"

    const-string v6, "Duplicate state transition (%s -> %s) for %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    aput-object p2, v7, v9

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_2d
    return-void

    .line 697
    .end local v3           #oldState:Ljava/lang/String;
    :catchall_2e
    move-exception v5

    :try_start_2f
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v5

    .line 704
    .restart local v3       #oldState:Ljava/lang/String;
    :cond_31
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "volume state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v5, p0, Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 708
    iget-boolean v5, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    if-nez v5, :cond_88

    .line 709
    const-string v5, "unmounted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 710
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v8, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 717
    iget-object v5, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v6, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, p1}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 724
    :cond_88
    :goto_88
    iget-object v6, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 725
    :try_start_8b
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_93
    if-ltz v2, :cond_cd

    .line 726
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;
    :try_end_9d
    .catchall {:try_start_8b .. :try_end_9d} :catchall_c1

    .line 728
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_9d
    iget-object v5, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v5, p1, v3, p2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_9d .. :try_end_a2} :catchall_c1
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a2} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_c4

    .line 725
    :goto_a2
    add-int/lit8 v2, v2, -0x1

    goto :goto_93

    .line 719
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    :cond_a5
    const-string v5, "mounted"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 720
    iget-object v5, p0, Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v9, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_88

    .line 729
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_b3
    move-exception v4

    .line 730
    .local v4, rex:Landroid/os/RemoteException;
    :try_start_b4
    const-string v5, "MountService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v5, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a2

    .line 736
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v2           #i:I
    .end local v4           #rex:Landroid/os/RemoteException;
    :catchall_c1
    move-exception v5

    monitor-exit v6
    :try_end_c3
    .catchall {:try_start_b4 .. :try_end_c3} :catchall_c1

    throw v5

    .line 732
    .restart local v0       #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .restart local v2       #i:I
    :catch_c4
    move-exception v1

    .line 733
    .local v1, ex:Ljava/lang/Exception;
    :try_start_c5
    const-string v5, "MountService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a2

    .line 736
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_cd
    monitor-exit v6
    :try_end_ce
    .catchall {:try_start_c5 .. :try_end_ce} :catchall_c1

    goto/16 :goto_2d
.end method

.method private validatePermission(Ljava/lang/String;)V
    .registers 6
    .parameter "perm"

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1274
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1276
    :cond_1a
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .registers 6
    .parameter "latch"

    .prologue
    .line 521
    if-nez p1, :cond_29

    .line 528
    :goto_2
    return-void

    .line 530
    :cond_3
    :try_start_3
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " still waiting for MountService ready..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_29
    :goto_29
    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_30} :catch_34

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 533
    :catch_34
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Interrupt while waiting for MountService to be ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private waitForReady()V
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 518
    return-void
.end method

.method private warnOnNotMounted()Z
    .registers 3

    .prologue
    .line 1812
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1813
    const-string v0, "MountService"

    const-string v1, "getSecureContainerList() called when storage not mounted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    const/4 v0, 0x1

    .line 1816
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public changeEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .parameter "password"

    .prologue
    .line 2264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2268
    :cond_e
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2279
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2280
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_34} :catch_36

    move-result v2

    .line 2283
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_35
    return v2

    .line 2281
    :catch_36
    move-exception v0

    .line 2283
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_35
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 14
    .parameter "id"
    .parameter "sizeMb"
    .parameter "fstype"
    .parameter "key"
    .parameter "ownerUid"
    .parameter "external"

    .prologue
    .line 1834
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1835
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1836
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 1838
    const/4 v1, 0x0

    .line 1840
    .local v1, rc:I
    :try_start_c
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    aput-object p4, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_45

    const-string v2, "1"

    :goto_34
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_39
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_39} :catch_48

    .line 1846
    :goto_39
    if-nez v1, :cond_44

    .line 1847
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 1848
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1849
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_4b

    .line 1851
    :cond_44
    return v1

    .line 1840
    :cond_45
    :try_start_45
    const-string v2, "0"
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_45 .. :try_end_47} :catch_48

    goto :goto_34

    .line 1842
    :catch_48
    move-exception v0

    .line 1843
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_39

    .line 1849
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 10
    .parameter "password"

    .prologue
    .line 2200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2201
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2204
    :cond_e
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2215
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "checkpw"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2217
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2218
    .local v0, code:I
    if-nez v0, :cond_43

    .line 2221
    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/MountService$5;

    invoke-direct {v4, p0}, Lcom/android/server/MountService$5;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_43
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_43} :catch_44

    .line 2235
    .end local v0           #code:I
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :cond_43
    :goto_43
    return v0

    .line 2233
    :catch_44
    move-exception v1

    .line 2235
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    goto :goto_43
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .parameter "id"
    .parameter "force"

    .prologue
    .line 1889
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1890
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1891
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 1899
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 1901
    const/4 v3, 0x0

    .line 1903
    .local v3, rc:I
    :try_start_13
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1904
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2c

    .line 1905
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1907
    :cond_2c
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_31} :catch_45

    .line 1917
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_31
    if-nez v3, :cond_44

    .line 1918
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 1919
    :try_start_36
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1920
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1922
    :cond_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_52

    .line 1925
    :cond_44
    return v3

    .line 1908
    :catch_45
    move-exception v2

    .line 1909
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1910
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_50

    .line 1911
    const/4 v3, -0x7

    goto :goto_31

    .line 1913
    :cond_50
    const/4 v3, -0x1

    goto :goto_31

    .line 1922
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_52
    move-exception v4

    :try_start_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2812
    iget-object v10, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3f

    .line 2813
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump ActivityManager from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " without permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    :goto_3e
    return-void

    .line 2819
    :cond_3f
    iget-object v11, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v11

    .line 2820
    :try_start_42
    const-string v10, "  mObbMounts:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2822
    iget-object v10, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2823
    .local v1, binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_95

    .line 2824
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2825
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    const-string v10, "    Key="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2827
    .local v8, obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/MountService$ObbState;

    .line 2828
    .local v7, obbState:Lcom/android/server/MountService$ObbState;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    .line 2840
    .end local v1           #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #obbState:Lcom/android/server/MountService$ObbState;
    .end local v8           #obbStates:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_92
    move-exception v10

    monitor-exit v11
    :try_end_94
    .catchall {:try_start_42 .. :try_end_94} :catchall_92

    throw v10

    .line 2832
    .restart local v1       #binders:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :cond_95
    :try_start_95
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    const-string v10, "  mObbPathToStateMap:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    iget-object v10, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2835
    .local v6, maps:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_a9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 2836
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2837
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2838
    const-string v10, " -> "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/MountService$ObbState;

    invoke-virtual {v10}, Lcom/android/server/MountService$ObbState;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a9

    .line 2840
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_d6
    monitor-exit v11
    :try_end_d7
    .catchall {:try_start_95 .. :try_end_d7} :catchall_92

    .line 2842
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    iget-object v11, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v11

    .line 2845
    :try_start_df
    const-string v10, "  mVolumes:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2848
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_eb
    if-ge v4, v0, :cond_104

    .line 2849
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageVolume;

    .line 2850
    .local v9, v:Landroid/os/storage/StorageVolume;
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2851
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    add-int/lit8 v4, v4, 0x1

    goto :goto_eb

    .line 2853
    .end local v9           #v:Landroid/os/storage/StorageVolume;
    :cond_104
    monitor-exit v11
    :try_end_105
    .catchall {:try_start_df .. :try_end_105} :catchall_114

    .line 2855
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2856
    const-string v10, "  mConnection:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2857
    iget-object v10, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 2853
    .end local v0           #N:I
    .end local v4           #i:I
    :catchall_114
    move-exception v10

    :try_start_115
    monitor-exit v11
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v10
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 9
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 2240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2241
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2244
    :cond_f
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2254
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "enablecrypto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "inplace"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_32} :catch_33

    .line 2260
    :goto_32
    return v1

    .line 2255
    :catch_33
    move-exception v0

    .line 2257
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    goto :goto_32
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 9
    .parameter "id"

    .prologue
    .line 1855
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1856
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 1858
    const/4 v1, 0x0

    .line 1860
    .local v1, rc:I
    :try_start_9
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 1868
    :goto_1b
    return v1

    .line 1865
    :catch_1c
    move-exception v0

    .line 1866
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1b
.end method

.method public finishMediaUpdate()V
    .registers 5

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    sget-object v3, Lcom/android/server/MountService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2082
    return-void
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .parameter "id"
    .parameter "gid"
    .parameter "filename"

    .prologue
    .line 1872
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1873
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 1875
    const/4 v1, 0x0

    .line 1877
    .local v1, rc:I
    :try_start_9
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_25} :catch_26

    .line 1885
    :goto_25
    return v1

    .line 1882
    :catch_26
    move-exception v0

    .line 1883
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_25
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 1779
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1780
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1782
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllVolume()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1708
    iget-object v2, p0, Lcom/android/server/MountService;->mStorage:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1709
    :try_start_3
    iget-object v0, p0, Lcom/android/server/MountService;->mStorage:Ljava/util/ArrayList;

    .line 1710
    .local v0, storagelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v2

    .line 1711
    return-object v0

    .line 1710
    .end local v0           #storagelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_7
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getEncryptionState()I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 2178
    iget-object v3, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2185
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2186
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_24} :catch_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_2f

    move-result v2

    .line 2194
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_25
    return v2

    .line 2187
    :catch_26
    move-exception v0

    .line 2189
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 2191
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2f
    move-exception v0

    .line 2193
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "filename"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2110
    if-nez p1, :cond_c

    .line 2111
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "filename cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2114
    :cond_c
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2115
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 2119
    :try_start_12
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "obb"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2120
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2121
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_2d} :catch_2f

    move-result-object v3

    .line 2125
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_2e
    return-object v3

    .line 2122
    :catch_2f
    move-exception v1

    .line 2123
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2124
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_3a

    .line 2125
    const/4 v3, 0x0

    goto :goto_2e

    .line 2127
    :cond_3a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2057
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2058
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2059
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 2063
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2064
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2065
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_28} :catch_2a

    move-result-object v3

    .line 2070
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_29
    return-object v3

    .line 2066
    :catch_2a
    move-exception v1

    .line 2067
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2068
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_44

    .line 2069
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const/4 v3, 0x0

    goto :goto_29

    .line 2072
    :cond_44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1820
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1821
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1822
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 1825
    :try_start_c
    iget-object v1, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_21} :catch_23

    move-result-object v1

    .line 1828
    :goto_22
    return-object v1

    .line 1827
    :catch_23
    move-exception v0

    .line 1828
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    new-array v1, v6, [Ljava/lang/String;

    goto :goto_22
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2036
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2037
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2038
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 2042
    :try_start_d
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2043
    .local v2, event:Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2044
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_28} :catch_2a

    move-result-object v3

    .line 2049
    .end local v2           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_29
    return-object v3

    .line 2045
    :catch_2a
    move-exception v1

    .line 2046
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2047
    .local v0, code:I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_44

    .line 2048
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    const/4 v3, 0x0

    goto :goto_29

    .line 2051
    :cond_44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 14
    .parameter "path"

    .prologue
    const/4 v11, 0x0

    .line 1786
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1787
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1789
    :try_start_9
    iget-object v6, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 1794
    .local v4, r:[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 1795
    .local v0, data:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    array-length v6, v4

    if-ge v2, v6, :cond_55

    .line 1796
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_30} :catch_56

    move-result-object v5

    .line 1798
    .local v5, tok:[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_32
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3a} :catch_3d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_32 .. :try_end_3a} :catch_56

    .line 1795
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1799
    :catch_3d
    move-exception v3

    .line 1800
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :try_start_3e
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_55
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3e .. :try_end_55} :catch_56

    .line 1807
    .end local v0           #data:[I
    .end local v2           #i:I
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #r:[Ljava/lang/String;
    .end local v5           #tok:[Ljava/lang/String;
    :cond_55
    :goto_55
    return-object v0

    .line 1805
    :catch_56
    move-exception v1

    .line 1806
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1807
    new-array v0, v11, [I

    goto :goto_55
.end method

.method public getVolumeFSLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "mountPoint"

    .prologue
    const/4 v2, 0x0

    .line 1693
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume label "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1698
    .local v1, label:[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    .line 1702
    .end local v1           #label:[Ljava/lang/String;
    :goto_20
    return-object v2

    .line 1700
    .restart local v1       #label:[Ljava/lang/String;
    :cond_21
    const/4 v3, 0x0

    aget-object v2, v1, v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    goto :goto_20

    .line 1701
    .end local v1           #label:[Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 1702
    .local v0, e:Ljava/lang/Exception;
    goto :goto_20
.end method

.method public getVolumeLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "mountPoint"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/server/MountService;->mVolumeLabel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeList()[Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 2322
    iget-object v4, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2323
    :try_start_3
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2324
    .local v2, size:I
    new-array v1, v2, [Landroid/os/Parcelable;

    .line 2325
    .local v1, result:[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v2, :cond_1b

    .line 2326
    iget-object v3, p0, Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    aput-object v3, v1, v0

    .line 2325
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2328
    :cond_1b
    monitor-exit v4

    return-object v1

    .line 2329
    .end local v0           #i:I
    .end local v1           #result:[Landroid/os/Parcelable;
    .end local v2           #size:I
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v3
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "mountPoint"

    .prologue
    .line 1667
    iget-object v2, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1668
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1669
    .local v0, state:Ljava/lang/String;
    if-nez v0, :cond_49

    .line 1670
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Unknown volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const-string v1, "/storage/sd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "/mnt/sd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4b

    .line 1674
    :cond_47
    const-string v0, "removed"

    .line 1680
    :cond_49
    monitor-exit v2

    return-object v0

    .line 1676
    :cond_4b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1681
    .end local v0           #state:Ljava/lang/String;
    :catchall_51
    move-exception v1

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public getVolumeUUID(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "mountPoint"

    .prologue
    const/4 v2, 0x0

    .line 1732
    :try_start_1
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume UUID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1737
    .local v0, UUID:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    .line 1741
    .end local v0           #UUID:[Ljava/lang/String;
    :goto_20
    return-object v2

    .line 1739
    .restart local v0       #UUID:[Ljava/lang/String;
    :cond_21
    const/4 v3, 0x0

    aget-object v2, v0, v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    goto :goto_20

    .line 1740
    .end local v0           #UUID:[Ljava/lang/String;
    :catch_25
    move-exception v1

    .line 1741
    .local v1, e:Ljava/lang/Exception;
    goto :goto_20
.end method

.method public getVolumedevnode(Ljava/lang/String;)I
    .registers 5
    .parameter "mountPoint"

    .prologue
    .line 1724
    iget-object v2, p0, Lcom/android/server/MountService;->mStorage:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1725
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mStorageDevNode:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1726
    .local v0, devnode:I
    monitor-exit v2

    .line 1727
    return v0

    .line 1726
    .end local v0           #devnode:I
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getVolumedevtype(Ljava/lang/String;)I
    .registers 5
    .parameter "mountPoint"

    .prologue
    .line 1716
    iget-object v2, p0, Lcom/android/server/MountService;->mStorage:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1717
    :try_start_3
    iget-object v1, p0, Lcom/android/server/MountService;->mStorageDevType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1718
    .local v0, devtype:I
    monitor-exit v2

    .line 1719
    return v0

    .line 1718
    .end local v0           #devtype:I
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    .prologue
    .line 1746
    iget-boolean v0, p0, Lcom/android/server/MountService;->mEmulateExternalStorage:Z

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .parameter "filename"

    .prologue
    .line 2133
    if-nez p1, :cond_a

    .line 2134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2137
    :cond_a
    iget-object v1, p0, Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2138
    :try_start_d
    iget-object v0, p0, Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2139
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 2001
    const-string v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2002
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2003
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 2005
    iget-object v1, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 2006
    :try_start_e
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2007
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0
.end method

.method public isUsbMassStorageAllEnabled()Z
    .registers 5

    .prologue
    .line 1653
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1654
    iget-object v3, p0, Lcom/android/server/MountService;->mSharedVolumes:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1655
    :try_start_6
    iget-object v2, p0, Lcom/android/server/MountService;->mSharedVolumes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1656
    .local v1, path:Ljava/lang/String;
    const-string v2, "ums"

    invoke-direct {p0, v1, v2}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1657
    const/4 v2, 0x0

    monitor-exit v3

    .line 1661
    .end local v1           #path:Ljava/lang/String;
    :goto_22
    return v2

    .line 1660
    :cond_23
    monitor-exit v3

    .line 1661
    const/4 v2, 0x1

    goto :goto_22

    .line 1660
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public isUsbMassStorageConnected()Z
    .registers 3

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1517
    invoke-direct {p0}, Lcom/android/server/MountService;->getUmsEnabling()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1518
    const/4 v0, 0x1

    .line 1521
    :goto_a
    return v0

    .line 1520
    :cond_b
    iget-object v1, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1521
    :try_start_e
    iget-boolean v0, p0, Lcom/android/server/MountService;->mUmsAvailable:Z

    monitor-exit v1

    goto :goto_a

    .line 1522
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 8

    .prologue
    .line 1636
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1639
    iget-object v6, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v6

    .line 1640
    :try_start_6
    iget-object v5, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1641
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 1642
    .local v0, count:I
    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1643
    .local v4, paths:[Ljava/lang/String;
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_28

    .line 1644
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v0, :cond_2e

    .line 1645
    aget-object v3, v4, v1

    .line 1646
    .local v3, path:Ljava/lang/String;
    const-string v5, "ums"

    invoke-direct {p0, v3, v5}, Lcom/android/server/MountService;->doGetVolumeShared(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1647
    const/4 v5, 0x1

    .line 1649
    .end local v3           #path:Ljava/lang/String;
    :goto_27
    return v5

    .line 1643
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #paths:[Ljava/lang/String;
    :catchall_28
    move-exception v5

    :try_start_29
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v5

    .line 1644
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #paths:[Ljava/lang/String;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1649
    .end local v3           #path:Ljava/lang/String;
    :cond_2e
    const/4 v5, 0x0

    goto :goto_27
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 2863
    iget-object v0, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 2865
    :cond_9
    return-void
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 12
    .parameter "filename"
    .parameter "key"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2144
    if-nez p1, :cond_a

    .line 2145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2148
    :cond_a
    if-nez p3, :cond_14

    .line 2149
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "token cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2152
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2153
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2154
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;)V

    .line 2155
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2159
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .parameter "id"
    .parameter "key"
    .parameter "ownerUid"

    .prologue
    .line 1929
    const-string v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1930
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1931
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 1933
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 1934
    :try_start_e
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1935
    const/4 v2, -0x6

    monitor-exit v4

    .line 1954
    :cond_18
    :goto_18
    return v2

    .line 1937
    :cond_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_46

    .line 1939
    const/4 v2, 0x0

    .line 1941
    .local v2, rc:I
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_37
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_37} :catch_49

    .line 1949
    :cond_37
    :goto_37
    if-nez v2, :cond_18

    .line 1950
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 1951
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1952
    monitor-exit v4

    goto :goto_18

    :catchall_43
    move-exception v3

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_43

    throw v3

    .line 1937
    .end local v2           #rc:I
    :catchall_46
    move-exception v3

    :try_start_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v3

    .line 1942
    .restart local v2       #rc:I
    :catch_49
    move-exception v1

    .line 1943
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 1944
    .local v0, code:I
    const/16 v3, 0x195

    if-eq v0, v3, :cond_37

    .line 1945
    const/4 v2, -0x1

    goto :goto_37
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 1750
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1752
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1753
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    .prologue
    .line 748
    new-instance v0, Lcom/android/server/MountService$2;

    const-string v1, "MountService#onDaemonConnected"

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/MountService$2;->start()V

    .line 808
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 20
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 826
    const/16 v11, 0x25d

    move/from16 v0, p1

    if-ne v0, v11, :cond_6c

    .line 832
    const/4 v11, 0x2

    aget-object v11, p3, v11

    const/4 v12, 0x3

    aget-object v12, p3, v12

    const/4 v13, 0x7

    aget-object v13, p3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0xa

    aget-object v14, p3, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V

    .line 836
    const/4 v11, 0x4

    const/16 v12, 0xa

    aget-object v12, p3, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-ne v11, v12, :cond_67

    .line 838
    const/16 v11, 0xc

    aget-object v11, p3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 839
    .local v5, devtype:I
    const/16 v11, 0xe

    aget-object v11, p3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 840
    .local v4, devnode:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mStorage:Ljava/util/ArrayList;

    monitor-enter v12

    .line 841
    :try_start_40
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mStorage:Ljava/util/ArrayList;

    const/4 v13, 0x3

    aget-object v13, p3, v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mStorageDevNode:Ljava/util/HashMap;

    const/4 v13, 0x3

    aget-object v13, p3, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mStorageDevType:Ljava/util/HashMap;

    const/4 v13, 0x3

    aget-object v13, p3, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    monitor-exit v12

    .line 927
    .end local v4           #devnode:I
    .end local v5           #devtype:I
    :cond_67
    :goto_67
    const/4 v11, 0x1

    :goto_68
    return v11

    .line 844
    .restart local v4       #devnode:I
    .restart local v5       #devtype:I
    :catchall_69
    move-exception v11

    monitor-exit v12
    :try_end_6b
    .catchall {:try_start_40 .. :try_end_6b} :catchall_69

    throw v11

    .line 846
    .end local v4           #devnode:I
    .end local v5           #devtype:I
    :cond_6c
    const/16 v11, 0x276

    move/from16 v0, p1

    if-eq v0, v11, :cond_7e

    const/16 v11, 0x277

    move/from16 v0, p1

    if-eq v0, v11, :cond_7e

    const/16 v11, 0x278

    move/from16 v0, p1

    if-ne v0, v11, :cond_149

    .line 852
    :cond_7e
    const/4 v1, 0x0

    .line 853
    .local v1, action:Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v7, p3, v11

    .line 854
    .local v7, label:Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v10, p3, v11

    .line 855
    .local v10, path:Ljava/lang/String;
    const/4 v8, -0x1

    .line 856
    .local v8, major:I
    const/4 v9, -0x1

    .line 859
    .local v9, minor:I
    const/4 v11, 0x6

    :try_start_88
    aget-object v11, p3, v11

    const/4 v12, 0x1

    const/4 v13, 0x6

    aget-object v13, p3, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 860
    .local v2, devComp:Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, devTok:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 862
    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_ab} :catch_c4

    move-result v9

    .line 867
    .end local v2           #devComp:Ljava/lang/String;
    .end local v3           #devTok:[Ljava/lang/String;
    :goto_ac
    const/16 v11, 0x276

    move/from16 v0, p1

    if-ne v0, v11, :cond_cd

    .line 868
    new-instance v11, Lcom/android/server/MountService$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/MountService$3;->start()V

    .line 920
    :goto_bc
    if-eqz v1, :cond_67

    .line 921
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 863
    :catch_c4
    move-exception v6

    .line 864
    .local v6, ex:Ljava/lang/Exception;
    const-string v11, "MountService"

    const-string v12, "Failed to parse major/minor"

    invoke-static {v11, v12, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ac

    .line 886
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_cd
    const/16 v11, 0x277

    move/from16 v0, p1

    if-ne v0, v11, :cond_119

    .line 890
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "bad_removal"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e3

    .line 891
    const/4 v11, 0x1

    goto :goto_68

    .line 895
    :cond_e3
    const-string v11, "unmounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v11, "unmounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v11, "removed"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService;->mStorage:Ljava/util/ArrayList;

    monitor-enter v12

    .line 902
    :try_start_fd
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 903
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mStorageDevNode:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService;->mStorageDevType:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    monitor-exit v12
    :try_end_113
    .catchall {:try_start_fd .. :try_end_113} :catchall_116

    .line 906
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    goto :goto_bc

    .line 905
    :catchall_116
    move-exception v11

    :try_start_117
    monitor-exit v12
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    throw v11

    .line 907
    :cond_119
    const/16 v11, 0x278

    move/from16 v0, p1

    if-ne v0, v11, :cond_132

    .line 910
    const-string v11, "unmounted"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 914
    const-string v11, "bad_removal"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto :goto_bc

    .line 917
    :cond_132
    const-string v11, "MountService"

    const-string v12, "Unknown code {%d}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 924
    .end local v1           #action:Ljava/lang/String;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #major:I
    .end local v9           #minor:I
    .end local v10           #path:Ljava/lang/String;
    :cond_149
    const/4 v11, 0x0

    goto/16 :goto_68
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 1422
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1423
    :try_start_3
    new-instance v0, Lcom/android/server/MountService$MountServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MountService$MountServiceBinderListener;-><init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_20

    .line 1425
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :try_start_8
    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1426
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 1430
    :goto_15
    :try_start_15
    monitor-exit v3

    .line 1431
    return-void

    .line 1427
    :catch_17
    move-exception v1

    .line 1428
    .local v1, rex:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v4, "Failed to link to listener death"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1430
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    .end local v1           #rex:Landroid/os/RemoteException;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "oldId"
    .parameter "newId"

    .prologue
    .line 2011
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 2012
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2013
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 2015
    iget-object v3, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2020
    :try_start_e
    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2021
    :cond_1e
    const/4 v1, -0x6

    monitor-exit v3

    .line 2032
    :goto_20
    return v1

    .line 2023
    :cond_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_3c

    .line 2025
    const/4 v1, 0x0

    .line 2027
    .local v1, rc:I
    :try_start_23
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_38} :catch_39

    goto :goto_20

    .line 2028
    :catch_39
    move-exception v0

    .line 2029
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_20

    .line 2023
    .end local v0           #e:Lcom/android/server/NativeDaemonConnectorException;
    .end local v1           #rc:I
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 15
    .parameter "enable"

    .prologue
    const/4 v12, 0x1

    .line 1527
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1528
    const-string v9, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v9}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1532
    iget-object v10, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1533
    :try_start_c
    iget-object v9, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1535
    monitor-exit v10
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_3b

    .line 1539
    iget-object v10, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v10

    .line 1540
    :try_start_15
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1541
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 1542
    .local v0, count:I
    new-array v9, v0, [Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1543
    .local v5, paths:[Ljava/lang/String;
    new-array v6, v0, [Ljava/lang/String;

    .line 1544
    .local v6, states:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    if-ge v1, v0, :cond_3e

    .line 1545
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    aget-object v11, v5, v1

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v6, v1
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_69

    .line 1544
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1535
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #paths:[Ljava/lang/String;
    .end local v6           #states:[Ljava/lang/String;
    :catchall_3b
    move-exception v9

    :try_start_3c
    monitor-exit v10
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v9

    .line 1547
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v6       #states:[Ljava/lang/String;
    :cond_3e
    :try_start_3e
    monitor-exit v10
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_69

    .line 1548
    if-eqz p1, :cond_88

    .line 1549
    iget-object v9, p0, Lcom/android/server/MountService;->mSharedVolumes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1551
    const/4 v1, 0x0

    :goto_47
    if-ge v1, v0, :cond_88

    .line 1552
    aget-object v4, v5, v1

    .line 1553
    .local v4, path:Ljava/lang/String;
    aget-object v8, v6, v1

    .line 1554
    .local v8, vs:Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 1556
    invoke-direct {p0, p1}, Lcom/android/server/MountService;->setUmsEnabling(Z)V

    .line 1557
    iget-object v10, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1558
    :try_start_5b
    iget-object v9, p0, Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    iget-object v9, p0, Lcom/android/server/MountService;->mSharedVolumes:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    monitor-exit v10
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_6c

    .line 1551
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 1547
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #paths:[Ljava/lang/String;
    .end local v6           #states:[Ljava/lang/String;
    .end local v8           #vs:Ljava/lang/String;
    :catchall_69
    move-exception v9

    :try_start_6a
    monitor-exit v10
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v9

    .line 1561
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v6       #states:[Ljava/lang/String;
    .restart local v8       #vs:Ljava/lang/String;
    :catchall_6c
    move-exception v9

    :try_start_6d
    monitor-exit v10
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v9

    .line 1564
    :cond_6f
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not adding?? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 1568
    .end local v4           #path:Ljava/lang/String;
    .end local v8           #vs:Ljava/lang/String;
    :cond_88
    const/4 v1, 0x0

    :goto_89
    if-ge v1, v0, :cond_f2

    .line 1569
    aget-object v4, v5, v1

    .line 1570
    .restart local v4       #path:Ljava/lang/String;
    aget-object v8, v6, v1

    .line 1571
    .restart local v8       #vs:Ljava/lang/String;
    const-string v3, "ums"

    .line 1576
    .local v3, method:Ljava/lang/String;
    if-eqz p1, :cond_b8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 1577
    sget-object v9, Lcom/android/server/MountService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 1568
    :cond_a3
    :goto_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 1579
    :cond_a6
    new-instance v7, Lcom/android/server/MountService$UmsEnableCallBack;

    const-string v9, "ums"

    invoke-direct {v7, p0, v4, v9, v12}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1580
    .local v7, umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v12, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1585
    .end local v7           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_b8
    if-nez p1, :cond_a3

    .line 1586
    sget-object v9, Lcom/android/server/MountService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 1588
    const-string v9, "ums"

    invoke-direct {p0, v4, v9, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1589
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_a3

    .line 1590
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to remount "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " after disabling share method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ums"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 1601
    .end local v3           #method:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v8           #vs:Ljava/lang/String;
    :cond_f2
    const/4 v1, 0x0

    :goto_f3
    if-ge v1, v0, :cond_15c

    .line 1602
    aget-object v4, v5, v1

    .line 1603
    .restart local v4       #path:Ljava/lang/String;
    aget-object v8, v6, v1

    .line 1604
    .restart local v8       #vs:Ljava/lang/String;
    const-string v3, "ums"

    .line 1609
    .restart local v3       #method:Ljava/lang/String;
    if-eqz p1, :cond_122

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_122

    .line 1610
    sget-object v9, Lcom/android/server/MountService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_110

    .line 1601
    :cond_10d
    :goto_10d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f3

    .line 1612
    :cond_110
    new-instance v7, Lcom/android/server/MountService$UmsEnableCallBack;

    const-string v9, "ums"

    invoke-direct {v7, p0, v4, v9, v12}, Lcom/android/server/MountService$UmsEnableCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1613
    .restart local v7       #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    iget-object v9, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v12, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1618
    .end local v7           #umscb:Lcom/android/server/MountService$UmsEnableCallBack;
    :cond_122
    if-nez p1, :cond_10d

    .line 1619
    sget-object v9, Lcom/android/server/MountService;->EXTERNAL_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10d

    .line 1621
    const-string v9, "ums"

    invoke-direct {p0, v4, v9, p1}, Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1622
    invoke-direct {p0, v4}, Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_10d

    .line 1623
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to remount "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " after disabling share method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ums"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 1633
    .end local v3           #method:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v8           #vs:Ljava/lang/String;
    :cond_15c
    return-void
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .registers 14
    .parameter "observer"

    .prologue
    .line 1445
    const-string v8, "android.permission.SHUTDOWN"

    invoke-direct {p0, v8}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1447
    const-string v8, "MountService"

    const-string v9, "Shutting down"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object v9, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    monitor-enter v9

    .line 1449
    :try_start_f
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1450
    .local v3, path:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1452
    .local v6, state:Ljava/lang/String;
    const-string v8, "shared"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1460
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 1482
    :cond_39
    :goto_39
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 1484
    new-instance v7, Lcom/android/server/MountService$ShutdownCallBack;

    invoke-direct {v7, p0, v3, p1}, Lcom/android/server/MountService$ShutdownCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V

    .line 1485
    .local v7, ucb:Lcom/android/server/MountService$ShutdownCallBack;
    iget-object v8, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_19

    .line 1499
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #path:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #ucb:Lcom/android/server/MountService$ShutdownCallBack;
    :catchall_53
    move-exception v8

    monitor-exit v9
    :try_end_55
    .catchall {:try_start_f .. :try_end_55} :catchall_53

    throw v8

    .line 1461
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #path:Ljava/lang/String;
    .restart local v6       #state:Ljava/lang/String;
    :cond_56
    :try_start_56
    const-string v8, "checking"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 1467
    const/16 v4, 0x1e

    .local v4, retries:I
    move v5, v4

    .line 1468
    .end local v4           #retries:I
    .local v5, retries:I
    :goto_61
    const-string v8, "checking"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_53

    move-result v8

    if-eqz v8, :cond_9c

    add-int/lit8 v4, v5, -0x1

    .end local v5           #retries:I
    .restart local v4       #retries:I
    if-ltz v5, :cond_80

    .line 1470
    const-wide/16 v10, 0x3e8

    :try_start_6f
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_53
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_72} :catch_78

    .line 1475
    :try_start_72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    move v5, v4

    .end local v4           #retries:I
    .restart local v5       #retries:I
    goto :goto_61

    .line 1471
    .end local v5           #retries:I
    .restart local v4       #retries:I
    :catch_78
    move-exception v2

    .line 1472
    .local v2, iex:Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v10, "Interrupted while waiting for media"

    invoke-static {v8, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1477
    .end local v2           #iex:Ljava/lang/InterruptedException;
    :cond_80
    :goto_80
    if-nez v4, :cond_39

    .line 1478
    const-string v8, "MountService"

    const-string v10, "Timed out waiting for media to check"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_72 .. :try_end_89} :catchall_53

    goto :goto_39

    .line 1486
    .end local v4           #retries:I
    :cond_8a
    if-eqz p1, :cond_19

    .line 1493
    const/4 v8, 0x0

    :try_start_8d
    invoke-interface {p1, v8}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_19

    .line 1494
    :catch_91
    move-exception v0

    .line 1495
    .local v0, e:Landroid/os/RemoteException;
    :try_start_92
    const-string v8, "MountService"

    const-string v10, "RemoteException when shutting down"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1499
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #path:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    :cond_9a
    monitor-exit v9
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_53

    .line 1500
    return-void

    .restart local v3       #path:Ljava/lang/String;
    .restart local v5       #retries:I
    .restart local v6       #state:Ljava/lang/String;
    :cond_9c
    move v4, v5

    .end local v5           #retries:I
    .restart local v4       #retries:I
    goto :goto_80
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 12
    .parameter "filename"
    .parameter "force"
    .parameter "token"
    .parameter "nonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2163
    if-nez p1, :cond_a

    .line 2164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2167
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2168
    .local v3, callerUid:I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2169
    .local v0, obbState:Lcom/android/server/MountService$ObbState;
    new-instance v6, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2170
    .local v6, action:Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2174
    return-void
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .parameter "id"
    .parameter "force"

    .prologue
    .line 1958
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1959
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1960
    invoke-direct {p0}, Lcom/android/server/MountService;->warnOnNotMounted()Z

    .line 1962
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 1963
    :try_start_e
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1964
    const/4 v3, -0x5

    monitor-exit v5

    .line 1997
    :cond_18
    :goto_18
    return v3

    .line 1966
    :cond_19
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_4f

    .line 1974
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 1976
    const/4 v3, 0x0

    .line 1978
    .local v3, rc:I
    :try_start_22
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "unmount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1979
    .local v0, cmd:Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_3b

    .line 1980
    const-string v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1982
    :cond_3b
    iget-object v4, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_40} :catch_52

    .line 1992
    .end local v0           #cmd:Lcom/android/server/NativeDaemonConnector$Command;
    :goto_40
    if-nez v3, :cond_18

    .line 1993
    iget-object v5, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 1994
    :try_start_45
    iget-object v4, p0, Lcom/android/server/MountService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1995
    monitor-exit v5

    goto :goto_18

    :catchall_4c
    move-exception v4

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4c

    throw v4

    .line 1966
    .end local v3           #rc:I
    :catchall_4f
    move-exception v4

    :try_start_50
    monitor-exit v5
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v4

    .line 1983
    .restart local v3       #rc:I
    :catch_52
    move-exception v2

    .line 1984
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 1985
    .local v1, code:I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_5d

    .line 1986
    const/4 v3, -0x7

    goto :goto_40

    .line 1988
    :cond_5d
    const/4 v3, -0x1

    goto :goto_40
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 9
    .parameter "path"
    .parameter "force"
    .parameter "removeEncryption"

    .prologue
    .line 1757
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/MountService;->validatePermission(Ljava/lang/String;)V

    .line 1758
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 1760
    invoke-virtual {p0, p1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1766
    .local v1, volState:Ljava/lang/String;
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1776
    :cond_2c
    :goto_2c
    return-void

    .line 1774
    :cond_2d
    new-instance v0, Lcom/android/server/MountService$UnmountCallBack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 1775
    .local v0, ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v2, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 7
    .parameter "listener"

    .prologue
    .line 1434
    iget-object v3, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1435
    :try_start_3
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$MountServiceBinderListener;

    .line 1436
    .local v0, bl:Lcom/android/server/MountService$MountServiceBinderListener;
    iget-object v2, v0, Lcom/android/server/MountService$MountServiceBinderListener;->mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v2}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_9

    .line 1437
    iget-object v2, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1438
    monitor-exit v3

    .line 1442
    .end local v0           #bl:Lcom/android/server/MountService$MountServiceBinderListener;
    :goto_2d
    return-void

    .line 1441
    :cond_2e
    monitor-exit v3

    goto :goto_2d

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_10

    .line 2294
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2297
    :cond_10
    iget-object v2, p0, Lcom/android/server/MountService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2301
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2304
    :cond_27
    invoke-direct {p0}, Lcom/android/server/MountService;->waitForReady()V

    .line 2312
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2313
    .local v1, event:Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_60
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2a .. :try_end_60} :catch_62

    move-result v2

    .line 2317
    .end local v1           #event:Lcom/android/server/NativeDaemonEvent;
    :goto_61
    return v2

    .line 2315
    :catch_62
    move-exception v0

    .line 2317
    .local v0, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_61
.end method

.method waitForAsecScan()V
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/server/MountService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 514
    return-void
.end method
