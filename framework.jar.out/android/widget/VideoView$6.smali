.class Landroid/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 11
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 468
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v4, p3}, Landroid/widget/VideoView;->access$1002(Landroid/widget/VideoView;I)I

    .line 469
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v4, p4}, Landroid/widget/VideoView;->access$1102(Landroid/widget/VideoView;I)I

    .line 470
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4c

    move v1, v2

    .line 471
    .local v1, isValidState:Z
    :goto_16
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p3, :cond_4e

    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p4, :cond_4e

    move v0, v2

    .line 472
    .local v0, hasValidSize:Z
    :goto_27
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_4b

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_4b

    .line 473
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_46

    .line 474
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 476
    :cond_46
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 478
    :cond_4b
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_4c
    move v1, v3

    .line 470
    goto :goto_16

    .restart local v1       #isValidState:Z
    :cond_4e
    move v0, v3

    .line 471
    goto :goto_27
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 482
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p1}, Landroid/widget/VideoView;->access$1902(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 483
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)V

    .line 484
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 489
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$1902(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 490
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 491
    :cond_17
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2100(Landroid/widget/VideoView;Z)V

    .line 492
    return-void
.end method
