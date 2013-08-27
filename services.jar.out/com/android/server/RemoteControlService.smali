.class public Lcom/android/server/RemoteControlService;
.super Ljava/lang/Object;
.source "RemoteControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RemoteControlService$MessageThread;
    }
.end annotation


# static fields
.field public static final ACTION_CLIENT_CONNECT:Ljava/lang/String; = "com.bestv.msg.phone.connect"

.field public static final ACTION_CLIENT_DISCONNECT:Ljava/lang/String; = "com.bestv.msg.phone.disconnect"

.field public static final ACTION_DAEMON_DISABLE:Ljava/lang/String; = "android.intent.action.RC_DAEMON_DISABLE"

.field public static final ACTION_DAEMON_ENABLE:Ljava/lang/String; = "android.intent.action.RC_DAEMON_ENABLE"

.field public static final ACTION_DATA:Ljava/lang/String; = "android.intent.action.RC_DATA"

.field public static final ACTION_PLAY_FAST:Ljava/lang/String; = "android.intent.action.RC_PLAY_FAST"

.field public static final ACTION_PLAY_NEXT:Ljava/lang/String; = "android.intent.action.RC_PLAY_NEXT"

.field public static final ACTION_PLAY_PREVIOUS:Ljava/lang/String; = "android.intent.action.RC_PLAY_PREVIOUS"

.field public static final ACTION_PLAY_SLOW:Ljava/lang/String; = "android.intent.action.RC_PLAY_SLOW"

.field public static final ACTION_PLAY_URL:Ljava/lang/String; = "android.intent.action.RC_PLAY_URL"

.field private static final EVENT_TYPE_SERVICE:I = 0x8

.field private static final SERVICE_TYPE_CONNECT:I = 0x80

.field private static final SERVICE_TYPE_DATA:I = 0x5

.field private static final SERVICE_TYPE_DISCONNECT:I = 0x81

.field private static final SERVICE_TYPE_PLAY_FAST:I = 0x0

.field private static final SERVICE_TYPE_PLAY_NEXT:I = 0x2

.field private static final SERVICE_TYPE_PLAY_PREVIOUS:I = 0x3

.field private static final SERVICE_TYPE_PLAY_SLOW:I = 0x1

.field private static final SERVICE_TYPE_PLAY_URL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RemoteControlService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEnableReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v1, Lcom/android/server/RemoteControlService$1;

    invoke-direct {v1, p0}, Lcom/android/server/RemoteControlService$1;-><init>(Lcom/android/server/RemoteControlService;)V

    iput-object v1, p0, Lcom/android/server/RemoteControlService;->mEnableReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v1, Lcom/android/server/RemoteControlService$2;

    invoke-direct {v1, p0}, Lcom/android/server/RemoteControlService$2;-><init>(Lcom/android/server/RemoteControlService;)V

    iput-object v1, p0, Lcom/android/server/RemoteControlService;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lcom/android/server/RemoteControlService;->mContext:Landroid/content/Context;

    .line 73
    const-string v1, "RemoteControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created a remote control service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lcom/android/server/RemoteControlService;->connect()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 77
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/RemoteControlService$MessageThread;

    invoke-direct {v2, p0}, Lcom/android/server/RemoteControlService$MessageThread;-><init>(Lcom/android/server/RemoteControlService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RC_DAEMON_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.RC_DAEMON_DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/server/RemoteControlService;->mEnableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_4f
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/RemoteControlService;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/RemoteControlService;->sendData(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/RemoteControlService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/RemoteControlService;)Landroid/net/LocalSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/RemoteControlService;)Ljava/io/InputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/RemoteControlService;)Ljava/io/OutputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private connect()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-object v3, p0, Lcom/android/server/RemoteControlService;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_6

    .line 146
    :goto_5
    return v2

    .line 130
    :cond_6
    const-string v3, "RemoteControlService"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :try_start_d
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/RemoteControlService;->mSocket:Landroid/net/LocalSocket;

    .line 134
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "remote_control_service"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 137
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/server/RemoteControlService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 139
    iget-object v3, p0, Lcom/android/server/RemoteControlService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/RemoteControlService;->mIn:Ljava/io/InputStream;

    .line 140
    iget-object v3, p0, Lcom/android/server/RemoteControlService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/RemoteControlService;->mOut:Ljava/io/OutputStream;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_33

    goto :goto_5

    .line 141
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_33
    move-exception v1

    .line 142
    .local v1, ex:Ljava/io/IOException;
    const-string v2, "RemoteControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/server/RemoteControlService;->disconnect()V

    .line 144
    const/4 v2, 0x0

    goto :goto_5
.end method

.method private disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 150
    const-string v0, "RemoteControlService"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_8
    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_2e

    .line 156
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_2c

    .line 160
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/RemoteControlService;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_2a

    .line 163
    :cond_23
    :goto_23
    iput-object v2, p0, Lcom/android/server/RemoteControlService;->mSocket:Landroid/net/LocalSocket;

    .line 164
    iput-object v2, p0, Lcom/android/server/RemoteControlService;->mIn:Ljava/io/InputStream;

    .line 165
    iput-object v2, p0, Lcom/android/server/RemoteControlService;->mOut:Ljava/io/OutputStream;

    .line 166
    return-void

    .line 161
    :catch_2a
    move-exception v0

    goto :goto_23

    .line 157
    :catch_2c
    move-exception v0

    goto :goto_1a

    .line 153
    :catch_2e
    move-exception v0

    goto :goto_11
.end method

.method private sendData(Z)Z
    .registers 10
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 102
    :try_start_2
    iget-object v5, p0, Lcom/android/server/RemoteControlService;->mOut:Ljava/io/OutputStream;

    if-eqz v5, :cond_2e

    .line 103
    const/4 v5, 0x4

    new-array v2, v5, [B

    .line 104
    .local v2, len:[B
    const/4 v0, 0x1

    .line 106
    .local v0, dataLen:I
    const/4 v5, 0x0

    int-to-byte v6, v4

    aput-byte v6, v2, v5

    .line 107
    const/4 v5, 0x1

    int-to-byte v6, v4

    aput-byte v6, v2, v5

    .line 108
    const/4 v5, 0x2

    int-to-byte v6, v4

    aput-byte v6, v2, v5

    .line 109
    const/4 v5, 0x3

    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 111
    iget-object v5, p0, Lcom/android/server/RemoteControlService;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 113
    iget-object v6, p0, Lcom/android/server/RemoteControlService;->mOut:Ljava/io/OutputStream;

    if-eqz p1, :cond_2f

    move v5, v3

    :goto_26
    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write(I)V

    .line 115
    iget-object v5, p0, Lcom/android/server/RemoteControlService;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2e} :catch_31

    .line 122
    .end local v0           #dataLen:I
    .end local v2           #len:[B
    :cond_2e
    :goto_2e
    return v3

    .restart local v0       #dataLen:I
    .restart local v2       #len:[B
    :cond_2f
    move v5, v4

    .line 113
    goto :goto_26

    .line 118
    .end local v0           #dataLen:I
    .end local v2           #len:[B
    :catch_31
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/IOException;
    const-string v3, "RemoteControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendData fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 120
    goto :goto_2e
.end method


# virtual methods
.method public disableConnection()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/RemoteControlService;->sendData(Z)Z

    .line 98
    return-void
.end method

.method public enableConnection()V
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/RemoteControlService;->sendData(Z)Z

    .line 91
    return-void
.end method
