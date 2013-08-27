.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrollHasChanged:Z

.field final mTempCoords:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x6

    .line 1980
    iput-object p1, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1983
    iput v1, p0, Landroid/widget/Editor$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 1984
    new-array v0, v1, [Landroid/widget/Editor$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 1986
    new-array v0, v1, [Z

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    .line 1987
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 1992
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1980
    invoke-direct {p0, p1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private updatePosition()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2058
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 2060
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    if-ne v0, v3, :cond_1d

    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    if-eq v0, v3, :cond_2d

    :cond_1d
    move v0, v2

    :goto_1e
    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    .line 2062
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    .line 2063
    iget-object v0, p0, Landroid/widget/Editor$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    .line 2064
    return-void

    :cond_2d
    move v0, v1

    .line 2060
    goto :goto_1e
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .registers 8
    .parameter "positionListener"
    .parameter "canMove"

    .prologue
    .line 1995
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v4, :cond_14

    .line 1996
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 1997
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 1998
    .local v3, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2001
    .end local v3           #vto:Landroid/view/ViewTreeObserver;
    :cond_14
    const/4 v0, -0x1

    .line 2002
    .local v0, emptySlotIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    const/4 v4, 0x6

    if-ge v1, v4, :cond_28

    .line 2003
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 2004
    .local v2, listener:Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_20

    .line 2014
    .end local v2           #listener:Landroid/widget/Editor$TextViewPositionListener;
    :goto_1f
    return-void

    .line 2006
    .restart local v2       #listener:Landroid/widget/Editor$TextViewPositionListener;
    :cond_20
    if-gez v0, :cond_25

    if-nez v2, :cond_25

    .line 2007
    move v0, v1

    .line 2002
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2011
    .end local v2           #listener:Landroid/widget/Editor$TextViewPositionListener;
    :cond_28
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 2012
    iget-object v4, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 2013
    iget v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    goto :goto_1f
.end method

.method public getPositionX()I
    .registers 2

    .prologue
    .line 2032
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .registers 2

    .prologue
    .line 2036
    iget v0, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    return v0
.end method

.method public onPreDraw()Z
    .registers 7

    .prologue
    .line 2041
    invoke-direct {p0}, Landroid/widget/Editor$PositionListener;->updatePosition()V

    .line 2043
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/4 v2, 0x6

    if-ge v0, v2, :cond_29

    .line 2044
    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    if-nez v2, :cond_15

    iget-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mCanMove:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_26

    .line 2045
    :cond_15
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v1, v2, v0

    .line 2046
    .local v1, positionListener:Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v1, :cond_26

    .line 2047
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$PositionListener;->mPositionY:I

    iget-boolean v4, p0, Landroid/widget/Editor$PositionListener;->mPositionHasChanged:Z

    iget-boolean v5, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 2043
    .end local v1           #positionListener:Landroid/widget/Editor$TextViewPositionListener;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2053
    :cond_29
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 2054
    const/4 v2, 0x1

    return v2
.end method

.method public onScrollChanged()V
    .registers 2

    .prologue
    .line 2067
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$PositionListener;->mScrollHasChanged:Z

    .line 2068
    return-void
.end method

.method public removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .registers 6
    .parameter "positionListener"

    .prologue
    .line 2017
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_15

    .line 2018
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_27

    .line 2019
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2020
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    .line 2025
    :cond_15
    iget v2, p0, Landroid/widget/Editor$PositionListener;->mNumberOfListeners:I

    if-nez v2, :cond_26

    .line 2026
    iget-object v2, p0, Landroid/widget/Editor$PositionListener;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2027
    .local v1, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2029
    .end local v1           #vto:Landroid/view/ViewTreeObserver;
    :cond_26
    return-void

    .line 2017
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
