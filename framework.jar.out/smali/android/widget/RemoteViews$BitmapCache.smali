.class Landroid/widget/RemoteViews$BitmapCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation


# instance fields
.field mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 696
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 698
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "source"

    .prologue
    .line 700
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 702
    .local v1, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 703
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 704
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 705
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 707
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_21
    return-void
.end method


# virtual methods
.method public addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .registers 4
    .parameter "memoryCounter"

    .prologue
    .line 750
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 751
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;->addBitmapMemory(Landroid/graphics/Bitmap;)V

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 753
    :cond_17
    return-void
.end method

.method public assimilate(Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 7
    .parameter "bitmapCache"

    .prologue
    .line 739
    iget-object v1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 740
    .local v1, bitmapsToBeAdded:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 741
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v2, :cond_1f

    .line 742
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 743
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 744
    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 747
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1f
    return-void
.end method

.method public getBitmapForId(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "id"

    .prologue
    .line 723
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    .line 724
    :cond_b
    const/4 v0, 0x0

    .line 726
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_c
.end method

.method public getBitmapId(Landroid/graphics/Bitmap;)I
    .registers 3
    .parameter "b"

    .prologue
    .line 710
    if-nez p1, :cond_4

    .line 711
    const/4 v0, -0x1

    .line 717
    :goto_3
    return v0

    .line 713
    :cond_4
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 714
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3

    .line 716
    :cond_13
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public writeBitmapsToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 731
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 732
    .local v0, count:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 734
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 736
    :cond_1a
    return-void
.end method
