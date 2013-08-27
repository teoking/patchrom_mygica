.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoPlayer"
.end annotation


# static fields
.field private static isVideoSelfEnded:Z

.field private static mBaseLayer:I

.field private static mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private static mHTML5VideoView:Landroid/webkit/HTML5VideoView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 99
    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 102
    sput v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    sput-boolean p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return p0
.end method

.method static synthetic access$200(Z)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V

    return-void
.end method

.method public static end()V
    .registers 1

    .prologue
    .line 303
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->showControllerInFullScreen()V

    .line 304
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_12

    .line 305
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_16

    .line 306
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 310
    :cond_12
    :goto_12
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 311
    return-void

    .line 308
    :cond_16
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_12
.end method

.method public static enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .registers 12
    .parameter "layerId"
    .parameter "url"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, savePosition:I
    const/4 v0, 0x0

    .line 155
    .local v0, canSkipPrepare:Z
    const/4 v1, 0x0

    .line 156
    .local v1, forceStart:Z
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v6, :cond_58

    .line 159
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v6

    if-nez v6, :cond_22

    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 160
    const-string v4, "HTML5VideoViewProxy"

    const-string v5, "Try to reenter the full screen mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_21
    :goto_21
    return-void

    .line 163
    :cond_22
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 166
    .local v2, playerState:I
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v6

    if-ne p0, v6, :cond_4e

    .line 167
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v6

    if-nez v6, :cond_21

    .line 170
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v3

    .line 171
    if-eq v2, v4, :cond_45

    const/4 v6, 0x2

    if-eq v2, v6, :cond_45

    if-ne v2, v7, :cond_77

    :cond_45
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v6

    if-nez v6, :cond_77

    move v0, v4

    .line 176
    :cond_4e
    :goto_4e
    if-nez v0, :cond_79

    .line 177
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 178
    const/4 v4, 0x0

    sput-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 184
    .end local v2           #playerState:I
    :cond_58
    :goto_58
    new-instance v4, Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0, v3, v0}, Landroid/webkit/HTML5VideoFullScreen;-><init>(Landroid/content/Context;IIZ)V

    sput-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 186
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, v1}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 187
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 188
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v4, p1, v5}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 189
    sget-object v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, p0, p2, p3}, Landroid/webkit/HTML5VideoView;->enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_21

    .restart local v2       #playerState:I
    :cond_77
    move v0, v5

    .line 171
    goto :goto_4e

    .line 180
    :cond_79
    if-eq v2, v4, :cond_7d

    if-ne v2, v7, :cond_7f

    :cond_7d
    move v1, v4

    :goto_7e
    goto :goto_58

    :cond_7f
    move v1, v5

    goto :goto_7e
.end method

.method public static exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .registers 4
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 194
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v1

    if-nez v1, :cond_19

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 195
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 196
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_19

    .line 197
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 200
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_19
    return-void
.end method

.method public static getCurrentPosition()I
    .registers 2

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, currentPosMs:I
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_b

    .line 276
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 278
    :cond_b
    return v0
.end method

.method public static isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z
    .registers 2
    .parameter "proxy"

    .prologue
    .line 269
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_12

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_12

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static onPrepared()V
    .registers 1

    .prologue
    .line 294
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 295
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 297
    :cond_d
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    if-eqz v0, :cond_16

    .line 298
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 300
    :cond_16
    return-void
.end method

