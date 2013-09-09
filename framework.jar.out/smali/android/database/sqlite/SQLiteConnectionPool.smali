.class public final Landroid/database/sqlite/SQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;,
        Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONNECTION_FLAG_INTERACTIVE:I = 0x4

.field public static final CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY:I = 0x2

.field public static final CONNECTION_FLAG_READ_ONLY:I = 0x1

.field private static final CONNECTION_POOL_BUSY_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "SQLiteConnectionPool"


# instance fields
.field public db:I

.field private final mAcquiredConnections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteConnection;",
            "Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableNonPrimaryConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mMaxConnectionPoolSize:I

.field private mNextConnectionId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const-class v0, Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/database/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 3
    .parameter "configuration"

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 150
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 151
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 152
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    return-void
.end method

.method private cancelConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .registers 5
    .parameter "waiter"

    .prologue
    .line 710
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    if-nez v2, :cond_8

    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    if-eqz v2, :cond_9

    .line 735
    :cond_8
    :goto_8
    return-void

    .line 716
    :cond_9
    const/4 v1, 0x0

    .line 717
    .local v1, predecessor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 718
    .local v0, current:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_c
    if-eq v0, p1, :cond_1e

    .line 719
    sget-boolean v2, Landroid/database/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    if-nez v2, :cond_1a

    if-nez v0, :cond_1a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 720
    :cond_1a
    move-object v1, v0

    .line 721
    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_c

    .line 723
    :cond_1e
    if-eqz v1, :cond_34

    .line 724
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 730
    :goto_24
    new-instance v2, Landroid/os/OperationCanceledException;

    invoke-direct {v2}, Landroid/os/OperationCanceledException;-><init>()V

    iput-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 731
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 734
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_8

    .line 726
    :cond_34
    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_24
.end method

.method private closeAvailableConnectionsAndLogExceptionsLocked()V
    .registers 2

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 501
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v0, :cond_f

    .line 502
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 505
    :cond_f
    return-void
.end method

.method private closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V
    .registers 4

    .prologue
    .line 509
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 510
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 511
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 513
    :cond_17
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 514
    return-void
.end method

.method private closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 6
    .parameter "connection"

    .prologue
    .line 529
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 534
    :goto_3
    return-void

    .line 530
    :catch_4
    move-exception v0

    .line 531
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close connection, its fate is now in the hands of the merciful GC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private closeExcessConnectionsAndLogExceptionsLocked()V
    .registers 5

    .prologue
    .line 518
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 519
    .local v0, availableCount:I
    :goto_6
    add-int/lit8 v1, v0, -0x1

    .end local v0           #availableCount:I
    .local v1, availableCount:I
    iget v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_1b

    .line 520
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 522
    .local v2, connection:Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    move v0, v1

    .line 523
    .end local v1           #availableCount:I
    .restart local v0       #availableCount:I
    goto :goto_6

    .line 524
    .end local v0           #availableCount:I
    .end local v2           #connection:Landroid/database/sqlite/SQLiteConnection;
    .restart local v1       #availableCount:I
    :cond_1b
    return-void
.end method

.method private discardAcquiredConnectionsLocked()V
    .registers 2

    .prologue
    .line 538
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 539
    return-void
.end method

