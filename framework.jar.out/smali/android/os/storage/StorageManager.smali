.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$1;,
        Landroid/os/storage/StorageManager$ListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;,
        Landroid/os/storage/StorageManager$StorageEvent;,
        Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$MountServiceBinderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageManager"


# instance fields
.field private mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mMountService:Landroid/os/storage/IMountService;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field mTgtLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 5
    .parameter "tgtLooper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 300
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v2, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 301
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    .line 302
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_35

    .line 303
    const-string v0, "StorageManager"

    const-string v1, "Unable to connect to mount service! - is it running yet?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_34
    return-void

    .line 306
    :cond_35
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;

    goto :goto_34
.end method

.method static synthetic access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/storage/StorageManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result v0

    return v0
.end method

.method private getNextNonce()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method public disableUsbMassStorage()V
    .registers 4

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 391
    :goto_6
    return-void

    .line 388
    :catch_7
    move-exception v0

    .line 389
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to disable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public enableUsbMassStorage()V
    .registers 4

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 378
    :goto_6
    return-void

    .line 375
    :catch_7
    move-exception v0

    .line 376
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to enable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "filename"

    .prologue
    .line 550
    if-nez p1, :cond_a

    .line 551
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 560
    :goto_10
    return-object v1

    .line 556
    :catch_11
    move-exception v0

    .line 557
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to find mounted path for OBB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getVolumeFSLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "mountPoint"

    .prologue
    .line 619
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getVolumeFSLabel(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 622
    :goto_6
    return-object v1

    .line 620
    :catch_7
    move-exception v0

    .line 621
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get volume label"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 582
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v5, :cond_8

    new-array v4, v6, [Landroid/os/storage/StorageVolume;

    .line 594
    :cond_7
    :goto_7
    return-object v4

    .line 584
    :cond_8
    :try_start_8
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v5}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v3

    .line 585
    .local v3, list:[Landroid/os/Parcelable;
    if-nez v3, :cond_14

    const/4 v5, 0x0

    new-array v4, v5, [Landroid/os/storage/StorageVolume;

    goto :goto_7

    .line 586
    :cond_14
    array-length v2, v3

    .line 587
    .local v2, length:I
    new-array v4, v2, [Landroid/os/storage/StorageVolume;

    .line 588
    .local v4, result:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    if-ge v1, v2, :cond_7

    .line 589
    aget-object v5, v3, v1

    check-cast v5, Landroid/os/storage/StorageVolume;

    aput-object v5, v4, v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_23

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 592
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #list:[Landroid/os/Parcelable;
    .end local v4           #result:[Landroid/os/storage/StorageVolume;
    :catch_23
    move-exception v0

    .line 593
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "StorageManager"

    const-string v6, "Failed to get volume list"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    const/4 v4, 0x0

    goto :goto_7
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 604
    .local v3, volumes:[Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_8

    const/4 v2, 0x0

    .line 610
    :cond_7
    return-object v2

    .line 605
    :cond_8
    array-length v0, v3

    .line 606
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 607
    .local v2, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_7

    .line 608
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "mountPoint"

    .prologue
    .line 568
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_8

    const-string/jumbo v1, "removed"

    .line 573
    :goto_7
    return-object v1

    .line 570
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_7

    .line 571
    :catch_f
    move-exception v0

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get volume state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 5
    .parameter "filename"

    .prologue
    .line 527
    if-nez p1, :cond_a

    .line 528
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 532
    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->isObbMounted(Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    .line 537
    :goto_10
    return v1

    .line 533
    :catch_11
    move-exception v0

    .line 534
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to check if OBB is mounted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public isUsbMassStorageAllEnabled()Z
    .registers 4

    .prologue
    .line 431
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageAllEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 435
    :goto_6
    return v1

    .line 432
    :catch_7
    move-exception v0

    .line 433
    .local v0, rex:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isUsbMassStorageConnected()Z
    .registers 4

    .prologue
    .line 401
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 405
    :goto_6
    return v1

    .line 402
    :catch_7
    move-exception v0

    .line 403
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS connection state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 4

    .prologue
    .line 416
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 420
    :goto_6
    return v1

    .line 417
    :catch_7
    move-exception v0

    .line 418
    .local v0, rex:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .registers 8
    .parameter "filename"
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 461
    if-nez p1, :cond_a

    .line 462
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_a
    if-nez p3, :cond_14

    .line 466
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :cond_14
    :try_start_14
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 471
    .local v1, nonce:I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_21} :catch_23

    .line 472
    const/4 v2, 0x1

    .line 477
    .end local v1           #nonce:I
    :goto_22
    return v2

    .line 473
    :catch_23
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 318
    if-nez p1, :cond_3

    .line 335
    :goto_2
    return-void

    .line 322
    :cond_3
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 323
    :try_start_6
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_31

    if-eqz v0, :cond_25

    .line 325
    :try_start_12
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    if-nez v0, :cond_1e

    .line 326
    new-instance v0, Landroid/os/storage/StorageManager$MountServiceBinderListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$MountServiceBinderListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    .line 329
    :cond_1e
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_31
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_25} :catch_34

    .line 333
    :cond_25
    :goto_25
    :try_start_25
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    new-instance v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-direct {v2, p0, p1}, Landroid/os/storage/StorageManager$ListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    monitor-exit v1

    goto :goto_2

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_31

    throw v0

    .line 330
    :catch_34
    move-exception v0

    goto :goto_25
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .registers 8
    .parameter "filename"
    .parameter "force"
    .parameter "listener"

    .prologue
    .line 501
    if-nez p1, :cond_a

    .line 502
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_a
    if-nez p3, :cond_14

    .line 506
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :cond_14
    :try_start_14
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 511
    .local v1, nonce:I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_21} :catch_23

    .line 512
    const/4 v2, 0x1

    .line 517
    .end local v1           #nonce:I
    :goto_22
    return v2

    .line 513
    :catch_23
    move-exception v0

    .line 514
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .registers 8
    .parameter "listener"

    .prologue
    .line 345
    if-nez p1, :cond_3

    .line 365
    :goto_2
    return-void

    .line 349
    :cond_3
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 350
    :try_start_6
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 351
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v2, :cond_22

    .line 352
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager$ListenerDelegate;

    .line 353
    .local v1, l:Landroid/os/storage/StorageManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager$ListenerDelegate;->getListener()Landroid/os/storage/StorageEventListener;

    move-result-object v3

    if-ne v3, p1, :cond_3a

    .line 354
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 358
    .end local v1           #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    :cond_22
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_37

    if-eqz v3, :cond_35

    .line 360
    :try_start_2e
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v5, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-interface {v3, v5}, Landroid/os/storage/IMountService;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_3d

    .line 364
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v4

    goto :goto_2

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_37

    throw v3

    .line 351
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 361
    .end local v1           #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    :catch_3d
    move-exception v3

    goto :goto_35
.end method