.method public static pause(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 2
    .parameter "proxy"

    .prologue
    .line 288
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_d

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_d

    .line 289
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 291
    :cond_d
    return-void
.end method

.method public static pauseAndDispatch()V
    .registers 2

    .prologue
    .line 141
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_15

    .line 142
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 145
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 146
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 148
    :cond_15
    return-void
.end method

.method public static play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;ILandroid/webkit/WebViewClassic;)V
    .registers 10
    .parameter "url"
    .parameter "time"
    .parameter "proxy"
    .parameter "client"
    .parameter "videoLayerId"
    .parameter "webView"

    .prologue
    .line 207
    const/4 v1, -0x1

    .line 208
    .local v1, currentVideoLayerId:I
    const/4 v0, 0x0

    .line 209
    .local v0, backFromFullScreenMode:Z
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v2, :cond_35

    .line 210
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v1

    .line 211
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v0

    .line 217
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_35

    if-nez v0, :cond_35

    if-eq v1, p4, :cond_35

    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v2, p2, :cond_35

    .line 221
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 222
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 223
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2, p0, p2}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 224
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2, p2}, Landroid/webkit/HTML5VideoView;->reprepareData(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 266
    :cond_34
    :goto_34
    return-void

    .line 229
    :cond_35
    if-nez v0, :cond_41

    if-ne v1, p4, :cond_41

    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->surfaceTextureDeleted()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 237
    :cond_41
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v2, :cond_56

    .line 238
    if-nez v0, :cond_4e

    .line 239
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2, v3}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 241
    :cond_4e
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 242
    const/4 v2, 0x0

    sput-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 244
    :cond_56
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 246
    const-string/jumbo v2, "media.html5videowin.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_66

    .line 248
    invoke-static {p4, p0, p2, p5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto :goto_34

    .line 251
    :cond_66
    new-instance v2, Landroid/webkit/HTML5VideoInline;

    invoke-direct {v2, p4, p1}, Landroid/webkit/HTML5VideoInline;-><init>(II)V

    sput-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 252
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v3, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2, p0, v3}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 253
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2, p2}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_34

    .line 255
    :cond_7a
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v2, p2, :cond_91

    .line 257
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_34

    .line 258
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2, p1}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 259
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->start()V

    goto :goto_34

    .line 261
    :cond_91
    sget-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v2, :cond_34

    .line 264
    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    goto :goto_34
.end method

.method public static seek(ILandroid/webkit/HTML5VideoViewProxy;)V
    .registers 3
    .parameter "time"
    .parameter "proxy"

    .prologue
    .line 282
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p1, :cond_f

    if-ltz p0, :cond_f

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_f

    .line 283
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 285
    :cond_f
    return-void
.end method

.method public static setBaseLayer(I)V
    .registers 8
    .parameter "layer"

    .prologue
    .line 113
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v5, :cond_51

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_51

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->surfaceTextureDeleted()Z

    move-result v5

    if-nez v5, :cond_51

    .line 116
    sput p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 118
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v0

    .line 119
    .local v0, currentVideoLayerId:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 121
    .local v3, surfTexture:Landroid/graphics/SurfaceTexture;
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v4

    .line 123
    .local v4, textureName:I
    if-eqz p0, :cond_51

    if-eqz v3, :cond_51

    const/4 v5, -0x1

    if-eq v0, v5, :cond_51

    .line 124
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 125
    .local v2, playerState:I
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 126
    const/4 v2, 0x1

    .line 127
    :cond_3c
    invoke-static {v3, p0, v0, v4, v2}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v1

    .line 130
    .local v1, foundInTree:Z
    const/4 v5, 0x2

    if-lt v2, v5, :cond_51

    if-nez v1, :cond_51

    .line 132
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v5, v6}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 133
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->deleteSurfaceTexture()V

    .line 137
    .end local v0           #currentVideoLayerId:I
    .end local v1           #foundInTree:Z
    .end local v2           #playerState:I
    .end local v3           #surfTexture:Landroid/graphics/SurfaceTexture;
    .end local v4           #textureName:I
    :cond_51
    return-void
.end method

.method private static setPlayerBuffering(Z)V
    .registers 2
    .parameter "playerBuffering"

    .prologue
    .line 105
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 106
    return-void
.end method

.method public static updateLayout(IIII)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 314
    const-string v0, "HTML5VideoViewProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout update to:x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/webkit/HTML5VideoView;->updateLayout(IIII)V

    .line 316
    return-void
.end method