.method private dispose(Z)V
    .registers 7
    .parameter "finalized"

    .prologue
    .line 210
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_10

    .line 211
    if-eqz p1, :cond_b

    .line 212
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 214
    :cond_b
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 217
    :cond_10
    if-nez p1, :cond_5c

    .line 222
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 223
    :try_start_15
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 227
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 229
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    .line 230
    .local v0, pendingCount:I
    if-eqz v0, :cond_58

    .line 231
    const-string v1, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The connection pool for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been closed but there are still "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connections in use.  They will be closed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "as they are released back to the pool."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_58
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 238
    monitor-exit v2

    .line 240
    .end local v0           #pendingCount:I
    :cond_5c
    return-void

    .line 238
    :catchall_5d
    move-exception v1

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_15 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V
    .registers 8
    .parameter "connection"
    .parameter "connectionFlags"

    .prologue
    .line 909
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    .line 910
    .local v1, readOnly:Z
    :goto_5
    :try_start_5
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteConnection;->setOnlyAllowReadOnlyOperations(Z)V

    .line 912
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    sget-object v3, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_f} :catch_12

    .line 919
    return-void

    .line 909
    .end local v1           #readOnly:Z
    :cond_10
    const/4 v1, 0x0

    goto :goto_5

    .line 913
    .restart local v1       #readOnly:Z
    :catch_12
    move-exception v0

    .line 914
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to prepare acquired connection for session, closing it: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connectionFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 917
    throw v0
.end method

.method private static getPriority(I)I
    .registers 2
    .parameter "connectionFlags"

    .prologue
    .line 946
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    .registers 6
    .parameter "holdingPrimaryConnection"
    .parameter "connectionFlags"

    .prologue
    .line 923
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 924
    .local v1, waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v1, :cond_c

    .line 925
    invoke-static {p2}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v0

    .line 928
    .local v0, priority:I
    :cond_8
    iget v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v0, v2, :cond_e

    .line 942
    .end local v0           #priority:I
    :cond_c
    :goto_c
    const/4 v2, 0x0

    :goto_d
    return v2

    .line 935
    .restart local v0       #priority:I
    :cond_e
    if-nez p1, :cond_14

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v2, :cond_16

    .line 936
    :cond_14
    const/4 v2, 0x1

    goto :goto_d

    .line 939
    :cond_16
    iget-object v1, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 940
    if-nez v1, :cond_8

    goto :goto_c
.end method

.method private logConnectionPoolBusyLocked(JI)V
    .registers 17
    .parameter "waitMillis"
    .parameter "connectionFlags"

    .prologue
    .line 739
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    .line 740
    .local v9, thread:Ljava/lang/Thread;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    .local v6, msg:Ljava/lang/StringBuilder;
    const-string v10, "The connection pool for database \'"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v11, v11, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string v10, "\' has been unable to grant a connection to thread "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string/jumbo v10, "with flags 0x"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string v10, " for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    long-to-float v11, p1

    const v12, 0x3a83126f

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " seconds.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v8, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 749
    .local v0, activeConnections:I
    const/4 v5, 0x0

    .line 750
    .local v5, idleConnections:I
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8c

    .line 751
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_71
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteConnection;

    .line 752
    .local v2, connection:Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection;->describeCurrentOperationUnsafe()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, description:Ljava/lang/String;
    if-eqz v3, :cond_89

    .line 754
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 757
    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    .line 761
    .end local v2           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v3           #description:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_8c
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 762
    .local v1, availableConnections:I
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v10, :cond_98

    .line 763
    add-int/lit8 v1, v1, 0x1

    .line 766
    :cond_98
    const-string v10, "Connections: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " active, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " idle, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " available.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e4

    .line 771
    const-string v10, "\nRequests in progress:\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_c8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 773
    .local v7, request:Ljava/lang/String;
    const-string v10, "  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 777
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #request:Ljava/lang/String;
    :cond_e4
    const-string v10, "SQLiteConnectionPool"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method private markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V
    .registers 10
    .parameter "status"

    .prologue
    .line 573
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_50

    .line 574
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    .local v3, keysToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 578
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 579
    .local v4, oldStatus:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-eq p1, v4, :cond_1d

    sget-object v6, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-eq v4, v6, :cond_1d

    .line 581
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 584
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v4           #oldStatus:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_3d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 585
    .local v5, updateCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_42
    if-ge v1, v5, :cond_50

    .line 586
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 589
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #keysToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteConnection;>;"
    .end local v5           #updateCount:I
    :cond_50
    return-void
