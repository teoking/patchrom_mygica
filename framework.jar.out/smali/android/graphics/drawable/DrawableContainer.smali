.class public Landroid/graphics/drawable/DrawableContainer;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCurIndex:I

.field private mCurrDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mLastDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 49
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 427
    return-void
.end method


# virtual methods
.method animate(Z)V
    .registers 14
    .parameter "schedule"

    .prologue
    const-wide/16 v10, 0xff

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 354
    .local v2, now:J
    const/4 v1, 0x0

    .line 355
    .local v1, animating:Z
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_63

    .line 356
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_23

    .line 357
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_4a

    .line 358
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 359
    iput-wide v7, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 371
    :cond_23
    :goto_23
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7d

    .line 372
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_3d

    .line 373
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_66

    .line 374
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v9, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 375
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 376
    iput-wide v7, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 389
    :cond_3d
    :goto_3d
    if-eqz p1, :cond_49

    if-eqz v1, :cond_49

    .line 390
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x10

    add-long/2addr v5, v2

    invoke-virtual {p0, v4, v5, v6}, Landroid/graphics/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 392
    :cond_49
    return-void

    .line 361
    :cond_4a
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int v0, v4, v5

    .line 364
    .local v0, animAlpha:I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v5, v0, 0xff

    iget v6, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 365
    const/4 v1, 0x1

    .line 366
    goto :goto_23

    .line 369
    .end local v0           #animAlpha:I
    :cond_63
    iput-wide v7, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_23

    .line 378
    :cond_66
    iget-wide v4, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    sub-long/2addr v4, v2

    mul-long/2addr v4, v10

    long-to-int v4, v4

    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int v0, v4, v5

    .line 381
    .restart local v0       #animAlpha:I
    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int/2addr v5, v0

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 382
    const/4 v1, 0x1

    .line 383
    goto :goto_3d

    .line 386
    .end local v0           #animAlpha:I
    :cond_7d
    iput-wide v7, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_3d
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 66
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    :cond_9
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 69
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    :cond_12
    return-void
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 402
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 403
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 405
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 227
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    .line 229
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 219
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    .line 221
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getLayoutInsets()Landroid/graphics/Insets;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLayoutInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_6
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    .line 245
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 235
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    .line 237
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, -0x2

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_d
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 4
    .parameter "padding"

    .prologue
    .line 82
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 83
    .local v0, r:Landroid/graphics/Rect;
    if-eqz v0, :cond_d

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 85
    const/4 v1, 0x1

    .line 90
    :goto_c
    return v1

    .line 87
    :cond_d
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_18

    .line 88
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_c

    .line 90
    :cond_18
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_c
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "who"

    .prologue
    .line 249
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 250
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :cond_11
    return-void
.end method

.method public isStateful()Z
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, changed:Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 173
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    const/4 v0, 0x1

    .line 177
    :cond_10
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_20

    .line 178
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 179
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 181
    :cond_20
    iget-wide v1, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_29

    .line 182
    iput-wide v3, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 183
    const/4 v0, 0x1

    .line 185
    :cond_29
    iget-wide v1, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_32

    .line 186
    iput-wide v3, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 187
    const/4 v0, 0x1

    .line 189
    :cond_32
    if-eqz v0, :cond_37

    .line 190
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 192
    :cond_37
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 410
    iget-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v3, :cond_28

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v3, p0, :cond_28

    .line 411
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v0

    .line 412
    .local v0, N:I
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 413
    .local v1, drawables:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v0, :cond_25

    .line 414
    aget-object v3, v1, v2

    if-eqz v3, :cond_22

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 413
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 416
    :cond_25
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 418
    .end local v0           #N:I
    .end local v1           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v2           #i:I
    :cond_28
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "bounds"

    .prologue
    .line 156
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 157
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 159
    :cond_9
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 160
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 162
    :cond_12
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .parameter "level"

    .prologue
    .line 207
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 213
    :goto_a
    return v0

    .line 210
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    goto :goto_a

    .line 213
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onStateChange([I)Z
    .registers 3
    .parameter "state"

    .prologue
    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 197
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 202
    :goto_a
    return v0

    .line 199
    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 200
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_a

    .line 202
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 255
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 256
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 258
    :cond_11
    return-void
.end method

.method public selectDrawable(I)Z
    .registers 12
    .parameter "idx"

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    iget v5, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ne p1, v5, :cond_a

    .line 349
    :goto_9
    return v3

    .line 289
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 295
    .local v1, now:J
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v5, v5, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    if-lez v5, :cond_9c

    .line 296
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1d

    .line 297
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 299
    :cond_1d
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_97

    .line 300
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v3, v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v5, v3

    add-long/2addr v5, v1

    iput-wide v5, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 310
    :cond_2d
    :goto_2d
    if-ltz p1, :cond_ac

    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v3, v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v3, :cond_ac

    .line 311
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v3, v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v3, p1

    .line 312
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 313
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 314
    if-eqz v0, :cond_77

    .line 315
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v3, v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v3, :cond_a6

    .line 316
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v3, v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v5, v3

    add-long/2addr v5, v1

    iput-wide v5, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 320
    :goto_4f
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->isVisible()Z

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 321
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v3, v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 322
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 323
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getState()[I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 324
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 325
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 332
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_77
    :goto_77
    iget-wide v5, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_83

    iget-wide v5, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_91

    .line 333
    :cond_83
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v3, :cond_b2

    .line 334
    new-instance v3, Landroid/graphics/drawable/DrawableContainer$1;

    invoke-direct {v3, p0}, Landroid/graphics/drawable/DrawableContainer$1;-><init>(Landroid/graphics/drawable/DrawableContainer;)V

    iput-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 344
    :goto_8e
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 347
    :cond_91
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->invalidateSelf()V

    move v3, v4

    .line 349
    goto/16 :goto_9

    .line 303
    :cond_97
    iput-object v9, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    .line 304
    iput-wide v7, p0, Landroid/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_2d

    .line 306
    :cond_9c
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2d

    .line 307
    iget-object v5, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_2d

    .line 318
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_a6
    iget v3, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4f

    .line 328
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_ac
    iput-object v9, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    .line 329
    const/4 v3, -0x1

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer;->mCurIndex:I

    goto :goto_77

    .line 341
    :cond_b2
    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_8e
.end method

.method public setAlpha(I)V
    .registers 6
    .parameter "alpha"

    .prologue
    .line 104
    iget v0, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_17

    .line 105
    iput p1, p0, Landroid/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 106
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 107
    iget-wide v0, p0, Landroid/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 108
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 114
    :cond_17
    :goto_17
    return-void

    .line 110
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    goto :goto_17
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter "cf"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_f

    .line 129
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 130
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 131
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 134
    :cond_f
    return-void
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 717
    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 718
    return-void
.end method

.method public setDither(Z)V
    .registers 4
    .parameter "dither"

    .prologue
    .line 118
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_17

    .line 119
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 120
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 121
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 124
    :cond_17
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .registers 3
    .parameter "ms"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 143
    return-void
.end method

.method public setExitFadeDuration(I)V
    .registers 3
    .parameter "ms"

    .prologue
    .line 151
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mDrawableContainerState:Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 152
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 268
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 269
    .local v0, changed:Z
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 270
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mLastDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 272
    :cond_d
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 273
    iget-object v1, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 275
    :cond_16
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "who"
    .parameter "what"

    .prologue
    .line 261
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer;->mCurrDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 262
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 264
    :cond_11
    return-void
.end method
