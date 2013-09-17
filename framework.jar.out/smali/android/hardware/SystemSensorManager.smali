.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$RemoteControlThread;,
        Landroid/hardware/SystemSensorManager$ListenerDelegate;,
        Landroid/hardware/SystemSensorManager$SensorThread;
    }
.end annotation


# static fields
.field private static final EVENT_TYPE_SENSOR:I = 0x4

.field private static final SENSOR_DISABLE:I = -0x1

.field private static hasAccelerometer:Z

.field private static hasGyro:Z

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SystemSensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;


# instance fields
.field private mIn:Ljava/io/InputStream;

.field final mMainLooper:Landroid/os/Looper;

.field private mOut:Ljava/io/OutputStream;

.field private mRegisterListener:Z

.field private mSocket:Landroid/net/LocalSocket;

.field private mThreadStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    .line 67
    const-string v0, "hw.has.accelerometer"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    .line 68
    const-string v0, "hw.has.gyro"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 12
    .parameter "mainLooper"

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 271
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 484
    iput-boolean v7, p0, Landroid/hardware/SystemSensorManager;->mThreadStart:Z

    .line 485
    iput-boolean v7, p0, Landroid/hardware/SystemSensorManager;->mRegisterListener:Z

    .line 272
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 274
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 275
    :try_start_0
    sget-boolean v7, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v7, :cond_8

    .line 276
    const/4 v7, 0x1

    sput-boolean v7, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 278
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 281
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_module_init()I

    .line 282
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 283
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v3, 0x0

    .line 285
    .local v3, i:I
    :cond_0
    new-instance v6, Landroid/hardware/Sensor;

    invoke-direct {v6}, Landroid/hardware/Sensor;-><init>()V

    .line 286
    .local v6, sensor:Landroid/hardware/Sensor;
    invoke-static {v6, v3}, Landroid/hardware/SystemSensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v3

    .line 288
    if-ltz v3, :cond_1

    .line 291
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v7, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-virtual {v7, v9, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 294
    :cond_1
    if-gtz v3, :cond_0

    .line 296
    sget-boolean v7, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    if-nez v7, :cond_4

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, gSensor:Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 299
    .local v5, s:Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 300
    const/4 v1, 0x1

    .line 305
    .end local v5           #s:Landroid/hardware/Sensor;
    :cond_3
    if-nez v1, :cond_9

    .line 307
    new-instance v6, Landroid/hardware/Sensor;

    .end local v6           #sensor:Landroid/hardware/Sensor;
    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/hardware/Sensor;-><init>(I)V

    .line 309
    .restart local v6       #sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v7, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-virtual {v7, v9, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 311
    const-string v7, "SensorManager"

    const-string v9, "RC, really has no accelerometer"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v1           #gSensor:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    sget-boolean v7, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    if-nez v7, :cond_7

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, gyroSensor:Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 322
    .restart local v5       #s:Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 323
    const/4 v2, 0x1

    .line 327
    .end local v5           #s:Landroid/hardware/Sensor;
    :cond_6
    if-nez v2, :cond_a

    .line 329
    new-instance v6, Landroid/hardware/Sensor;

    .end local v6           #sensor:Landroid/hardware/Sensor;
    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/hardware/Sensor;-><init>(I)V

    .line 330
    .restart local v6       #sensor:Landroid/hardware/Sensor;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v7, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-virtual {v7, v9, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 332
    const-string v7, "SensorManager"

    const-string v9, "RC, really has no gyro"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v2           #gyroSensor:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_7
    :goto_1
    new-instance v7, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v9, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v7, v9}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(I)V

    sput-object v7, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 340
    new-instance v7, Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct {v7}, Landroid/hardware/SystemSensorManager$SensorThread;-><init>()V

    sput-object v7, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    .line 342
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v3           #i:I
    .end local v6           #sensor:Landroid/hardware/Sensor;
    :cond_8
    monitor-exit v8

    .line 343
    return-void

    .line 314
    .restart local v0       #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .restart local v1       #gSensor:Z
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #sensor:Landroid/hardware/Sensor;
    :cond_9
    const/4 v7, 0x1

    sput-boolean v7, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    .line 315
    const-string v7, "SensorManager"

    const-string v9, "RC, really has accelerometer"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #gSensor:Z
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #sensor:Landroid/hardware/Sensor;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 335
    .restart local v0       #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .restart local v2       #gyroSensor:Z
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #sensor:Landroid/hardware/Sensor;
    :cond_a
    const/4 v7, 0x1

    :try_start_1
    sput-boolean v7, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    .line 336
    const-string v7, "SensorManager"

    const-string v9, "RC, really has gyro"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 46
    sget v0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    sput p0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    return v0
.end method

.method static synthetic access$300(Landroid/hardware/SystemSensorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->connect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/SystemSensorManager;)Landroid/net/LocalSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/SystemSensorManager;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/SystemSensorManager;)Ljava/io/OutputStream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/SystemSensorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mRegisterListener:Z

    return v0
.end method