.end method

.method private obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .registers 11
    .parameter "thread"
    .parameter "startTime"
    .parameter "priority"
    .parameter "wantPrimaryConnection"
    .parameter "sql"
    .parameter "connectionFlags"

    .prologue
    const/4 v2, 0x0

    .line 970
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 971
    .local v0, waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v0, :cond_18

    .line 972
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 973
    iput-object v2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 977
    :goto_b
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 978
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 979
    iput p4, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 980
    iput-boolean p5, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    .line 981
    iput-object p6, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 982
    iput p7, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    .line 983
    return-object v0

    .line 975
    :cond_18
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .end local v0           #waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>(Landroid/database/sqlite/SQLiteConnectionPool$1;)V

    .restart local v0       #waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    goto :goto_b
.end method

.method public static open(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;
    .registers 4
    .parameter "configuration"

    .prologue
    .line 172
    if-nez p0, :cond_a

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "configuration must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_a
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteConnectionPool;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 178
    .local v0, pool:Landroid/database/sqlite/SQLiteConnectionPool;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->open()V

    .line 179
    return-object v0
.end method

.method private open()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 188
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    iget v0, v0, Landroid/database/sqlite/SQLiteConnection;->db:I

    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->db:I

    .line 190
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 191
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;
    .registers 5
    .parameter "configuration"
    .parameter "primaryConnection"

    .prologue
    .line 463
    iget v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    .line 464
    .local v0, connectionId:I
    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteConnection;->open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    return-object v1
.end method

.method private reconfigureAllConnectionsLocked()V
    .registers 9

    .prologue
    .line 543
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v5, :cond_b

    .line 545
    :try_start_4
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_27

    .line 554
    :cond_b
    :goto_b
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 555
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_13
    if-ge v4, v1, :cond_71

    .line 556
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 558
    .local v0, connection:Landroid/database/sqlite/SQLiteConnection;
    :try_start_1d
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_22} :catch_4b

    move v3, v4

    .line 555
    .end local v4           #i:I
    .restart local v3       #i:I
    :goto_23
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_13

    .line 546
    .end local v0           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v1           #count:I
    .end local v4           #i:I
    :catch_27
    move-exception v2

    .line 547
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v5, "SQLiteConnectionPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to reconfigure available primary connection, closing it: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 550
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    goto :goto_b

    .line 559
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v0       #connection:Landroid/database/sqlite/SQLiteConnection;
    .restart local v1       #count:I
    .restart local v4       #i:I
    :catch_4b
    move-exception v2

    .line 560
    .restart local v2       #ex:Ljava/lang/RuntimeException;
    const-string v5, "SQLiteConnectionPool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to reconfigure available non-primary connection, closing it: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 563
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 568
    .end local v0           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_71
    sget-object v5, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 569
    return-void
.end method

.method private recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z
    .registers 7
    .parameter "connection"
    .parameter "status"

    .prologue
    .line 395
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v1, :cond_9

    .line 397
    :try_start_4
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteConnection;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_12

    .line 404
    :cond_9
    :goto_9
    sget-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v1, :cond_2e

    .line 405
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 406
    const/4 v1, 0x0

    .line 408
    :goto_11
    return v1

    .line 398
    :catch_12
    move-exception v0

    .line 399
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "SQLiteConnectionPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reconfigure released connection, closing it: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    sget-object p2, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    goto :goto_9

    .line 408
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_2e
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .registers 4
    .parameter "waiter"

    .prologue
    const/4 v1, 0x0

    .line 987
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 988
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 989
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 990
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 991
    iput-object v1, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 992
    iget v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 993
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 994
    return-void
.end method

.method private setMaxConnectionPoolSizeLocked()V
    .registers 3

    .prologue
    .line 950
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 951
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALConnectionPoolSize()I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 959
    :goto_f
    return-void

    .line 957
    :cond_10
    const/4 v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    goto :goto_f
