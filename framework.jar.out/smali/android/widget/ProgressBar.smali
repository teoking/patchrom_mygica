.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$1;,
        Landroid/widget/ProgressBar$AccessibilityEventSender;,
        Landroid/widget/ProgressBar$SavedState;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBenchMark:Z

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 245
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "styleRes"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 231
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 235
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mIsBenchMark:Z

    .line 257
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    .line 258
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    .line 260
    sget-object v5, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 263
    .local v0, a:Landroid/content/res/TypedArray;
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 265
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 266
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_32

    .line 267
    invoke-direct {p0, v1, v3}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 270
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_32
    const/16 v5, 0x9

    iget v6, p0, Landroid/widget/ProgressBar;->mDuration:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 276
    const/16 v5, 0xb

    iget v6, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 277
    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 278
    const/16 v5, 0xc

    iget v6, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 279
    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 281
    const/16 v5, 0xa

    iget v6, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 283
    const/16 v5, 0xd

    const v6, 0x10a000b

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 286
    .local v2, resID:I
    if-lez v2, :cond_78

    .line 287
    invoke-virtual {p0, p1, v2}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 290
    :cond_78
    const/4 v5, 0x2

    iget v6, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 292
    const/4 v5, 0x3

    iget v6, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 294
    const/4 v5, 0x4

    iget v6, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 297
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_a4

    .line 299
    invoke-direct {p0, v1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 300
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    :cond_a4
    const/4 v5, 0x6

    iget-boolean v6, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 306
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 308
    iget-boolean v5, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v5, :cond_bc

    const/4 v5, 0x5

    iget-boolean v6, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_bd

    :cond_bc
    move v3, v4

    :cond_bd
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 311
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 312
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 197
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ProgressBar;IIZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$202(Landroid/widget/ProgressBar;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .registers 12
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"
    .parameter "callBackToApp"

    .prologue
    .line 647
    monitor-enter p0

    :try_start_1
    iget v5, p0, Landroid/widget/ProgressBar;->mMax:I

    if-lez v5, :cond_32

    int-to-float v5, p2

    iget v6, p0, Landroid/widget/ProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 648
    .local v4, scale:F
    :goto_b
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 649
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_36

    .line 650
    const/4 v3, 0x0

    .line 652
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_1c

    .line 653
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 656
    :cond_1c
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 657
    .local v2, level:I
    if-eqz v3, :cond_34

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_23
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 662
    .end local v2           #level:I
    :goto_26
    if-eqz p4, :cond_30

    const v5, 0x102000d

    if-ne p1, v5, :cond_30

    .line 663
    invoke-virtual {p0, v4, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_3a

    .line 665
    :cond_30
    monitor-exit p0

    return-void

    .line 647
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_32
    const/4 v4, 0x0

    goto :goto_b

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_34
    move-object v3, v1

    .line 657
    goto :goto_23

    .line 659
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_36
    :try_start_36
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_26

    .line 647
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_3a
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private initProgressBar()V
    .registers 5

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 408
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 409
    iput v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 410
    iput v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 411
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 412
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 413
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 414
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 415
    iput v2, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 416
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 417
    iput v2, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 418
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 419
    return-void
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .registers 9
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 674
    monitor-enter p0

    :try_start_1
    iget-wide v1, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 675
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3b

    .line 688
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 677
    :cond_15
    :try_start_15
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v1, :cond_21

    .line 678
    new-instance v1, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V

    iput-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 681
    :cond_21
    invoke-static {p1, p2, p3}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZ)Landroid/widget/ProgressBar$RefreshData;

    move-result-object v0

    .line 682
    .local v0, rd:Landroid/widget/ProgressBar$RefreshData;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_13

    .line 684
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 685
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_3b

    goto :goto_13

    .line 674
    .end local v0           #rd:Landroid/widget/ProgressBar$RefreshData;
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scheduleAccessibilityEventSender()V
    .registers 4

    .prologue
    .line 1236
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_14

    .line 1237
    new-instance v0, Landroid/widget/ProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    .line 1241
    :goto_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1242
    return-void

    .line 1239
    :cond_14
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 20
    .parameter "drawable"
    .parameter "clip"

    .prologue
    .line 320
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_45

    move-object/from16 v3, p1

    .line 321
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 322
    .local v3, background:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 323
    .local v2, N:I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    .line 325
    .local v11, outDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_11
    if-ge v5, v2, :cond_33

    .line 326
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 327
    .local v6, id:I
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v14, 0x102000d

    if-eq v6, v14, :cond_25

    const v14, 0x102000f

    if-ne v6, v14, :cond_31

    :cond_25
    const/4 v14, 0x1

    :goto_26
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v11, v5

    .line 325
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 327
    :cond_31
    const/4 v14, 0x0

    goto :goto_26

    .line 331
    .end local v6           #id:I
    :cond_33
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 333
    .local v8, newBg:Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    :goto_39
    if-ge v5, v2, :cond_72

    .line 334
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v14

    invoke-virtual {v8, v5, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 333
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 339
    .end local v2           #N:I
    .end local v3           #background:Landroid/graphics/drawable/LayerDrawable;
    .end local v5           #i:I
    .end local v8           #newBg:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #outDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_45
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v14, :cond_73

    move-object/from16 v7, p1

    .line 340
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    .line 341
    .local v7, in:Landroid/graphics/drawable/StateListDrawable;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 342
    .local v10, out:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v9

    .line 343
    .local v9, numStates:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_59
    if-ge v5, v9, :cond_71

    .line 344
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v14

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v15, v1}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 343
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    :cond_71
    move-object v8, v10

    .line 364
    .end local v5           #i:I
    .end local v7           #in:Landroid/graphics/drawable/StateListDrawable;
    .end local v9           #numStates:I
    .end local v10           #out:Landroid/graphics/drawable/StateListDrawable;
    .end local p1
    :cond_72
    :goto_72
    return-object v8

    .line 348
    .restart local p1
    :cond_73
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_b1

    .line 349
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 350
    .local v13, tileBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v14, :cond_89

    .line 351
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 354
    :cond_89
    new-instance v12, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 356
    .local v12, shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v13, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 358
    .local v4, bitmapShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v12}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 360
    if-eqz p2, :cond_af

    new-instance v14, Landroid/graphics/drawable/ClipDrawable;

    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v12, v15, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v12, v14

    .end local v12           #shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;
    :cond_af
    move-object v8, v12

    goto :goto_72

    .end local v4           #bitmapShader:Landroid/graphics/BitmapShader;
    .end local v13           #tileBitmap:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_b1
    move-object/from16 v8, p1

    .line 364
    goto :goto_72
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "drawable"

    .prologue
    const/16 v7, 0x2710

    .line 378
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_36

    move-object v1, p1

    .line 379
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 380
    .local v1, background:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 381
    .local v0, N:I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 382
    .local v4, newBg:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 384
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v0, :cond_32

    .line 385
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 386
    .local v2, frame:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 387
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 389
    .end local v2           #frame:Landroid/graphics/drawable/Drawable;
    :cond_32
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 390
    move-object p1, v4

    .line 392
    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/AnimationDrawable;
    .end local v3           #i:I
    .end local v4           #newBg:Landroid/graphics/drawable/AnimationDrawable;
    :cond_36
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .registers 16
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v12, 0x0

    .line 1004
    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v7, v10, v11

    .line 1005
    .local v7, right:I
    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v0, v10, v11

    .line 1006
    .local v0, bottom:I
    const/4 v8, 0x0

    .line 1007
    .local v8, top:I
    const/4 v6, 0x0

    .line 1009
    .local v6, left:I
    iget-object v10, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_4b

    .line 1011
    iget-boolean v10, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v10, :cond_46

    iget-object v10, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v10, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v10, :cond_46

    .line 1014
    iget-object v10, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1015
    .local v5, intrinsicWidth:I
    iget-object v10, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1016
    .local v4, intrinsicHeight:I
    int-to-float v10, v5

    int-to-float v11, v4

    div-float v3, v10, v11

    .line 1017
    .local v3, intrinsicAspect:F
    int-to-float v10, p1

    int-to-float v11, p2

    div-float v1, v10, v11

    .line 1018
    .local v1, boundAspect:F
    cmpl-float v10, v3, v1

    if-eqz v10, :cond_46

    .line 1019
    cmpl-float v10, v1, v3

    if-lez v10, :cond_55

    .line 1021
    int-to-float v10, p2

    mul-float/2addr v10, v3

    float-to-int v9, v10

    .line 1022
    .local v9, width:I
    sub-int v10, p1, v9

    div-int/lit8 v6, v10, 0x2

    .line 1023
    add-int v7, v6, v9

    .line 1032
    .end local v1           #boundAspect:F
    .end local v3           #intrinsicAspect:F
    .end local v4           #intrinsicHeight:I
    .end local v5           #intrinsicWidth:I
    .end local v9           #width:I
    :cond_46
    :goto_46
    iget-object v10, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v6, v8, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1035
    :cond_4b
    iget-object v10, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_54

    .line 1036
    iget-object v10, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v12, v12, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1038
    :cond_54
    return-void

    .line 1026
    .restart local v1       #boundAspect:F
    .restart local v3       #intrinsicAspect:F
    .restart local v4       #intrinsicHeight:I
    .restart local v5       #intrinsicWidth:I
    :cond_55
    int-to-float v10, p1

    const/high16 v11, 0x3f80

    div-float/2addr v11, v3

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 1027
    .local v2, height:I
    sub-int v10, p2, v2

    div-int/lit8 v8, v10, 0x2

    .line 1028
    add-int v0, v8, v2

    goto :goto_46
.end method

.method private updateDrawableState()V
    .registers 3

    .prologue
    .line 1103
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1105
    .local v0, state:[I
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1106
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1109
    :cond_15
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1110
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1112
    :cond_26
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 1098
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1099
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 1100
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 368
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_e

    .line 369
    .local v0, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 368
    :array_e
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 803
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 772
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 3
    .parameter "who"

    .prologue
    .line 993
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_d

    :cond_8
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResolvedLayoutDirection()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    goto :goto_c
.end method

.method public declared-synchronized getSecondaryProgress()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 789
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 839
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 840
    monitor-exit p0

    return-void

    .line 839
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 850
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 851
    monitor-exit p0

    return-void

    .line 850
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .parameter "dr"

    .prologue
    .line 974
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_29

    .line 975
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 976
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 977
    .local v0, dirty:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 978
    .local v1, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    add-int v2, v3, v4

    .line 980
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    .line 986
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_29
    :goto_29
    return-void

    .line 983
    :cond_2a
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_29
.end method

.method public declared-synchronized isIndeterminate()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 428
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 560
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 561
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 562
    :cond_c
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 563
    :cond_15
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1176
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1177
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v3, :cond_b

    .line 1178
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    .line 1180
    :cond_b
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v3, :cond_37

    .line 1181
    monitor-enter p0

    .line 1182
    :try_start_10
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1183
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v0, :cond_31

    .line 1184
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    .line 1185
    .local v2, rd:Landroid/widget/ProgressBar$RefreshData;
    iget v3, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v4, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v5, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 1186
    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 1183
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1188
    .end local v2           #rd:Landroid/widget/ProgressBar$RefreshData;
    :cond_31
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1189
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_3a

    .line 1191
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_37
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 1192
    return-void

    .line 1189
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1196
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_7

    .line 1197
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 1199
    :cond_7
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_10

    .line 1200
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1202
    :cond_10
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    if-eqz v0, :cond_1d

    .line 1203
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1205
    :cond_1d
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_26

    .line 1206
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1210
    :cond_26
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 1212
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v6, 0x1

    .line 1042
    monitor-enter p0

    :try_start_2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1044
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1045
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5a

    .line 1048
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1049
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1050
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 1051
    .local v2, time:J
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v4, :cond_44

    .line 1052
    iget-object v4, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v5}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1053
    iget-object v4, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_61

    move-result v1

    .line 1055
    .local v1, scale:F
    const/4 v4, 0x1

    :try_start_2b
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1056
    const v4, 0x461c4000

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_5c

    .line 1058
    const/4 v4, 0x0

    :try_start_36
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1060
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mIsBenchMark:Z
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_61

    if-ne v4, v6, :cond_41

    .line 1062
    const-wide/16 v4, 0x12c

    :try_start_3e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_61
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_41} :catch_64

    .line 1067
    :cond_41
    :goto_41
    :try_start_41
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    .line 1069
    .end local v1           #scale:F
    :cond_44
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1070
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1071
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_5a

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_5a

    .line 1072
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1073
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_5a
    .catchall {:try_start_41 .. :try_end_5a} :catchall_61

    .line 1076
    .end local v2           #time:J
    :cond_5a
    monitor-exit p0

    return-void

    .line 1058
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #scale:F
    .restart local v2       #time:J
    :catchall_5c
    move-exception v4

    const/4 v5, 0x0

    :try_start_5e
    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    throw v4
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_61

    .line 1042
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #scale:F
    .end local v2           #time:J
    :catchall_61
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1063
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #scale:F
    .restart local v2       #time:J
    :catch_64
    move-exception v4

    goto :goto_41
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 1216
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1217
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1218
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1219
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1220
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1224
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1225
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1226
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1080
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1082
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1083
    .local v2, dw:I
    const/4 v1, 0x0

    .line 1084
    .local v1, dh:I
    if-eqz v0, :cond_27

    .line 1085
    iget v3, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1086
    iget v3, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1088
    :cond_27
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 1089
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1090
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1092
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    .line 1094
    monitor-exit p0

    return-void

    .line 1080
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #dh:I
    .end local v2           #dw:I
    :catchall_45
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .registers 4
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 668
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 669
    invoke-direct {p0}, Landroid/widget/ProgressBar;->scheduleAccessibilityEventSender()V

    .line 671
    :cond_f
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1167
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    .line 1168
    .local v0, ss:Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1170
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1171
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1172
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1156
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1157
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1159
    .local v0, ss:Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    .line 1160
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 1162
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 999
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1000
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 960
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 962
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_11

    .line 964
    const/16 v0, 0x8

    if-eq p2, v0, :cond_e

    const/4 v0, 0x4

    if-ne p2, v0, :cond_12

    .line 965
    :cond_e
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 970
    :cond_11
    :goto_11
    return-void

    .line 967
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_11
.end method

