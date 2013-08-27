.class public Landroid/filterpacks/videosrc/SurfaceTextureTarget;
.super Landroid/filterfw/core/Filter;
.source "SurfaceTextureTarget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureTarget"


# instance fields
.field private final RENDERMODE_CUSTOMIZE:I

.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mLogVerbose:Z

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRenderMode:I

.field private mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "height"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "width"
    .end annotation
.end field

.field private mSourceQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceQuad"
    .end annotation
.end field

.field private mSurfaceId:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceTexture"
    .end annotation
.end field

.field private mTargetQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "targetQuad"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .parameter "name"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 107
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_STRETCH:I

    .line 55
    iput v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_FIT:I

    .line 56
    iput v8, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_FILL_CROP:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->RENDERMODE_CUSTOMIZE:I

    .line 84
    new-instance v0, Landroid/filterfw/geometry/Quad;

    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v6, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v5, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v5, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    .line 90
    new-instance v0, Landroid/filterfw/geometry/Quad;

    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v5, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v6, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v5, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 100
    iput v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 101
    iput v5, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 109
    const-string v0, "SurfaceTextureTarget"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    .line 110
    return-void
.end method

.method private updateTargetRect()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/high16 v5, 0x3f00

    .line 277
    iget-boolean v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v2, :cond_28

    const-string v2, "SurfaceTextureTarget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTargetRect. Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_28
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    if-lez v2, :cond_9f

    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    if-lez v2, :cond_9f

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_9f

    .line 279
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 280
    .local v1, screenAspectRatio:F
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    div-float v0, v1, v2

    .line 281
    .local v0, relativeAspectRatio:F
    iget-boolean v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v2, :cond_8c

    .line 282
    const-string v2, "SurfaceTextureTarget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTR. screen w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x screen h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Screen AR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame AR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", relative AR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_8c
    cmpl-float v2, v0, v6

    if-nez v2, :cond_a0

    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a0

    .line 288
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v7, v7, v6, v6}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 289
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v8}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 340
    .end local v0           #relativeAspectRatio:F
    .end local v1           #screenAspectRatio:F
    :cond_9f
    :goto_9f
    return-void

    .line 291
    .restart local v0       #relativeAspectRatio:F
    .restart local v1       #screenAspectRatio:F
    :cond_a0
    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    packed-switch v2, :pswitch_data_1b6

    .line 336
    :goto_a5
    iget-boolean v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v2, :cond_c3

    const-string v2, "SurfaceTextureTarget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTR. quad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_c3
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    goto :goto_9f

    .line 293
    :pswitch_cb
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v7, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 294
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v6, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 295
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v7, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 296
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v6, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 297
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v8}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto :goto_a5

    .line 300
    :pswitch_ed
    cmpl-float v2, v0, v6

    if-lez v2, :cond_121

    .line 302
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 303
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 304
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 305
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 314
    :goto_11b
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v9}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto :goto_a5

    .line 309
    :cond_121
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 310
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 311
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 312
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    goto :goto_11b

    .line 317
    :pswitch_14c
    cmpl-float v2, v0, v6

    if-lez v2, :cond_181

    .line 319
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 320
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 321
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 322
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 330
    :goto_17a
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v9}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto/16 :goto_a5

    .line 325
    :cond_181
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 326
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 327
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 328
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    goto :goto_17a

    .line 333
    :pswitch_1ac
    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    goto/16 :goto_a5

    .line 291
    nop

    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_ed
        :pswitch_14c
        :pswitch_1ac
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized close(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    if-lez v0, :cond_11

    .line 187
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 190
    :cond_11
    monitor-exit p0

    return-void

    .line 186
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v0, :cond_c

    const-string v0, "SurfaceTextureTarget"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_c
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_19

    .line 198
    const-string v0, "SurfaceTextureTarget"

    const-string v1, "SurfaceTexture is already null. Nothing to disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2d

    .line 211
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 201
    :cond_19
    const/4 v0, 0x0

    :try_start_1a
    iput-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 207
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    if-lez v0, :cond_17

    .line 208
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2d

    goto :goto_17

    .line 196
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .parameter "name"
    .parameter "context"

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v0, :cond_20

    const-string v0, "SurfaceTextureTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPVU. Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_20
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateRenderMode()V

    .line 267
    return-void
.end method

.method public declared-synchronized open(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2a

    .line 166
    const-string v0, "SurfaceTextureTarget"

    const-string v1, "SurfaceTexture is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not register SurfaceTexture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_27

    .line 165
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    iget v3, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/filterfw/core/GLEnvironment;->registerSurfaceTexture(Landroid/graphics/SurfaceTexture;II)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    .line 171
    iget v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    if-gtz v0, :cond_59

    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not register SurfaceTexture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_59
    .catchall {:try_start_2a .. :try_end_59} :catchall_27

    .line 174
    :cond_59
    monitor-exit p0

    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .parameter "context"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 143
    iget-boolean v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v1, :cond_23

    const-string v1, "SurfaceTextureTarget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare. Thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_23
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 147
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v2, -0x4080

    invoke-virtual {v1, v4, v5, v5, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 148
    iget-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v4, v4, v4}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 150
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateRenderMode()V

    .line 153
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 155
    .local v0, screenFormat:Landroid/filterfw/core/MutableFrameFormat;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 156
    iget v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenWidth:I

    iget v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreenHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 157
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    const/16 v2, 0x65

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 160
    return-void
.end method

.method public declared-synchronized process(Landroid/filterfw/core/FilterContext;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v9, 0x3

    .line 216
    monitor-enter p0

    :try_start_2
    iget v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_9a

    if-gtz v6, :cond_8

    .line 261
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 219
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    .line 222
    .local v2, glEnv:Landroid/filterfw/core/GLEnvironment;
    const-string v6, "frame"

    invoke-virtual {p0, v6}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 223
    .local v4, input:Landroid/filterfw/core/Frame;
    const/4 v0, 0x0

    .line 225
    .local v0, createdFrame:Z
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 227
    .local v1, currentAspectRatio:F
    iget v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_68

    .line 228
    iget-boolean v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v6, :cond_63

    .line 229
    const-string v6, "SurfaceTextureTarget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process. New aspect ratio: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", previously: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Thread: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_63
    iput v1, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mAspectRatio:F

    .line 233
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateTargetRect()V

    .line 237
    :cond_68
    const/4 v3, 0x0

    .line 238
    .local v3, gpuFrame:Landroid/filterfw/core/Frame;
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    .line 239
    .local v5, target:I
    if-eq v5, v9, :cond_9d

    .line 240
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v4, v7}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 242
    const/4 v0, 0x1

    .line 248
    :goto_7d
    iget v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceId:I

    invoke-virtual {v2, v6}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 251
    iget-object v6, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v7, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v6, v3, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 253
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/filterfw/core/GLEnvironment;->setSurfaceTimestamp(J)V

    .line 256
    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 258
    if-eqz v0, :cond_6

    .line 259
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;
    :try_end_98
    .catchall {:try_start_8 .. :try_end_98} :catchall_9a

    goto/16 :goto_6

    .line 216
    .end local v0           #createdFrame:Z
    .end local v1           #currentAspectRatio:F
    .end local v2           #glEnv:Landroid/filterfw/core/GLEnvironment;
    .end local v3           #gpuFrame:Landroid/filterfw/core/Frame;
    .end local v4           #input:Landroid/filterfw/core/Frame;
    .end local v5           #target:I
    :catchall_9a
    move-exception v6

    monitor-exit p0

    throw v6

    .line 244
    .restart local v0       #createdFrame:Z
    .restart local v1       #currentAspectRatio:F
    .restart local v2       #glEnv:Landroid/filterfw/core/GLEnvironment;
    .restart local v3       #gpuFrame:Landroid/filterfw/core/Frame;
    .restart local v4       #input:Landroid/filterfw/core/Frame;
    .restart local v5       #target:I
    :cond_9d
    move-object v3, v4

    goto :goto_7d
.end method

.method public declared-synchronized setupPorts()V
    .registers 3

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_10

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null SurfaceTexture passed to SurfaceTextureTarget"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 115
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_10
    :try_start_10
    const-string v0, "frame"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_d

    .line 121
    monitor-exit p0

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 271
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_9

    .line 272
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mScreen:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 274
    :cond_9
    return-void
.end method

.method public updateRenderMode()V
    .registers 4

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mLogVerbose:Z

    if-eqz v0, :cond_21

    const-string v0, "SurfaceTextureTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRenderMode. Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_21
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 126
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    const-string/jumbo v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    .line 138
    :cond_33
    :goto_33
    invoke-direct {p0}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->updateTargetRect()V

    .line 139
    return-void

    .line 128
    :cond_37
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 129
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    goto :goto_33

    .line 130
    :cond_45
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 131
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    goto :goto_33

    .line 132
    :cond_53
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    const-string v1, "customize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 133
    const/4 v0, 0x3

    iput v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderMode:I

    goto :goto_33

    .line 135
    :cond_61
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown render mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->mRenderModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
