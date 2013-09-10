.class Landroid/hardware/SystemSensorManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iput-object p3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->val$this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 191
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/SensorEvent;

    .line 192
    .local v2, t:Landroid/hardware/SensorEvent;
    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .line 194
    .local v1, handle:I
    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 207
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 209
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 215
    :cond_0
    :goto_0
    const-string v4, "app.froce.landscape"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$200()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, tmp_val:F
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v8

    .line 219
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    aput v5, v4, v8

    .line 220
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    neg-float v5, v3

    aput v5, v4, v7

    .line 224
    .end local v3           #tmp_val:F
    :cond_1
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 225
    sget-object v4, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager$SensorEventPool;->returnToPool(Landroid/hardware/SensorEvent;)V

    .line 226
    return-void

    .line 199
    :pswitch_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 200
    .local v0, accuracy:I
    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v4, :cond_0

    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v0, v4, :cond_0

    .line 201
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    iget-object v4, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    iget-object v5, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v6, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v4, v5, v6}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