.method public postInvalidate()V
    .registers 2

    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_7

    .line 568
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 570
    :cond_7
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .registers 3
    .parameter "indeterminate"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 443
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_18

    :cond_9
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_18

    .line 444
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 446
    if-eqz p1, :cond_1a

    .line 448
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 449
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_22

    .line 455
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 451
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 452
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_18

    .line 443
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 480
    if-eqz p1, :cond_5

    .line 481
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 483
    :cond_5
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_10

    .line 485
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 486
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 488
    :cond_10
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resID"

    .prologue
    .line 919
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 920
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .parameter "interpolator"

    .prologue
    .line 929
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 930
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 5
    .parameter "max"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 817
    monitor-enter p0

    if-gez p1, :cond_4

    .line 818
    const/4 p1, 0x0

    .line 820
    :cond_4
    :try_start_4
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_1c

    .line 821
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 822
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 824
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_13

    .line 825
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 827
    :cond_13
    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1e

    .line 829
    :cond_1c
    monitor-exit p0

    return-void

    .line 817
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3
    .parameter "progress"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 703
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 704
    monitor-exit p0

    return-void

    .line 703
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .registers 5
    .parameter "progress"
    .parameter "fromUser"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 708
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    if-eqz v0, :cond_7

    .line 724
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 712
    :cond_7
    if-gez p1, :cond_a

    .line 713
    const/4 p1, 0x0

    .line 716
    :cond_a
    :try_start_a
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_10

    .line 717
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 720
    :cond_10
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-eq p1, v0, :cond_5

    .line 721
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 722
    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1f

    goto :goto_5

    .line 708
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter "d"

    .prologue
    const/4 v4, 0x0

    .line 514
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4e

    .line 515
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 516
    const/4 v1, 0x1

    .line 521
    .local v1, needUpdate:Z
    :goto_10
    if-eqz p1, :cond_22

    .line 522
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 525
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 526
    .local v0, drawableHeight:I
    iget v2, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    if-ge v2, v0, :cond_22

    .line 527
    iput v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 528
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 531
    .end local v0           #drawableHeight:I
    :cond_22
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    iget-boolean v2, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_2d

    .line 533
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 534
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 537
    :cond_2d
    if-eqz v1, :cond_4d

    .line 538
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 539
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 540
    const v2, 0x102000d

    iget v3, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 541
    const v2, 0x102000f

    iget v3, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 543
    :cond_4d
    return-void

    .line 518
    .end local v1           #needUpdate:Z
    :cond_4e
    const/4 v1, 0x0

    .restart local v1       #needUpdate:Z
    goto :goto_10
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .registers 5
    .parameter "secondaryProgress"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 740
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    .line 756
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 744
    :cond_7
    if-gez p1, :cond_a

    .line 745
    const/4 p1, 0x0

    .line 748
    :cond_a
    :try_start_a
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_10

    .line 749
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 752
    :cond_10
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_5

    .line 753
    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 754
    const v0, 0x102000f

    iget v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_20

    goto :goto_5

    .line 740
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "v"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 944
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_17

    .line 945
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 947
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_17

    .line 949
    const/16 v0, 0x8

    if-eq p1, v0, :cond_14

    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 950
    :cond_14
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 956
    :cond_17
    :goto_17
    return-void

    .line 952
    :cond_18
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_17
.end method