.method static synthetic access$800(Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->disconnect()V

    return-void
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 588
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 607
    :goto_0
    return v2

    .line 591
    :cond_0
    const-string v3, "SensorManager"

    const-string v4, "RC, connecting..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    .line 595
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "remote_control_sensor"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 598
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 600
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    .line 601
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 603
    .local v1, ex:Ljava/io/IOException;
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RC, connect exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->disconnect()V

    .line 605
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 6
    .parameter "sensor"

    .prologue
    .line 365
    sget-object v4, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 366
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    const/4 v4, 0x1

    .line 373
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    return v4

    .line 371
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 373
    .local v0, handle:I
    sget v4, Landroid/hardware/SystemSensorManager;->sQueue:I

    const/4 v5, -0x1

    invoke-static {v4, v3, v0, v5}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method private disconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 611
    const-string v1, "SensorManager"

    const-string v2, "RC, disconnecting..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 615
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 616
    .local v0, disc:[B
    const/4 v1, 0x0

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    .line 617
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 618
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 623
    .end local v0           #disc:[B
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 626
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 629
    :cond_2
    :goto_2
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 632
    :cond_3
    :goto_3
    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mSocket:Landroid/net/LocalSocket;

    .line 633
    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mIn:Ljava/io/InputStream;

    .line 634
    iput-object v4, p0, Landroid/hardware/SystemSensorManager;->mOut:Ljava/io/OutputStream;

    .line 635
    return-void

    .line 630
    :catch_0
    move-exception v1

    goto :goto_3

    .line 627
    :catch_1
    move-exception v1

    goto :goto_2

    .line 624
    :catch_2
    move-exception v1

    goto :goto_1

    .line 620
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 6
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 352
    const/4 v4, 0x0

    .line 353
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 354
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 357
    .local v0, handle:I
    sget v5, Landroid/hardware/SystemSensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 361
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method private static native nativeClassInit()V
.end method

.method private registerRemote()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 638
    iget-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mThreadStart:Z

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/hardware/SystemSensorManager$RemoteControlThread;

    invoke-direct {v1, p0}, Landroid/hardware/SystemSensorManager$RemoteControlThread;-><init>(Landroid/hardware/SystemSensorManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 641
    iput-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mThreadStart:Z

    .line 644
    :cond_0
    iput-boolean v2, p0, Landroid/hardware/SystemSensorManager;->mRegisterListener:Z

    .line 645
    return-void
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method private unregisterRemote()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mRegisterListener:Z

    .line 650
    iput-boolean v0, p0, Landroid/hardware/SystemSensorManager;->mThreadStart:Z

    .line 651
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->disconnect()V

    .line 652
    return-void
.end method


# virtual methods
.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 10
    .parameter "listener"
    .parameter "sensor"
    .parameter "delay"
    .parameter "handler"

    .prologue
    .line 380
    const/4 v6, 0x1

    .line 381
    .local v6, result:Z
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 383
    const/4 v3, 0x0

    .line 384
    .local v3, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_0
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 385
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    if-ne v7, p1, :cond_0

    .line 386
    move-object v3, v1

    move-object v4, v3

    .line 392
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .local v4, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    :try_start_1
    sget-boolean v7, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    if-nez v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    if-eq v7, v9, :cond_2

    :cond_1
    sget-boolean v7, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    if-nez v7, :cond_3

    const/4 v7, 0x4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 395
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 397
    .local v0, handle:I
    if-nez v4, :cond_5

    .line 398
    new-instance v3, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2, p4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_2
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 401
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->registerRemote()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v3

    .line 410
    .end local v0           #handle:I
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v5           #name:Ljava/lang/String;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_3
    :goto_1
    if-nez v4, :cond_8

    .line 411
    :try_start_3
    new-instance v3, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2, p4}, Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_4
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 415
    sget-object v7, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-virtual {v7}, Landroid/hardware/SystemSensorManager$SensorThread;->startLocked()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 416
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 418
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 419
    const/4 v6, 0x0

    .line 438
    :cond_4
    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 440
    return v6

    .line 404
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v0       #handle:I
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v5       #name:Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-virtual {v4, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 438
    .end local v0           #handle:I
    .end local v5           #name:Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_3
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v7

    .line 423
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_7
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 424
    const/4 v6, 0x0

    goto :goto_2

    .line 428
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 430
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_8
    :try_start_8
    invoke-virtual {v4, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 431
    invoke-virtual {v4, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 432
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 434
    invoke-virtual {v4, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 435
    const/4 v6, 0x0

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_2

    .line 438
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v7

    goto :goto_3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_9
    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_2

    .restart local v0       #handle:I
    .restart local v5       #name:Ljava/lang/String;
    :cond_a
    move-object v4, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_1

    .end local v0           #handle:I
    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v5           #name:Ljava/lang/String;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_b
    move-object v4, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto/16 :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 8
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 446
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 447
    :try_start_0
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 448
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 449
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 450
    .local v2, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_5

    .line 451
    if-nez p2, :cond_0

    .line 452
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 454
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 455
    .local v3, s:Landroid/hardware/Sensor;
    invoke-direct {p0, v3}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_1

    .line 471
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #s:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 457
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_0
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v5

    if-nez v5, :cond_4

    .line 460
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->hasAccelerometer:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-eq v5, v7, :cond_2

    :cond_1
    sget-boolean v5, Landroid/hardware/SystemSensorManager;->hasGyro:Z

    if-nez v5, :cond_3

    const/4 v5, 0x4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v5, v7, :cond_3

    .line 463
    :cond_2
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->unregisterRemote()V

    .line 464
    monitor-exit v6

    .line 472
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_2
    return-void

    .line 466
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_3
    invoke-direct {p0, p2}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 471
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 448
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