.end method

.method private throwIfClosedLocked()V
    .registers 3

    .prologue
    .line 962
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v0, :cond_c

    .line 963
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the connection pool has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_c
    return-void
.end method

.method private tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;
    .registers 9
    .parameter "sql"
    .parameter "connectionFlags"

    .prologue
    .line 872
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 873
    .local v0, availableCount:I
    const/4 v4, 0x1

    if-le v0, v4, :cond_28

    if-eqz p1, :cond_28

    .line 876
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v0, :cond_28

    .line 877
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteConnection;

    .line 878
    .local v1, connection:Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteConnection;->isPreparedStatementInCache(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 879
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 880
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    .line 903
    .end local v1           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v2           #i:I
    :goto_24
    return-object v1

    .line 876
    .restart local v1       #connection:Landroid/database/sqlite/SQLiteConnection;
    .restart local v2       #i:I
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 885
    .end local v1           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v2           #i:I
    :cond_28
    if-lez v0, :cond_38

    .line 887
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteConnection;

    .line 888
    .restart local v1       #connection:Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    goto :goto_24

    .line 893
    .end local v1           #connection:Landroid/database/sqlite/SQLiteConnection;
    :cond_38
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    .line 894
    .local v3, openConnections:I
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v4, :cond_44

    .line 895
    add-int/lit8 v3, v3, 0x1

    .line 897
    :cond_44
    iget v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    if-lt v3, v4, :cond_4a

    .line 898
    const/4 v1, 0x0

    goto :goto_24

    .line 900
    :cond_4a
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .line 902
    .restart local v1       #connection:Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    goto :goto_24
.end method

.method private tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;
    .registers 7
    .parameter "connectionFlags"

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 846
    .local v1, connection:Landroid/database/sqlite/SQLiteConnection;
    if-eqz v1, :cond_c

    .line 847
    iput-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 848
    invoke-direct {p0, v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    move-object v3, v1

    .line 864
    :goto_b
    return-object v3

    .line 853
    :cond_c
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 854
    .local v0, acquiredConnection:Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_b

    .line 861
    .end local v0           #acquiredConnection:Landroid/database/sqlite/SQLiteConnection;
    :cond_29
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .line 863
    invoke-direct {p0, v1, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Landroid/database/sqlite/SQLiteConnection;I)V

    move-object v3, v1

    .line 864
    goto :goto_b
.end method

.method private waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .registers 28
    .parameter "sql"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 594
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_29

    const/4 v8, 0x1

    .line 599
    .local v8, wantPrimaryConnection:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 600
    :try_start_c
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 603
    if-eqz p3, :cond_14

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 608
    :cond_14
    const/4 v13, 0x0

    .line 609
    .local v13, connection:Landroid/database/sqlite/SQLiteConnection;
    if-nez v8, :cond_1b

    .line 610
    invoke-direct/range {p0 .. p2}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v13

    .line 613
    :cond_1b
    if-nez v13, :cond_25

    .line 614
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v13

    .line 616
    :cond_25
    if-eqz v13, :cond_2b

    .line 617
    monitor-exit v23

    .line 703
    :cond_28
    :goto_28
    return-object v13

    .line 594
    .end local v8           #wantPrimaryConnection:Z
    .end local v13           #connection:Landroid/database/sqlite/SQLiteConnection;
    :cond_29
    const/4 v8, 0x0

    goto :goto_5

    .line 621
    .restart local v8       #wantPrimaryConnection:Z
    .restart local v13       #connection:Landroid/database/sqlite/SQLiteConnection;
    :cond_2b
    invoke-static/range {p2 .. p2}, Landroid/database/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v7

    .line 622
    .local v7, priority:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 623
    .local v5, startTime:J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Landroid/database/sqlite/SQLiteConnectionPool;->obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-result-object v22

    .line 625
    .local v22, waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/16 v20, 0x0

    .line 626
    .local v20, predecessor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object/from16 v21, v0

    .line 627
    .local v21, successor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_49
    if-eqz v21, :cond_57

    .line 628
    move-object/from16 v0, v21

    iget v3, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v7, v3, :cond_c9

    .line 629
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 635
    :cond_57
    if-eqz v20, :cond_d3

    .line 636
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 641
    :goto_5f
    move-object/from16 v0, v22

    iget v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    move/from16 v17, v0

    .line 642
    .local v17, nonce:I
    monitor-exit v23
    :try_end_66
    .catchall {:try_start_c .. :try_end_66} :catchall_da

    .line 645
    if-eqz p3, :cond_78

    .line 646
    new-instance v3, Landroid/database/sqlite/SQLiteConnectionPool$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-direct {v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$1;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 660
    :cond_78
    const-wide/16 v11, 0x7530

    .line 661
    .local v11, busyTimeoutMillis:J
    :try_start_7a
    move-object/from16 v0, v22

    iget-wide v3, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    add-long v15, v3, v11

    .line 664
    .local v15, nextBusyTimeoutTime:J
    :goto_80
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_91
    .catchall {:try_start_7a .. :try_end_91} :catchall_e0

    .line 666
    :try_start_91
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 667
    monitor-exit v4
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_dd

    .line 671
    :cond_95
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v11

    :try_start_99
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 674
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_e0

    .line 678
    :try_start_a6
    invoke-direct/range {p0 .. p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 680
    move-object/from16 v0, v22

    iget-object v13, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 681
    move-object/from16 v0, v22

    iget-object v14, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 682
    .local v14, ex:Ljava/lang/RuntimeException;
    if-nez v13, :cond_b5

    if-eqz v14, :cond_ee

    .line 683
    :cond_b5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionWaiterLocked(Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 684
    if-eqz v13, :cond_ea

    .line 685
    monitor-exit v4
    :try_end_bf
    .catchall {:try_start_a6 .. :try_end_bf} :catchall_eb

    .line 702
    if-eqz p3, :cond_28

    .line 703
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    goto/16 :goto_28

    .line 632
    .end local v11           #busyTimeoutMillis:J
    .end local v14           #ex:Ljava/lang/RuntimeException;
    .end local v15           #nextBusyTimeoutTime:J
    .end local v17           #nonce:I
    :cond_c9
    move-object/from16 v20, v21

    .line 633
    :try_start_cb
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object/from16 v21, v0

    goto/16 :goto_49

    .line 638
    :cond_d3
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_5f

    .line 642
    .end local v5           #startTime:J
    .end local v7           #priority:I
    .end local v13           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v20           #predecessor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v21           #successor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v22           #waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :catchall_da
    move-exception v3

    monitor-exit v23
    :try_end_dc
    .catchall {:try_start_cb .. :try_end_dc} :catchall_da

    throw v3

    .line 667
    .restart local v5       #startTime:J
    .restart local v7       #priority:I
    .restart local v11       #busyTimeoutMillis:J
    .restart local v13       #connection:Landroid/database/sqlite/SQLiteConnection;
    .restart local v15       #nextBusyTimeoutTime:J
    .restart local v17       #nonce:I
    .restart local v20       #predecessor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v21       #successor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v22       #waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :catchall_dd
    move-exception v3

    :try_start_de
    monitor-exit v4
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    :try_start_df
    throw v3
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e0

    .line 702
    .end local v15           #nextBusyTimeoutTime:J
    :catchall_e0
    move-exception v3

    if-eqz p3, :cond_e9

    .line 703
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_e9
    throw v3

    .line 687
    .restart local v14       #ex:Ljava/lang/RuntimeException;
    .restart local v15       #nextBusyTimeoutTime:J
    :cond_ea
    :try_start_ea
    throw v14

    .line 698
    .end local v14           #ex:Ljava/lang/RuntimeException;
    :catchall_eb
    move-exception v3

    monitor-exit v4
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_eb

    :try_start_ed
    throw v3
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_e0

    .line 690
    .restart local v14       #ex:Ljava/lang/RuntimeException;
    :cond_ee
    :try_start_ee
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 691
    .local v18, now:J
    cmp-long v3, v18, v15

    if-gez v3, :cond_fa

    .line 692
    sub-long v11, v18, v15

    .line 698
    :goto_f8
    monitor-exit v4

    goto :goto_80

    .line 694
    :cond_fa
    move-object/from16 v0, v22

    iget-wide v9, v0, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v9, v18, v9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v10, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->logConnectionPoolBusyLocked(JI)V
    :try_end_107
    .catchall {:try_start_ee .. :try_end_107} :catchall_eb

    .line 695
    const-wide/16 v11, 0x7530

    .line 696
    add-long v15, v18, v11

    goto :goto_f8
.end method

.method private wakeConnectionWaitersLocked()V
    .registers 11

    .prologue
    .line 785
    const/4 v3, 0x0

    .line 786
    .local v3, predecessor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v7, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 787
    .local v7, waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v4, 0x0

    .line 788
    .local v4, primaryConnectionNotAvailable:Z
    const/4 v2, 0x0

    .line 789
    .local v2, nonPrimaryConnectionNotAvailable:Z
    :goto_5
    if-eqz v7, :cond_48

    .line 790
    const/4 v6, 0x0

    .line 791
    .local v6, unpark:Z
    iget-boolean v8, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v8, :cond_1f

    .line 792
    const/4 v6, 0x1

    .line 825
    :cond_d
    :goto_d
    iget-object v5, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 826
    .local v5, successor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v6, :cond_51

    .line 827
    if-eqz v3, :cond_4e

    .line 828
    iput-object v5, v3, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 832
    :goto_15
    const/4 v8, 0x0

    iput-object v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 834
    iget-object v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v8}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 838
    :goto_1d
    move-object v7, v5

    .line 839
    goto :goto_5

    .line 795
    .end local v5           #successor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_1f
    const/4 v0, 0x0

    .line 796
    .local v0, connection:Landroid/database/sqlite/SQLiteConnection;
    :try_start_20
    iget-boolean v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v8, :cond_31

    if-nez v2, :cond_31

    .line 797
    iget-object v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    iget v9, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v8, v9}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    .line 799
    if-nez v0, :cond_31

    .line 800
    const/4 v2, 0x1

    .line 803
    :cond_31
    if-nez v0, :cond_3e

    if-nez v4, :cond_3e

    .line 804
    iget v8, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v8}, Landroid/database/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    .line 806
    if-nez v0, :cond_3e

    .line 807
    const/4 v4, 0x1

    .line 810
    :cond_3e
    if-eqz v0, :cond_44

    .line 811
    iput-object v0, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Landroid/database/sqlite/SQLiteConnection;
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_42} :catch_49

    .line 812
    const/4 v6, 0x1

    goto :goto_d

    .line 813
    :cond_44
    if-eqz v2, :cond_d

    if-eqz v4, :cond_d

    .line 840
    .end local v0           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v6           #unpark:Z
    :cond_48
    return-void

    .line 818
    .restart local v0       #connection:Landroid/database/sqlite/SQLiteConnection;
    .restart local v6       #unpark:Z
    :catch_49
    move-exception v1

    .line 820
    .local v1, ex:Ljava/lang/RuntimeException;
    iput-object v1, v7, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 821
    const/4 v6, 0x1

    goto :goto_d

    .line 830
    .end local v0           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #successor:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_4e
    iput-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_15

    .line 836
    :cond_51
    move-object v3, v7

    goto :goto_1d
.end method


# virtual methods
.method public acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
    .registers 5
    .parameter "sql"
    .parameter "connectionFlags"
    .parameter "cancellationSignal"

    .prologue
    .line 349
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V

    .line 207
    return-void
.end method

.method public collectDbStats(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, dbStatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 446
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v2, :cond_c

    .line 447
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 450
    :cond_c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 451
    .local v0, connection:Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_12

    .line 457
    .end local v0           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2

    .line 454
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_25
    :try_start_25
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 455
    .restart local v0       #connection:Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection;->collectDbStatsUnsafe(Ljava/util/ArrayList;)V

    goto :goto_2f

    .line 457
    .end local v0           #connection:Landroid/database/sqlite/SQLiteConnection;
    :cond_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_22

    .line 458
    return-void
.end method

.method public dump(Landroid/util/Printer;Z)V
    .registers 16
    .parameter "printer"
    .parameter "verbose"

    .prologue
    .line 1003
    const-string v9, "    "

    invoke-static {p1, v9}, Landroid/util/PrefixPrinter;->create(Landroid/util/Printer;Ljava/lang/String;)Landroid/util/Printer;

    move-result-object v5

    .line 1004
    .local v5, indentedPrinter:Landroid/util/Printer;
    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1005
    :try_start_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection pool for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v11, v11, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1006
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Open: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1007
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Max connections: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1009
    const-string v9, "  Available primary connection:"

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1010
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v9, :cond_8b

    .line 1011
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v9, v5, p2}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    .line 1016
    :goto_67
    const-string v9, "  Available non-primary connections:"

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1017
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_94

    .line 1018
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1019
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7b
    if-ge v3, v1, :cond_99

    .line 1020
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/sqlite/SQLiteConnection;

    invoke-virtual {v9, v5, p2}, Landroid/database/sqlite/SQLiteConnection;->dump(Landroid/util/Printer;Z)V

    .line 1019
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 1013
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_8b
    const-string v9, "<none>"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_67

    .line 1053
    :catchall_91
    move-exception v9

    monitor-exit v10
    :try_end_93
    .catchall {:try_start_9 .. :try_end_93} :catchall_91

    throw v9

    .line 1023
    :cond_94
    :try_start_94
    const-string v9, "<none>"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1026
    :cond_99
    const-string v9, "  Acquired connections:"

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1027
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e0

    .line 1029
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_b0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1030
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection;

    .line 1031
    .local v0, connection:Landroid/database/sqlite/SQLiteConnection;
    invoke-virtual {v0, v5, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1032
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Status: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_b0

    .line 1035
    .end local v0           #connection:Landroid/database/sqlite/SQLiteConnection;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_e0
    const-string v9, "<none>"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1038
    :cond_e5
    const-string v9, "  Connection waiters:"

    invoke-interface {p1, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1039
    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    if-eqz v9, :cond_149

    .line 1040
    const/4 v3, 0x0

    .line 1041
    .restart local v3       #i:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1042
    .local v6, now:J
    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .local v8, waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_f5
    if-eqz v8, :cond_14e

    .line 1044
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ": waited for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v11, v6, v11

    long-to-float v11, v11

    const v12, 0x3a83126f

    mul-float/2addr v11, v12

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ms - thread="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", priority="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", sql=\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1043
    iget-object v8, v8, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f5

    .line 1051
    .end local v3           #i:I
    .end local v6           #now:J
    .end local v8           #waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_149
    const-string v9, "<none>"

    invoke-interface {v5, v9}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1053
    :cond_14e
    monitor-exit v10
    :try_end_14f
    .catchall {:try_start_94 .. :try_end_14f} :catchall_91

    .line 1054
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8

    .line 159
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 161
    return-void

    .line 159
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method onConnectionLeaked()V
    .registers 4

    .prologue
    .line 489
    const-string v0, "SQLiteConnectionPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A SQLiteConnection object for database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was leaked!  Please fix your application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "to end transactions in progress properly and to close the database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when it is no longer needed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 495
    return-void
.end method

.method public reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 9
    .parameter "configuration"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 256
    if-nez p1, :cond_c

    .line 257
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "configuration must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    :cond_c
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 261
    :try_start_f
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 263
    iget v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v5, v6

    const/high16 v6, 0x2000

    and-int/2addr v5, v6

    if-eqz v5, :cond_34

    move v2, v0

    .line 265
    .local v2, walModeChanged:Z
    :goto_1f
    if-eqz v2, :cond_4b

    .line 268
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_36

    .line 269
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 326
    .end local v2           #walModeChanged:Z
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw v3

    :cond_34
    move v2, v3

    .line 263
    goto :goto_1f

    .line 277
    .restart local v2       #walModeChanged:Z
    :cond_36
    :try_start_36
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 278
    sget-boolean v5, Landroid/database/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    if-nez v5, :cond_4b

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 281
    :cond_4b
    iget-boolean v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eq v5, v6, :cond_65

    .line 283
    .local v0, foreignKeyModeChanged:Z
    :goto_53
    if-eqz v0, :cond_67

    .line 287
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_67

    .line 288
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #foreignKeyModeChanged:Z
    :cond_65
    move v0, v3

    .line 281
    goto :goto_53

    .line 295
    .restart local v0       #foreignKeyModeChanged:Z
    :cond_67
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    if-eq v3, v5, :cond_8e

    .line 299
    if-eqz v2, :cond_74

    .line 300
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 307
    :cond_74
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->openConnectionLocked(Landroid/database/sqlite/SQLiteDatabaseConfiguration;Z)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v1

    .line 310
    .local v1, newPrimaryConnection:Landroid/database/sqlite/SQLiteConnection;
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 311
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    .line 313
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 314
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 315
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 325
    .end local v1           #newPrimaryConnection:Landroid/database/sqlite/SQLiteConnection;
    :goto_89
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 326
    monitor-exit v4

    .line 327
    return-void

    .line 318
    :cond_8e
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 319
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 321
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    .line 322
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V
    :try_end_9c
    .catchall {:try_start_36 .. :try_end_9c} :catchall_31

    goto :goto_89
.end method

.method public releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 6
    .parameter "connection"

    .prologue
    .line 365
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 366
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 367
    .local v0, status:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-nez v0, :cond_18

    .line 368
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    .end local v0           #status:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1

    .line 373
    .restart local v0       #status:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_18
    :try_start_18
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v1, :cond_21

    .line 374
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    .line 389
    :goto_1f
    monitor-exit v2

    .line 390
    return-void

    .line 375
    :cond_21
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 376
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 377
    sget-boolean v1, Landroid/database/sqlite/SQLiteConnectionPool;->$assertionsDisabled:Z

    if-nez v1, :cond_3b

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    if-eqz v1, :cond_3b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 378
    :cond_3b
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Landroid/database/sqlite/SQLiteConnection;

    .line 380
    :cond_3d
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_1f

    .line 381
    :cond_41
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_51

    .line 382
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Landroid/database/sqlite/SQLiteConnection;)V

    goto :goto_1f

    .line 384
    :cond_51
    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 385
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_5c
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V
    :try_end_5f
    .catchall {:try_start_18 .. :try_end_5f} :catchall_15

    goto :goto_1f
.end method

.method public shouldYieldConnection(Landroid/database/sqlite/SQLiteConnection;I)Z
    .registers 6
    .parameter "connection"
    .parameter "connectionFlags"

    .prologue
    .line 423
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 425
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0

    .line 430
    :cond_16
    :try_start_16
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v0, :cond_1d

    .line 431
    const/4 v0, 0x0

    monitor-exit v1

    .line 434
    :goto_1c
    return v0

    :cond_1d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->isSessionBlockingImportantConnectionWaitersLocked(ZI)Z

    move-result v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_13

    goto :goto_1c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteConnectionPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