.method startAnimation()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 857
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_8

    .line 896
    :goto_7
    return-void

    .line 861
    :cond_8
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_17

    .line 862
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 863
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 895
    :goto_13
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    goto :goto_7

    .line 865
    :cond_17
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 867
    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_24

    .line 868
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 871
    :cond_24
    iget-object v1, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v1, :cond_75

    .line 872
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 877
    :goto_2f
    iget-object v1, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v1, :cond_7b

    .line 878
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 883
    :goto_3d
    const-string/jumbo v1, "sys.optimization.benchapk"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, tmp:Ljava/lang/String;
    if-eqz v0, :cond_51

    .line 885
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 886
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mIsBenchMark:Z

    .line 889
    :cond_51
    iget-object v1, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v2, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 890
    iget-object v1, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 891
    iget-object v1, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v2, p0, Landroid/widget/ProgressBar;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 892
    iget-object v1, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 893
    iget-object v1, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_13

    .line 874
    .end local v0           #tmp:Ljava/lang/String;
    :cond_75
    iget-object v1, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_2f

    .line 880
    :cond_7b
    iget-object v1, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_3d
.end method

.method stopAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 902
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 903
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_12

    .line 904
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 905
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 907
    :cond_12
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIsBenchMark:Z

    .line 908
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 909
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 554
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_e

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
