.class Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreInstallObserver"
.end annotation


# instance fields
.field final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mPackageName:Ljava/lang/String;

.field mResult:I

.field final synthetic this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V
    .registers 3
    .parameter

    .prologue
    .line 3456
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 3457
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method getResult()I
    .registers 2

    .prologue
    .line 3478
    iget v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mResult:I

    return v0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .registers 6
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3484
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3485
    :try_start_3
    iput p2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mResult:I

    .line 3486
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    .line 3487
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3488
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3489
    monitor-exit v1

    .line 3490
    return-void

    .line 3489
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 3462
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3463
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3464
    monitor-exit v1

    .line 3465
    return-void

    .line 3464
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public waitForCompletion()V
    .registers 3

    .prologue
    .line 3468
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3469
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v0

    if-nez v0, :cond_13

    .line 3471
    :try_start_b
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_3

    .line 3472
    :catch_11
    move-exception v0

    goto :goto_3

    .line 3474
    :cond_13
    :try_start_13
    monitor-exit v1

    .line 3475
    return-void

    .line 3474
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0
.end method
