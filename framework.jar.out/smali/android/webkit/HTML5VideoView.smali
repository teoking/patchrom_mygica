.class public Landroid/webkit/HTML5VideoView;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoView$TimeupdateTask;
    }
.end annotation


# static fields
.field protected static final COOKIE:Ljava/lang/String; = "Cookie"

.field protected static final HIDE_URL_LOGS:Ljava/lang/String; = "x-hide-urls-from-log"

.field protected static final LOGTAG:Ljava/lang/String; = "HTML5VideoView"

.field static final STATE_INITIALIZED:I = 0x0

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_PREPARED:I = 0x2

.field static final STATE_PREPARING:I = 0x1

.field static final STATE_RESETTED:I = 0x4

.field private static final TIMEUPDATE_PERIOD:I = 0xfa

.field protected static mCurrentState:I

.field protected static mPlayer:Landroid/media/MediaPlayer;

.field protected static mTimer:Ljava/util/Timer;


# instance fields
.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPauseDuringPreparing:Z

.field public mPlayerBuffering:Z

.field protected mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field protected mSaveSeekTime:I

.field private mSkipPrepare:Z

.field private mStartWhenPrepared:Z

.field protected mUri:Landroid/net/Uri;

.field protected mVideoLayerId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 54
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    .line 347
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 373
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    .line 168
    return-void
.end method

.method protected static generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;
    .registers 7
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/HTML5VideoViewProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v2

    .line 173
    .local v2, isPrivate:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, cookieValue:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1c

    .line 176
    const-string v3, "Cookie"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_1c
    if-eqz v2, :cond_27

    .line 179
    const-string/jumbo v3, "x-hide-urls-from-log"

    const-string/jumbo v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_27
    return-object v1
.end method


# virtual methods
.method public decideDisplayMode()V
    .registers 1

    .prologue
    .line 333
    return-void
.end method

.method public deleteSurfaceTexture()V
    .registers 1

    .prologue
    .line 340
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .registers 4
    .parameter "layerId"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 322
    return-void
.end method

.method public fullScreenExited()Z
    .registers 2

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .registers 3

    .prologue
    .line 109
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 110
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 112
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getCurrentState()I
    .registers 2

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 277
    const/4 v0, 0x3

    .line 279
    :goto_7
    return v0

    :cond_8
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    goto :goto_7
.end method

.method public getDuration()I
    .registers 3

    .prologue
    .line 101
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 102
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 104
    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public getPauseDuringPreparing()Z
    .registers 2

    .prologue
    .line 146
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    return v0
.end method

.method public getPlayerBuffering()Z
    .registers 2

    .prologue
    .line 350
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    return v0
.end method

.method public getReadyToUseSurfTex()Z
    .registers 2

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public getStartWhenPrepared()Z
    .registers 2

    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    return v0
.end method

.method public getTextureName()I
    .registers 2

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoLayerId()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mVideoLayerId:I

    return v0
.end method

.method public init(IIZ)V
    .registers 7
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "skipPrepare"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_f

    .line 152
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 153
    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 155
    :cond_f
    iput-boolean p3, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    .line 157
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    if-nez v0, :cond_17

    .line 158
    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 160
    :cond_17
    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 161
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mVideoLayerId:I

    .line 162
    iput p2, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    .line 163
    sput-object v2, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 164
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 165
    return-void
.end method

.method public isFullScreenMode()Z
    .registers 2

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    .line 123
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 124
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 126
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 298
    const/4 v0, 0x2

    sput v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 299
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 300
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_11

    .line 301
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 303
    :cond_11
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    if-eqz v0, :cond_1d

    .line 304
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 307
    :cond_1d
    return-void
.end method

.method public pause()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 88
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 93
    :cond_c
    :goto_c
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1d

    .line 94
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 95
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 98
    :cond_1d
    return-void

    .line 89
    :cond_1e
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-ne v0, v1, :cond_c

    .line 90
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    goto :goto_c
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 2
    .parameter "proxy"

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 312
    if-eqz p1, :cond_8

    .line 313
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    .line 315
    :cond_8
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 6
    .parameter "proxy"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string/jumbo v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->decideDisplayMode()V

    .line 260
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnCompletionListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 261
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnPreparedListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 262
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnErrorListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 263
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnInfoListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 265
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 266
    return-void
.end method

.method public prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 7
    .parameter "proxy"

    .prologue
    const/4 v3, 0x0

    .line 210
    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_e

    .line 211
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 212
    sput v3, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 214
    :cond_e
    iget-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    if-nez v1, :cond_3c

    .line 217
    :try_start_12
    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 218
    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 219
    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_29} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_29} :catch_32
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_29} :catch_37

    .line 227
    :goto_29
    const/4 v1, 0x1

    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 237
    :goto_2c
    return-void

    .line 220
    :catch_2d
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_29

    .line 222
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_32
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_29

    .line 224
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_37
    move-exception v0

    .line 225
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 232
    .end local v0           #e:Ljava/io/IOException;
    :cond_3c
    sget v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_46

    .line 233
    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 235
    :cond_46
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    goto :goto_2c
.end method

.method public reprepareData(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 3
    .parameter "proxy"

    .prologue
    .line 240
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_e

    .line 241
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 242
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 244
    :cond_e
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 245
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 246
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 131
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-eq v0, v1, :cond_12

    .line 132
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 133
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 134
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 136
    :cond_12
    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 137
    return-void
.end method

.method public seekTo(I)V
    .registers 4
    .parameter "pos"

    .prologue
    .line 116
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 117
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 120
    :goto_a
    return-void

    .line 119
    :cond_b
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    goto :goto_a
.end method

.method public setOnCompletionListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 3
    .parameter "proxy"

    .prologue
    .line 193
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 194
    return-void
.end method

.method public setOnErrorListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 3
    .parameter "proxy"

    .prologue
    .line 197
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 198
    return-void
.end method

.method public setOnInfoListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 3
    .parameter "proxy"

    .prologue
    .line 206
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 207
    return-void
.end method

.method public setOnPreparedListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 3
    .parameter "proxy"

    .prologue
    .line 201
    iput-object p1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 202
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 203
    return-void
.end method

.method public setPlayerBuffering(Z)V
    .registers 2
    .parameter "playerBuffering"

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 355
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->switchProgressView(Z)V

    .line 356
    return-void
.end method

.method public setStartWhenPrepared(Z)V
    .registers 2
    .parameter "willPlay"

    .prologue
    .line 376
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    .line 377
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V
    .registers 4
    .parameter "uri"
    .parameter "proxy"

    .prologue
    .line 187
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    .line 188
    invoke-static {p1, p2}, Landroid/webkit/HTML5VideoView;->generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    .line 189
    return-void
.end method

.method public showControllerInFullScreen()V
    .registers 1

    .prologue
    .line 384
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    const-wide/16 v2, 0xfa

    .line 72
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 75
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1f

    .line 77
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 78
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5VideoView$TimeupdateTask;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v1, v4}, Landroid/webkit/HTML5VideoView$TimeupdateTask;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 81
    :cond_1f
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 84
    :cond_28
    return-void
.end method

.method public stopPlayback()V
    .registers 3

    .prologue
    .line 140
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 141
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 143
    :cond_a
    return-void
.end method

.method public surfaceTextureDeleted()Z
    .registers 2

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method protected switchProgressView(Z)V
    .registers 2
    .parameter "playerBuffering"

    .prologue
    .line 361
    return-void
.end method

.method public updateLayout(IIII)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 325
    return-void
.end method
