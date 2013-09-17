.class public Landroid/media/audiofx/Srs;
.super Landroid/media/audiofx/AudioEffect;
.source "Srs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Srs$1;,
        Landroid/media/audiofx/Srs$BaseParameterListener;,
        Landroid/media/audiofx/Srs$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field public static final SRS_PARAM_DEFINITION_GAIN:I = 0x6

.field public static final SRS_PARAM_DIALOGCLARITY_ENABLE:I = 0x1

.field public static final SRS_PARAM_DIALOGCLARTY_GAIN:I = 0x5

.field public static final SRS_PARAM_SURROUND_ENABLE:I = 0x2

.field public static final SRS_PARAM_SURROUND_GAIN:I = 0x7

.field public static final SRS_PARAM_TRUEBASS_ENABLE:I = 0x0

.field public static final SRS_PARAM_TRUEBASS_GAIN:I = 0x4

.field public static final SRS_PARAM_TRUEBASS_SPKER_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SRS-JAVA"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Srs$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/Srs$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 3
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

    .line 133
    sget-object v0, Landroid/media/audiofx/Srs;->EFFECT_TYPE_SRS:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/Srs;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 104
    iput-object v2, p0, Landroid/media/audiofx/Srs;->mParamListener:Landroid/media/audiofx/Srs$OnParameterChangeListener;

    .line 109
    iput-object v2, p0, Landroid/media/audiofx/Srs;->mBaseParamListener:Landroid/media/audiofx/Srs$BaseParameterListener;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/Srs;->mParamListenerLock:Ljava/lang/Object;

    .line 135
    if-nez p2, :cond_0

    .line 136
    const-string v0, "SRS-JAVA"

    const-string v1, "WARNING: attaching an Srs to global output mix is deprecated!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/Srs;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/audiofx/Srs;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Srs;)Landroid/media/audiofx/Srs$OnParameterChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/media/audiofx/Srs;->mParamListener:Landroid/media/audiofx/Srs$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getGain(I)F
    .locals 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 245
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 246
    .local v1, result:[B
    invoke-virtual {p0, p1, v1}, Landroid/media/audiofx/Srs;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Srs;->checkStatus(I)V

    .line 248
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 249
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 250
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v2

    return v2
.end method

.method public getSpeakerLfResponse()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, -0x1

    .line 190
    .local v0, index:I
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 191
    .local v1, result:[I
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Srs;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Srs;->checkStatus(I)V

    .line 192
    const/4 v2, 0x0

    aget v2, v1, v2

    sparse-switch v2, :sswitch_data_0

    .line 202
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Srs: bad parameter value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :sswitch_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    .line 194
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 196
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 197
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 198
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 199
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 200
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x3c -> :sswitch_1
        0x64 -> :sswitch_2
        0x96 -> :sswitch_3
        0xc8 -> :sswitch_4
        0xfa -> :sswitch_5
        0x12c -> :sswitch_6
        0x190 -> :sswitch_7
    .end sparse-switch
.end method

.method public getSrsItemEnabled(I)Z
    .locals 6
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    new-array v0, v2, [I

    .line 150
    .local v0, result:[I
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Srs;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Srs;->checkStatus(I)V

    .line 151
    const-string v3, "SRS-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSrsItemEnabled] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    aget v3, v0, v1

    if-nez v3, :cond_0

    .line 155
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setGain(IF)V
    .locals 4
    .parameter "param"
    .parameter "gain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 264
    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 265
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 266
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/media/audiofx/Srs;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Srs;->checkStatus(I)V

    .line 267
    const-string v1, "SRS-JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGain, gain:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/Srs$OnParameterChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 333
    iget-object v1, p0, Landroid/media/audiofx/Srs;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/Srs;->mParamListener:Landroid/media/audiofx/Srs$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 335
    iput-object p1, p0, Landroid/media/audiofx/Srs;->mParamListener:Landroid/media/audiofx/Srs$OnParameterChangeListener;

    .line 336
    new-instance v0, Landroid/media/audiofx/Srs$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/Srs$BaseParameterListener;-><init>(Landroid/media/audiofx/Srs;Landroid/media/audiofx/Srs$1;)V

    iput-object v0, p0, Landroid/media/audiofx/Srs;->mBaseParamListener:Landroid/media/audiofx/Srs$BaseParameterListener;

    .line 337
    iget-object v0, p0, Landroid/media/audiofx/Srs;->mBaseParamListener:Landroid/media/audiofx/Srs$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 339
    :cond_0
    monitor-exit v1

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSpeakerLfResponse(I)V
    .locals 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 218
    const-string v1, "SRS-JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpeakerLfResponse index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Srs: bad parameter value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :pswitch_0
    const/16 v0, 0x28

    .line 232
    .local v0, value:I
    :goto_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Srs;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Srs;->checkStatus(I)V

    .line 233
    return-void

    .line 221
    .end local v0           #value:I
    :pswitch_1
    const/16 v0, 0x3c

    .restart local v0       #value:I
    goto :goto_0

    .line 222
    .end local v0           #value:I
    :pswitch_2
    const/16 v0, 0x64

    .restart local v0       #value:I
    goto :goto_0

    .line 223
    .end local v0           #value:I
    :pswitch_3
    const/16 v0, 0x96

    .restart local v0       #value:I
    goto :goto_0

    .line 224
    .end local v0           #value:I
    :pswitch_4
    const/16 v0, 0xc8

    .restart local v0       #value:I
    goto :goto_0

    .line 225
    .end local v0           #value:I
    :pswitch_5
    const/16 v0, 0xfa

    .restart local v0       #value:I
    goto :goto_0

    .line 226
    .end local v0           #value:I
    :pswitch_6
    const/16 v0, 0x12c

    .restart local v0       #value:I
    goto :goto_0

    .line 227
    .end local v0           #value:I
    :pswitch_7
    const/16 v0, 0x190

    .restart local v0       #value:I
    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setSrsItemEnabled(IZ)V
    .locals 4
    .parameter "param"
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 170
    if-eqz p2, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 176
    .local v0, value:I
    :goto_0
    const-string v1, "SRS-JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setSrsItemEnabled] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Srs;->setParameter(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Srs;->checkStatus(I)V

    .line 178
    return-void

    .line 173
    .end local v0           #value:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #value:I
    goto :goto_0
.end method
