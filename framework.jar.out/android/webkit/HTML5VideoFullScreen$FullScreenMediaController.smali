.class Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;
.super Landroid/widget/MediaController;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FullScreenMediaController"
.end annotation


# instance fields
.field mVideoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 3
    .parameter "context"
    .parameter "video"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 415
    iput-object p2, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    .line 416
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .prologue
    .line 428
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 429
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 432
    :cond_a
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 433
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 420
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 421
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 422
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 424
    :cond_d
    return-void
.end method
