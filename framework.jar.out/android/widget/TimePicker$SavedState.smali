.class Landroid/widget/TimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/TimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 341
    new-instance v0, Landroid/widget/TimePicker$SavedState$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 320
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$SavedState;->mHour:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker$SavedState;->mMinute:I

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/TimePicker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .registers 4
    .parameter "superState"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 315
    iput p2, p0, Landroid/widget/TimePicker$SavedState;->mHour:I

    .line 316
    iput p3, p0, Landroid/widget/TimePicker$SavedState;->mMinute:I

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 307
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Landroid/widget/TimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 330
    iget v0, p0, Landroid/widget/TimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 335
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 336
    iget v0, p0, Landroid/widget/TimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Landroid/widget/TimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    return-void
.end method
