.class Landroid/webkit/HTML5VideoFullScreen$1;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 89
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_26

    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 91
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 93
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 98
    :cond_26
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v0, p1}, Landroid/webkit/HTML5VideoFullScreen;->access$302(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 103
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->access$402(Landroid/webkit/HTML5VideoFullScreen;I)I

    .line 105
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$500(Landroid/webkit/HTML5VideoFullScreen;)V

    .line 106
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter "holder"

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v1, v1, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoFullScreen;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 114
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 115
    sput-object v2, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 116
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v0, v2}, Landroid/webkit/HTML5VideoFullScreen;->access$302(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 117
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 118
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$1;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-static {v0}, Landroid/webkit/HTML5VideoFullScreen;->access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 120
    :cond_27
    return-void
.end method
