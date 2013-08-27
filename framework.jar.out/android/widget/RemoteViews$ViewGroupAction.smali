.class Landroid/widget/RemoteViews$ViewGroupAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupAction"
.end annotation


# static fields
.field public static final TAG:I = 0x4


# instance fields
.field nestedViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .registers 5
    .parameter
    .parameter "viewId"
    .parameter "nestedViews"

    .prologue
    .line 1076
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1077
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    .line 1078
    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    .line 1079
    if-eqz p3, :cond_f

    .line 1080
    invoke-static {p1, p3}, Landroid/widget/RemoteViews;->access$300(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1082
    :cond_f
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 7
    .parameter
    .parameter "parcel"
    .parameter "bitmapCache"

    .prologue
    const/4 v2, 0x0

    .line 1084
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v2}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    .line 1086
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    .line 1087
    .local v0, nestedViewsNull:Z
    :goto_13
    if-nez v0, :cond_1f

    .line 1088
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-direct {v1, p2, p3, v2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$1;)V

    iput-object v1, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    .line 1092
    :goto_1c
    return-void

    .line 1086
    .end local v0           #nestedViewsNull:Z
    :cond_1d
    const/4 v0, 0x0

    goto :goto_13

    .line 1090
    .restart local v0       #nestedViewsNull:Z
    :cond_1f
    iput-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    goto :goto_1c
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 7
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    .line 1108
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1109
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1110
    .local v1, target:Landroid/view/ViewGroup;
    if-nez v1, :cond_f

    .line 1118
    :goto_e
    return-void

    .line 1111
    :cond_f
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1d

    .line 1113
    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_e

    .line 1116
    :cond_1d
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_e
.end method

.method public setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .registers 3
    .parameter "bitmapCache"

    .prologue
    .line 1129
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_9

    .line 1130
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->access$500(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V

    .line 1132
    :cond_9
    return-void
.end method

.method public updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .registers 3
    .parameter "counter"

    .prologue
    .line 1122
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_d

    .line 1123
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    .line 1125
    :cond_d
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1095
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_17

    .line 1098
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupAction;->nestedViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1104
    :goto_16
    return-void

    .line 1102
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16
.end method
