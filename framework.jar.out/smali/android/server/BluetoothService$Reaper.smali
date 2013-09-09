.class Landroid/server/BluetoothService$Reaper;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reaper"
.end annotation


# instance fields
.field mHandle:I

.field mPid:I

.field mType:I

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;II)V
    .registers 4
    .parameter
    .parameter "pid"
    .parameter "type"

    .prologue
    .line 1635
    iput-object p1, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1636
    iput p2, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    .line 1637
    iput p3, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    .line 1638
    return-void
.end method

.method constructor <init>(Landroid/server/BluetoothService;III)V
    .registers 5
    .parameter
    .parameter "handle"
    .parameter "pid"
    .parameter "type"

    .prologue
    .line 1629
    iput-object p1, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    iput p3, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    .line 1631
    iput p2, p0, Landroid/server/BluetoothService$Reaper;->mHandle:I

    .line 1632
    iput p4, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    .line 1633
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 1642
    iget-object v1, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    monitor-enter v1

    .line 1643
    :try_start_3
    const-string v0, "BluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracked app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget v0, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_40

    .line 1645
    iget-object v0, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    iget v2, p0, Landroid/server/BluetoothService$Reaper;->mHandle:I

    iget v3, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    invoke-static {v0, v2, v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;II)V

    .line 1649
    :cond_3e
    :goto_3e
    monitor-exit v1

    .line 1650
    return-void

    .line 1646
    :cond_40
    iget v0, p0, Landroid/server/BluetoothService$Reaper;->mType:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_3e

    .line 1647
    iget-object v0, p0, Landroid/server/BluetoothService$Reaper;->this$0:Landroid/server/BluetoothService;

    invoke-static {v0}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Landroid/server/BluetoothService$Reaper;->mPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 1649
    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v0
.end method
