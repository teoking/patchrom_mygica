.class public Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mHandle:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method constructor <init>(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/high16 v4, 0x4000

    const v3, 0x3e1ce80a

    const v2, 0x3ba3d70a

    const/4 v1, 0x1

    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    if-ne v1, p1, :cond_1

    .line 140
    const-string v0, "amlogic"

    iput-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, "remote_control accelerometer"

    iput-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    .line 142
    iput v1, p0, Landroid/hardware/Sensor;->mVersion:I

    .line 143
    const/16 v0, 0x20

    iput v0, p0, Landroid/hardware/Sensor;->mHandle:I

    .line 144
    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    .line 145
    iput v4, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 146
    iput v3, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 147
    iput v2, p0, Landroid/hardware/Sensor;->mPower:F

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 150
    const-string v0, "amlogic"

    iput-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "remote_control gyro"

    iput-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    .line 152
    iput v1, p0, Landroid/hardware/Sensor;->mVersion:I

    .line 153
    const/16 v0, 0x21

    iput v0, p0, Landroid/hardware/Sensor;->mHandle:I

    .line 154
    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    .line 155
    iput v4, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 156
    iput v3, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 157
    iput v2, p0, Landroid/hardware/Sensor;->mPower:F

    goto :goto_0
.end method


# virtual methods
.method getHandle()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method setRange(FF)V
    .locals 0
    .parameter "max"
    .parameter "res"

    .prologue
    .line 226
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 227
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 228
    return-void
.end method
