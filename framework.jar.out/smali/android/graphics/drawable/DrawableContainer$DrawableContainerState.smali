.class public abstract Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawableContainerState"
.end annotation


# instance fields
.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantState:Z

.field mChildrenChangingConfigurations:I

.field mComputedConstantSize:Z

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDither:Z

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHaveOpacity:Z

.field mHaveStateful:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Landroid/graphics/drawable/DrawableContainer;

.field mPaddingChecked:Z

.field mStateful:Z

.field mVariablePadding:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .registers 10
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 463
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 436
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 437
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 439
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 440
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 446
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    .line 449
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    .line 455
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 457
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 464
    iput-object p2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    .line 466
    if-eqz p1, :cond_9d

    .line 467
    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 468
    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 470
    iget-object v2, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 472
    .local v2, origDr:[Landroid/graphics/drawable/Drawable;
    array-length v3, v2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 473
    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 475
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 476
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, v0, :cond_5b

    .line 477
    if-eqz p3, :cond_4c

    .line 478
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    .line 482
    :goto_42
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 480
    :cond_4c
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_42

    .line 485
    :cond_5b
    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 486
    iget-boolean v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 487
    iget-object v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_70

    .line 488
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 490
    :cond_70
    iget-boolean v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 491
    iget-boolean v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 492
    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 493
    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 495
    iget-boolean v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    .line 496
    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 497
    iget-boolean v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    .line 498
    iget-boolean v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 500
    iget-boolean v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 502
    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 503
    iget v3, p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 510
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #origDr:[Landroid/graphics/drawable/Drawable;
    :goto_9c
    return-void

    .line 506
    :cond_9d
    const/16 v3, 0xa

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 507
    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 508
    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    goto :goto_9c
.end method


# virtual methods
.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .registers 6
    .parameter "dr"

    .prologue
    const/4 v3, 0x0

    .line 518
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 520
    .local v0, pos:I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 521
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 524
    :cond_d
    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 525
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOwner:Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 527
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v0

    .line 528
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 529
    iget v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    .line 530
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    .line 531
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    .line 533
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    .line 534
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 535
    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 537
    return v0
.end method

.method public declared-synchronized canConstantState()Z
    .registers 4

    .prologue
    .line 699
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    if-nez v2, :cond_1d

    .line 700
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 701
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    .line 702
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_1a

    .line 703
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-nez v2, :cond_21

    .line 704
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z

    .line 708
    :cond_1a
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCheckedConstantState:Z

    .line 711
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_1d
    iget-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mCanConstantState:Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    monitor-exit p0

    return v2

    .line 702
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 699
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected computeConstantSize()V
    .registers 7

    .prologue
    .line 622
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    .line 624
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 625
    .local v0, N:I
    iget-object v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 626
    .local v2, drawables:[Landroid/graphics/drawable/Drawable;
    const/4 v5, -0x1

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 627
    const/4 v5, 0x0

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 628
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    if-ge v3, v0, :cond_43

    .line 629
    aget-object v1, v2, v3

    .line 630
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 631
    .local v4, s:I
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    if-le v4, v5, :cond_22

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    .line 632
    :cond_22
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 633
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    if-le v4, v5, :cond_2c

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    .line 634
    :cond_2c
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 635
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    if-le v4, v5, :cond_36

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    .line 636
    :cond_36
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 637
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    if-le v4, v5, :cond_40

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    .line 628
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 639
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    .end local v4           #s:I
    :cond_43
    return-void
.end method

.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 514
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    return v0
.end method

.method public final getChildCount()I
    .registers 2

    .prologue
    .line 541
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    return v0
.end method

.method public final getChildren()[Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getConstantHeight()I
    .registers 2

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_7

    .line 599
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 602
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    return v0
.end method

.method public final getConstantMinimumHeight()I
    .registers 2

    .prologue
    .line 614
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_7

    .line 615
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 618
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    return v0
.end method

.method public final getConstantMinimumWidth()I
    .registers 2

    .prologue
    .line 606
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_7

    .line 607
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 610
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    return v0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 557
    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    if-eqz v5, :cond_7

    .line 558
    const/4 v3, 0x0

    .line 578
    :goto_6
    return-object v3

    .line 560
    :cond_7
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    if-nez v5, :cond_f

    iget-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    if-eqz v5, :cond_12

    .line 561
    :cond_f
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    goto :goto_6

    .line 564
    :cond_12
    const/4 v3, 0x0

    .line 565
    .local v3, r:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 566
    .local v4, t:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 567
    .local v0, N:I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 568
    .local v1, drawables:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    if-ge v2, v0, :cond_5b

    .line 569
    aget-object v5, v1, v2

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 570
    if-nez v3, :cond_30

    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #r:Landroid/graphics/Rect;
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 571
    .restart local v3       #r:Landroid/graphics/Rect;
    :cond_30
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v5, v6, :cond_3a

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 572
    :cond_3a
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_44

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 573
    :cond_44
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_4e

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 574
    :cond_4e
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_58

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 568
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 577
    :cond_5b
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mPaddingChecked:Z

    .line 578
    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantPadding:Landroid/graphics/Rect;

    goto :goto_6
.end method

.method public final getConstantWidth()I
    .registers 2

    .prologue
    .line 590
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    if-nez v0, :cond_7

    .line 591
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->computeConstantSize()V

    .line 594
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    return v0
.end method

.method public final getEnterFadeDuration()I
    .registers 2

    .prologue
    .line 646
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    return v0
.end method

.method public final getExitFadeDuration()I
    .registers 2

    .prologue
    .line 654
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    return v0
.end method

.method public final getOpacity()I
    .registers 6

    .prologue
    .line 658
    iget-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    if-eqz v4, :cond_7

    .line 659
    iget v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 670
    :goto_6
    return v3

    .line 662
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 663
    .local v0, N:I
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 664
    .local v1, drawables:[Landroid/graphics/drawable/Drawable;
    if-lez v0, :cond_26

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 665
    .local v3, op:I
    :goto_16
    const/4 v2, 0x1

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_28

    .line 666
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v3

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 664
    .end local v2           #i:I
    .end local v3           #op:I
    :cond_26
    const/4 v3, -0x2

    goto :goto_16

    .line 668
    .restart local v2       #i:I
    .restart local v3       #op:I
    :cond_28
    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mOpacity:I

    .line 669
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveOpacity:Z

    goto :goto_6
.end method

.method public growArray(II)V
    .registers 6
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    .line 693
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    .line 694
    .local v0, newDrawables:[Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 695
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 696
    return-void
.end method

.method public final isConstantSize()Z
    .registers 2

    .prologue
    .line 586
    iget-boolean v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    return v0
.end method

.method public final isStateful()Z
    .registers 5

    .prologue
    .line 674
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    if-eqz v3, :cond_7

    .line 675
    iget-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 689
    :goto_6
    return v2

    .line 678
    :cond_7
    const/4 v2, 0x0

    .line 679
    .local v2, stateful:Z
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 680
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_1a

    .line 681
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 682
    const/4 v2, 0x1

    .line 687
    :cond_1a
    iput-boolean v2, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mStateful:Z

    .line 688
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mHaveStateful:Z

    goto :goto_6

    .line 680
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public final setConstantSize(Z)V
    .registers 2
    .parameter "constant"

    .prologue
    .line 582
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantSize:Z

    .line 583
    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .registers 2
    .parameter "duration"

    .prologue
    .line 642
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 643
    return-void
.end method

.method public final setExitFadeDuration(I)V
    .registers 2
    .parameter "duration"

    .prologue
    .line 650
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 651
    return-void
.end method

.method public final setVariablePadding(Z)V
    .registers 2
    .parameter "variable"

    .prologue
    .line 553
    iput-boolean p1, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 554
    return-void
.end method
