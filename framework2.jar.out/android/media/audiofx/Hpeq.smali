.class public Landroid/media/audiofx/Hpeq;
.super Landroid/media/audiofx/AudioEffect;
.source "Hpeq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Hpeq$1;,
        Landroid/media/audiofx/Hpeq$BaseParameterListener;,
        Landroid/media/audiofx/Hpeq$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final HPEQ_PARAM_BAND_GAIN_3:I = 0x2

.field public static final HPEQ_PARAM_BAND_GAIN_4:I = 0x3

.field public static final HPEQ_PARAM_BAND_GAIN_5:I = 0x4

.field public static final HPEQ_PARAM_GAIN_BAND_1:I = 0x0

.field public static final HPEQ_PARAM_GAIN_BAND_2:I = 0x1

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HPEQ-JAVA"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Hpeq$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/Hpeq$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .parameter "priority"
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 114
    sget-object v0, Landroid/media/audiofx/Hpeq;->EFFECT_TYPE_HPEQ:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/Hpeq;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 85
    iput-object v2, p0, Landroid/media/audiofx/Hpeq;->mParamListener:Landroid/media/audiofx/Hpeq$OnParameterChangeListener;

    .line 90
    iput-object v2, p0, Landroid/media/audiofx/Hpeq;->mBaseParamListener:Landroid/media/audiofx/Hpeq$BaseParameterListener;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/Hpeq;->mParamListenerLock:Ljava/lang/Object;

    .line 116
    if-nez p2, :cond_1c

    .line 117
    const-string v0, "HPEQ-JAVA"

    const-string v1, "WARNING: attaching an Hpeq to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1c
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/Hpeq;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/audiofx/Hpeq;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Hpeq;)Landroid/media/audiofx/Hpeq$OnParameterChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/audiofx/Hpeq;->mParamListener:Landroid/media/audiofx/Hpeq$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getBandCount()I
    .registers 3

    .prologue
    .line 126
    const-string v0, "HPEQ-JAVA"

    const-string v1, "getBandCount: 5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x5

    return v0
.end method

.method public getGainForAllBands([I)I
    .registers 6
    .parameter "gain_buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 182
    const-string v2, "HPEQ-JAVA"

    const-string v3, "[getGainForAllBands] Enter!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Landroid/media/audiofx/Hpeq;->getBandCount()I

    move-result v0

    .line 185
    .local v0, bandCount:I
    array-length v2, p1

    if-ge v2, v0, :cond_f

    .line 186
    array-length v0, p1

    .line 189
    :cond_f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v0, :cond_1b

    .line 190
    invoke-virtual {p0, v1}, Landroid/media/audiofx/Hpeq;->getGainForBand(I)I

    move-result v2

    aput v2, p1, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 193
    :cond_1b
    const/4 v2, 0x0

    return v2
.end method

.method public getGainForBand(I)I
    .registers 7
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 152
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 153
    .local v0, result:[I
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Hpeq;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Hpeq;->checkStatus(I)V

    .line 154
    const-string v1, "HPEQ-JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGainForBand"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    aget v1, v0, v4

    return v1
.end method

.method public getGainRange([I)I
    .registers 7
    .parameter "range_buf"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    const/16 v0, -0xc

    aput v0, p1, v3

    .line 137
    const/16 v0, 0xc

    aput v0, p1, v4

    .line 138
    const-string v0, "HPEQ-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGainRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v3
.end method

.method public setGainForAllBands([I)I
    .registers 6
    .parameter "gain_buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 206
    const-string v2, "HPEQ-JAVA"

    const-string v3, "[setGainForAllBands] Enter!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Landroid/media/audiofx/Hpeq;->getBandCount()I

    move-result v0

    .line 209
    .local v0, bandCount:I
    array-length v2, p1

    if-ge v2, v0, :cond_f

    .line 210
    array-length v0, p1

    .line 213
    :cond_f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v0, :cond_1a

    .line 214
    aget v2, p1, v1

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/Hpeq;->setGainForBand(II)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 217
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method public setGainForBand(II)V
    .registers 6
    .parameter "band"
    .parameter "gain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 168
    const-string v0, "HPEQ-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGainForBand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/Hpeq;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Hpeq;->checkStatus(I)V

    .line 170
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/Hpeq$OnParameterChangeListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 283
    iget-object v1, p0, Landroid/media/audiofx/Hpeq;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_3
    iget-object v0, p0, Landroid/media/audiofx/Hpeq;->mParamListener:Landroid/media/audiofx/Hpeq$OnParameterChangeListener;

    if-nez v0, :cond_16

    .line 285
    iput-object p1, p0, Landroid/media/audiofx/Hpeq;->mParamListener:Landroid/media/audiofx/Hpeq$OnParameterChangeListener;

    .line 286
    new-instance v0, Landroid/media/audiofx/Hpeq$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/Hpeq$BaseParameterListener;-><init>(Landroid/media/audiofx/Hpeq;Landroid/media/audiofx/Hpeq$1;)V

    iput-object v0, p0, Landroid/media/audiofx/Hpeq;->mBaseParamListener:Landroid/media/audiofx/Hpeq$BaseParameterListener;

    .line 287
    iget-object v0, p0, Landroid/media/audiofx/Hpeq;->mBaseParamListener:Landroid/media/audiofx/Hpeq$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 289
    :cond_16
    monitor-exit v1

    .line 290
    return-void

    .line 289
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method
