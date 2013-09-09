.class Lcom/android/server/PowerManagerService$10;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 2677
    iput-object p1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2679
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 2680
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2681
    :cond_17
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)F

    move-result v1

    float-to-int v0, v1

    .line 2682
    .local v0, value:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$6302(Lcom/android/server/PowerManagerService;Z)Z

    .line 2683
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$6402(Lcom/android/server/PowerManagerService;Z)Z

    .line 2684
    iget-object v1, p0, Lcom/android/server/PowerManagerService$10;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;IZ)V

    .line 2686
    .end local v0           #value:I
    :cond_30
    monitor-exit v2

    .line 2687
    return-void

    .line 2686
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method
