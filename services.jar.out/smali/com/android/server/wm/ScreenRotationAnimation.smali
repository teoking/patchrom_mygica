.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG_STATE:Z = false

.field static final DEBUG_TRANSFORMS:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"

.field static final TWO_PHASE_ANIMATION:Z

.field static final USE_CUSTOM_BLACK_FRAME:Z

.field private static mHwrotation:I


# instance fields
.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mExitFrameFinalMatrix:Landroid/graphics/Matrix;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mFinishEnterAnimation:Landroid/view/animation/Animation;

.field final mFinishEnterTransformation:Landroid/view/animation/Transformation;

.field mFinishExitAnimation:Landroid/view/animation/Animation;

.field final mFinishExitTransformation:Landroid/view/animation/Transformation;

.field mFinishFrameAnimation:Landroid/view/animation/Animation;

.field final mFinishFrameTransformation:Landroid/view/animation/Transformation;

.field final mFrameInitialMatrix:Landroid/graphics/Matrix;

.field final mFrameTransformation:Landroid/view/animation/Transformation;

.field mHalfwayPoint:J

.field mHeight:I

.field mLastRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mLastRotateExitAnimation:Landroid/view/animation/Animation;

.field final mLastRotateExitTransformation:Landroid/view/animation/Transformation;

.field mLastRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private mMoreFinishEnter:Z

.field private mMoreFinishExit:Z

.field private mMoreFinishFrame:Z

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field private mMoreRotateFrame:Z

.field private mMoreStartEnter:Z

.field private mMoreStartExit:Z

.field private mMoreStartFrame:Z

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field mRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mRotateFrameTransformation:Landroid/view/animation/Transformation;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStartEnterAnimation:Landroid/view/animation/Animation;

.field final mStartEnterTransformation:Landroid/view/animation/Transformation;

.field mStartExitAnimation:Landroid/view/animation/Animation;

.field final mStartExitTransformation:Landroid/view/animation/Transformation;

.field mStartFrameAnimation:Landroid/view/animation/Animation;

.field final mStartFrameTransformation:Landroid/view/animation/Transformation;

.field mStarted:Z

