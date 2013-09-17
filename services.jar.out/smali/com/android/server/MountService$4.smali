.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1178
    const/4 v9, 0x0

    .line 1179
    .local v9, timeouts:I
    :goto_0
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsEnabling()Z
    invoke-static {v10}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1180
    const-string v10, "MountService"

    const-string v11, "UMS disconnected. Waiting until done sharing before unsharing..."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 1183
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v10

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 1184
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getUmsEnabling()Z
    invoke-static {v10}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1185
    const-string v10, "MountService"

    const-string v12, "done waiting for all volumes to become shared"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v11

    monitor-enter v11

    .line 1197
    :try_start_2
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUmsEnablingVolumes:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1198
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1202
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 1203
    :try_start_3
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1204
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    .line 1205
    .local v0, count:I
    new-array v10, v0, [Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1206
    .local v5, paths:[Ljava/lang/String;
    new-array v8, v0, [Ljava/lang/String;

    .line 1207
    .local v8, states:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1208
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v10

    aget-object v12, v5, v2

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v8, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1207
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1187
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #paths:[Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x8

    if-le v9, v10, :cond_2

    .line 1188
    :try_start_4
    const-string v10, "MountService"

    const-string v12, "timed out waiting for all volumes to become shared. continuing"

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1189
    :try_start_5
    monitor-exit v11

    goto :goto_1

    .line 1193
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v10

    .line 1191
    :catch_0
    move-exception v10

    .line 1193
    :cond_2
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1198
    :catchall_1
    move-exception v10

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v10

    .line 1210
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v8       #states:[Ljava/lang/String;
    :cond_3
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1211
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    .line 1212
    aget-object v4, v5, v2

    .line 1213
    .local v4, path:Ljava/lang/String;
    aget-object v7, v8, v2

    .line 1214
    .local v7, state:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1211
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1210
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #paths:[Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #states:[Ljava/lang/String;
    :catchall_2
    move-exception v10

    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v10

    .line 1217
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #paths:[Ljava/lang/String;
    .restart local v7       #state:Ljava/lang/String;
    .restart local v8       #states:[Ljava/lang/String;
    :cond_5
    const-string v10, "shared"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1220
    :try_start_a
    const-string v10, "MountService"

    const-string v11, "Disabling UMS after cable disconnect"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v11, "ums"

    const/4 v12, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v10, v4, v11, v12}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1222
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v10, v4}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .local v6, rc:I
    if-eqz v6, :cond_4

    .line 1223
    const-string v10, "MountService"

    const-string v11, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 1227
    .end local v6           #rc:I
    :catch_1
    move-exception v1

    .line 1228
    .local v1, ex:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1232
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_9

    .line 1233
    aget-object v4, v5, v2

    .line 1234
    .restart local v4       #path:Ljava/lang/String;
    aget-object v7, v8, v2

    .line 1235
    .restart local v7       #state:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$300()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1232
    :cond_7
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1237
    :cond_8
    const-string v10, "shared"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1240
    :try_start_b
    const-string v10, "MountService"

    const-string v11, "Disabling UMS after cable disconnect"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v11, "ums"

    const/4 v12, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v10, v4, v11, v12}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1242
    iget-object v10, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v10, v4}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v6

    .restart local v6       #rc:I
    if-eqz v6, :cond_7

    .line 1243
    const-string v10, "MountService"

    const-string v11, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    .line 1247
    .end local v6           #rc:I
    :catch_2
    move-exception v1

    .line 1248
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1252
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #state:Ljava/lang/String;
    :cond_9
    return-void
.end method
