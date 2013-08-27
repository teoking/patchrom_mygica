.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 754
    const/4 v6, 0x0

    .line 757
    .local v6, path:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v12}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string v13, "volume"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "list"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v12

    const/16 v13, 0x6e

    invoke-static {v12, v13}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v10

    .line 760
    .local v10, vols:[Ljava/lang/String;
    move-object v1, v10

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_20
    if-ge v3, v5, :cond_7a

    aget-object v11, v1, v3

    .line 761
    .local v11, volstr:Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 763
    .local v9, tok:[Ljava/lang/String;
    const-string v8, "removed"

    .line 764
    .local v8, state:Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v4, v9, v12

    .line 765
    .local v4, label:Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v6, v9, v12

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v12}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 768
    .local v7, st:I
    if-nez v7, :cond_54

    .line 769
    const-string v8, "removed"

    .line 782
    :goto_48
    if-eqz v8, :cond_51

    .line 784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v12, v6, v8}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 770
    :cond_54
    const/4 v12, 0x1

    if-ne v7, v12, :cond_5a

    .line 771
    const-string v8, "unmounted"

    goto :goto_48

    .line 772
    :cond_5a
    const/4 v12, 0x4

    if-ne v7, v12, :cond_ac

    .line 773
    const-string v8, "mounted"

    .line 774
    const-string v12, "MountService"

    const-string v13, "Media already mounted on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_66} :catch_67

    goto :goto_48

    .line 787
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v7           #st:I
    .end local v8           #state:Ljava/lang/String;
    .end local v9           #tok:[Ljava/lang/String;
    .end local v10           #vols:[Ljava/lang/String;
    .end local v11           #volstr:Ljava/lang/String;
    :catch_67
    move-exception v2

    .line 788
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "MountService"

    const-string v13, "Error processing initial volume state"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    if-eqz v6, :cond_7a

    .line 790
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string v13, "removed"

    invoke-static {v12, v6, v13}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v12}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 798
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$2002(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 801
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v12}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v12}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 805
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/MountService;->access$2102(Lcom/android/server/MountService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 806
    return-void

    .line 775
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #label:Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v7       #st:I
    .restart local v8       #state:Ljava/lang/String;
    .restart local v9       #tok:[Ljava/lang/String;
    .restart local v10       #vols:[Ljava/lang/String;
    .restart local v11       #volstr:Ljava/lang/String;
    :cond_ac
    const/4 v12, 0x7

    if-ne v7, v12, :cond_b9

    .line 776
    :try_start_af
    const-string v8, "shared"

    .line 777
    const-string v12, "MountService"

    const-string v13, "Media shared on daemon connection"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 779
    :cond_b9
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Unexpected state %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_cf} :catch_67
.end method