.field mSurface:Landroid/view/Surface;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHwrotation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;ZIII)V
    .registers 19
    .parameter "context"
    .parameter "session"
    .parameter "inTransaction"
    .parameter "originalWidth"
    .parameter "originalHeight"
    .parameter "originalRotation"

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    .line 66
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    .line 68
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    .line 75
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    .line 77
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    .line 79
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    .line 85
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 87
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 89
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 94
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 96
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 98
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 101
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 102
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 103
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    .line 110
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    .line 111
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 112
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 113
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    .line 114
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 115
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 193
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 196
    const/4 v1, 0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_a1

    const/4 v1, 0x3

    move/from16 v0, p6

    if-ne v0, v1, :cond_df

    .line 198
    :cond_a1
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 199
    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 205
    :goto_a9
    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 206
    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 207
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 209
    if-nez p3, :cond_ba

    .line 212
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 221
    :cond_ba
    :try_start_ba
    new-instance v1, Landroid/view/Surface;

    const/4 v3, 0x0

    const-string v4, "FreezeSurface"

    const/4 v5, -0x1

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v8, -0x1

    const v9, 0x30004

    move-object v2, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_e8

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;
    :try_end_d9
    .catchall {:try_start_ba .. :try_end_d9} :catchall_122
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_ba .. :try_end_d9} :catch_119

    .line 242
    if-nez p3, :cond_de

    .line 243
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 259
    :cond_de
    :goto_de
    return-void

    .line 201
    :cond_df
    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 202
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_a9

    .line 229
    :cond_e8
    :try_start_e8
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    const v2, 0x1e8481

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setLayer(I)V

    .line 230
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setAlpha(F)V

    .line 231
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_fb
    .catchall {:try_start_e8 .. :try_end_fb} :catchall_122
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e8 .. :try_end_fb} :catch_119

    .line 240
    :goto_fb
    :try_start_fb
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V
    :try_end_100
    .catchall {:try_start_fb .. :try_end_100} :catchall_122

    .line 242
    if-nez p3, :cond_105

    .line 243
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 249
    :cond_105
    const-string v1, "ro.sf.hwrotation"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 250
    .local v11, hwrotation:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 251
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHwrotation:I

    goto :goto_de

    .line 232
    .end local v11           #hwrotation:Ljava/lang/String;
    :catch_119
    move-exception v10

    .line 233
    .local v10, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_11a
    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_121
    .catchall {:try_start_11a .. :try_end_121} :catchall_122

    goto :goto_fb

    .line 242
    .end local v10           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_122
    move-exception v1

    if-nez p3, :cond_128

    .line 243
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_128
    throw v1

    .line 252
    .restart local v11       #hwrotation:Ljava/lang/String;
    :cond_129
    const-string v1, "90"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_135

    .line 253
    const/4 v1, 0x1

    sput v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHwrotation:I

    goto :goto_de

    .line 254
    :cond_135
    const-string v1, "180"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 255
    const/4 v1, 0x2

    sput v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHwrotation:I

    goto :goto_de

    .line 257
    :cond_141
    const/4 v1, 0x3

    sput v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHwrotation:I

    goto :goto_de
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 10
    .parameter "rotation"
    .parameter "width"
    .parameter "height"
    .parameter "outMatrix"

    .prologue
    const/high16 v5, 0x4387

    const/high16 v4, 0x4334

    const/high16 v3, 0x42b4

    const/4 v2, 0x0

    .line 295
    sget v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHwrotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    sget v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHwrotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 296
    :cond_11
    packed-switch p0, :pswitch_data_54

    .line 332
    :goto_14
    return-void

    .line 298
    :pswitch_15
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_14

    .line 301
    :pswitch_19
    invoke-virtual {p3, v3, v2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 302
    int-to-float v0, p2

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_14

    .line 305
    :pswitch_21
    invoke-virtual {p3, v4, v2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 306
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_14

    .line 309
    :pswitch_2a
    invoke-virtual {p3, v5, v2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 310
    int-to-float v0, p1

    invoke-virtual {p3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_14

    .line 314
    :cond_32
    packed-switch p0, :pswitch_data_60

    goto :goto_14

    .line 316
    :pswitch_36
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_14

    .line 319
    :pswitch_3a
    invoke-virtual {p3, v3, v2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 320
    int-to-float v0, p2

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_14

    .line 323
    :pswitch_42
    invoke-virtual {p3, v4, v2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 324
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_14

    .line 327
    :pswitch_4b
    invoke-virtual {p3, v5, v2, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 328
    int-to-float v0, p1

    invoke-virtual {p3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_14

    .line 296
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_21
        :pswitch_2a
        :pswitch_15
        :pswitch_19
    .end packed-switch

    .line 314
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_36
        :pswitch_3a
        :pswitch_42
        :pswitch_4b
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .registers 3
    .parameter "oldRotation"
    .parameter "newRotation"

    .prologue
    .line 266
    sub-int v0, p1, p0

    .line 267
    .local v0, delta:I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 268
    :cond_6
    return v0
.end method

.method private hasAnimations()Z
    .registers 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setRotation(I)V
    .registers 6
    .parameter "rotation"

    .prologue
    .line 336
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 341
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 342
    .local v0, delta:I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 345
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    .line 346
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceSession;JFIIZ)Z
    .registers 21
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"
    .parameter "dismissing"

    .prologue
    .line 366
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-nez v9, :cond_6

    .line 368
    const/4 v9, 0x0

    .line 591
    :goto_5
    return v9

    .line 370
    :cond_6
    iget-boolean v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-eqz v9, :cond_c

    .line 371
    const/4 v9, 0x1

    goto :goto_5

    .line 374
    :cond_c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 376
    const/4 v4, 0x0

    .line 379
    .local v4, firstStart:Z
    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v9, v10}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v2

    .line 407
    .local v2, delta:I
    packed-switch v2, :pswitch_data_12a

    .line 451
    :goto_1b
    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    add-int v9, v9, p5

    div-int/lit8 v6, v9, 0x2

    .line 452
    .local v6, halfWidth:I
    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    add-int v9, v9, p6

    div-int/lit8 v5, v9, 0x2

    .line 475
    .local v5, halfHeight:I
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v11, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v9, v0, v1, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 476
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v11, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v9, v0, v1, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 481
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 482
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 483
    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 501
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move-wide v0, p2

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 502
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 503
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move-wide v0, p2

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 504
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 540
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v9, :cond_ab

    .line 544
    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    .line 552
    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    iget-object v11, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v2, v9, v10, v11}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 555
    :try_start_75
    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    neg-int v9, v9

    mul-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v10, v10

    mul-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    mul-int/lit8 v11, v11, 0x2

    iget v12, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    mul-int/lit8 v12, v12, 0x2

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 557
    .local v8, outer:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v12, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 558
    .local v7, inner:Landroid/graphics/Rect;
    new-instance v9, Lcom/android/server/wm/BlackFrame;

    const v10, 0x1e8482

    invoke-direct {v9, p1, v8, v7, v10}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 559
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v10, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_a8
    .catchall {:try_start_75 .. :try_end_a8} :catchall_125
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_75 .. :try_end_a8} :catch_119

    .line 563
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .line 591
    .end local v7           #inner:Landroid/graphics/Rect;
    .end local v8           #outer:Landroid/graphics/Rect;
    :cond_ab
    :goto_ab
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 409
    .end local v5           #halfHeight:I
    .end local v6           #halfWidth:I
    :pswitch_ae
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v10, 0x10a0038

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 411
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v10, 0x10a0037

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1b

    .line 419
    :pswitch_c6
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v10, 0x10a0044

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 421
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v10, 0x10a0043

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1b

    .line 429
    :pswitch_de
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v10, 0x10a003b

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 431
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v10, 0x10a003a

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 433
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v10, 0x10a003c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1b

    .line 437
    :pswitch_101
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v10, 0x10a0041

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 439
    iget-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v10, 0x10a0040

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1b

    .line 560
    .restart local v5       #halfHeight:I
    .restart local v6       #halfWidth:I
    :catch_119
    move-exception v3

    .line 561
    .local v3, e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_11a
    const-string v9, "ScreenRotationAnimation"

    const-string v10, "Unable to allocate black surface"

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_121
    .catchall {:try_start_11a .. :try_end_121} :catchall_125

    .line 563
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_ab

    .end local v3           #e:Landroid/view/Surface$OutOfResourcesException;
    :catchall_125
    move-exception v9

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v9

    .line 407
    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_c6
        :pswitch_de
        :pswitch_101
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .registers 9
    .parameter "now"

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 694
    iget-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_11

    .line 695
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 697
    :cond_11
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v3, :cond_1d

    iget-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_1d

    .line 699
    iput-wide p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 723
    :cond_1d
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v3, :cond_25

    iget-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    sub-long v0, p1, v3

    .line 747
    .local v0, finishNow:J
    :cond_25
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 748
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_35

    .line 749
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 753
    :cond_35
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 754
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_45

    .line 755
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 767
    :cond_45
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_59

    .line 782
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_59

    .line 784
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 785
    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 786
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 790
    :cond_59
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_6d

    .line 805
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_6d

    .line 807
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 808
    iput-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 809
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 834
    :cond_6d
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 835
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 858
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_87

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_87

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-nez v3, :cond_88

    :cond_87
    const/4 v2, 0x1

    .line 865
    .local v2, more:Z
    :cond_88
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 869
    return v2
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFII)Z
    .registers 16
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_8

    move v7, v8

    .line 613
    :goto_7
    return v7

    .line 604
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_15

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 605
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceSession;JFIIZ)Z

    .line 608
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_1b

    move v7, v8

    .line 609
    goto :goto_7

    .line 612
    :cond_1b
    iput-boolean v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    goto :goto_7
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public kill()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 623
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    .line 625
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_17

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 627
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 629
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_22

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 631
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 633
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_2d

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 635
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 669
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_38

    .line 670
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 671
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 673
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_43

    .line 674
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 675
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 677
    :cond_43
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 131
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 132
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 139
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitingBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4a

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 143
    :cond_4a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_73

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 147
    :cond_73
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 148
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 150
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 152
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 153
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 154
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 156
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 158
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 160
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 161
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 162
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 164
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 166
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 168
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 170
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 171
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 172
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 177
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 181
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 184
    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 185
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 186
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitFrameFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 188
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 189
    return-void
.end method

.method public setRotation(ILandroid/view/SurfaceSession;JFII)Z
    .registers 9
    .parameter "rotation"
    .parameter "session"
    .parameter "maxAnimationDuration"
    .parameter "animationScale"
    .parameter "finalWidth"
    .parameter "finalHeight"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(I)V

    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method setSnapshotTransform(Landroid/graphics/Matrix;F)V
    .registers 9
    .parameter "matrix"
    .parameter "alpha"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_36

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setPosition(FF)V

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Surface;->setMatrix(FFFF)V

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/view/Surface;->setAlpha(F)V

    .line 290
    :cond_36
    return-void
.end method

.method public stepAnimationLocked(J)Z
    .registers 7
    .parameter "now"

    .prologue
    const/4 v0, 0x0

    .line 916
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v1

    if-nez v1, :cond_a

    .line 918
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 959
    :goto_9
    return v0

    .line 922
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    if-nez v0, :cond_2f

    .line 949
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_17

    .line 950
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 952
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_20

    .line 953
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 955
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 956
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 959
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v0

    goto :goto_9
.end method

.method updateSurfaces()V
    .registers 4

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_5

    .line 913
    :goto_4
    return-void

    .line 877
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1a

    .line 878
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_1a

    .line 880
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    .line 884
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_2f

    .line 885
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v0, :cond_65

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v0, :cond_65

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v0, :cond_65

    .line 887
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 893
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_44

    .line 894
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_71

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_71

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_71

    .line 896
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 903
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_59

    .line 904
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v0, :cond_86

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v0, :cond_86

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v0, :cond_86

    .line 906
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 912
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/graphics/Matrix;F)V

    goto :goto_4

    .line 889
    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2f

    .line 898
    :cond_71
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_44

    .line 908
    :cond_86
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_59
.end method
