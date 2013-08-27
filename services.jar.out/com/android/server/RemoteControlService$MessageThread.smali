.class Lcom/android/server/RemoteControlService$MessageThread;
.super Ljava/lang/Thread;
.source "RemoteControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RemoteControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RemoteControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/RemoteControlService;)V
    .registers 3
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/server/RemoteControlService$MessageThread;->this$0:Lcom/android/server/RemoteControlService;

    .line 229
    const-string v0, "MessageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 230
    return-void
.end method


# virtual methods
.method public processData([BI)V
    .registers 8
    .parameter "inStream"
    .parameter "len"

    .prologue
    .line 278
    const/16 v2, 0x8

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    if-eq v2, v3, :cond_f

    .line 279
    const-string v2, "RemoteControlService"

    const-string v3, "RC, data type is not service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_e
    return-void

    .line 283
    :cond_f
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v1, v2, 0xff

    .line 284
    .local v1, what:I
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x2

    add-int/lit8 v3, p2, -0x2

    invoke-direct {v0, p1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 286
    .local v0, data:Ljava/lang/String;
    const-string v2, "RemoteControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RC, process what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0, v1, v0}, Lcom/android/server/RemoteControlService$MessageThread;->sendMessage(ILjava/lang/String;)V

    goto :goto_e
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    .line 234
    new-array v2, v10, [B

    .line 237
    .local v2, data:[B
    :goto_3
    const/4 v0, 0x0

    .line 238
    .local v0, bytesLeft:I
    const/4 v1, 0x0

    .line 239
    .local v1, bytesRead:I
    const/4 v6, 0x0

    .line 241
    .local v6, inStream:[B
    iget-object v7, p0, Lcom/android/server/RemoteControlService$MessageThread;->this$0:Lcom/android/server/RemoteControlService;

    invoke-static {v7}, Lcom/android/server/RemoteControlService;->access$200(Lcom/android/server/RemoteControlService;)Landroid/net/LocalSocket;

    move-result-object v7

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/android/server/RemoteControlService$MessageThread;->this$0:Lcom/android/server/RemoteControlService;

    invoke-static {v7}, Lcom/android/server/RemoteControlService;->access$300(Lcom/android/server/RemoteControlService;)Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/android/server/RemoteControlService$MessageThread;->this$0:Lcom/android/server/RemoteControlService;

    invoke-static {v7}, Lcom/android/server/RemoteControlService;->access$400(Lcom/android/server/RemoteControlService;)Ljava/io/OutputStream;

    move-result-object v7

    if-nez v7, :cond_1f

    .line 275
    :cond_1e
    :goto_1e
    return-void

    .line 246
    :cond_1f
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/RemoteControlService$MessageThread;->this$0:Lcom/android/server/RemoteControlService;

    invoke-static {v7}, Lcom/android/server/RemoteControlService;->access$300(Lcom/android/server/RemoteControlService;)Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-virtual {v7, v2, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ge v7, v10, :cond_34

    .line 247
    const-string v7, "RemoteControlService"

    const-string v8, "RC, read data length fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_34} :catch_43

    .line 254
    :cond_34
    const/4 v3, 0x0

    .line 255
    .local v3, dataLen:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_36
    if-ge v5, v10, :cond_5d

    .line 256
    aget-byte v7, v2, v5

    and-int/lit16 v7, v7, 0xff

    mul-int/lit8 v8, v5, 0x8

    shl-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 255
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 249
    .end local v3           #dataLen:I
    .end local v5           #i:I
    :catch_43
    move-exception v4

    .line 250
    .local v4, ex:Ljava/io/IOException;
    const-string v7, "RemoteControlService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RC, read length exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 261
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v3       #dataLen:I
    .restart local v5       #i:I
    :cond_5d
    move v0, v3

    .line 262
    new-array v6, v3, [B

    .line 263
    :goto_60
    if-lez v0, :cond_87

    .line 265
    :try_start_62
    iget-object v7, p0, Lcom/android/server/RemoteControlService$MessageThread;->this$0:Lcom/android/server/RemoteControlService;

    invoke-static {v7}, Lcom/android/server/RemoteControlService;->access$300(Lcom/android/server/RemoteControlService;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v6, v1, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6b} :catch_6e

    move-result v1

    .line 266
    sub-int/2addr v0, v1

    goto :goto_60

    .line 267
    :catch_6e
    move-exception v4

    .line 268
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "RemoteControlService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RC, read data exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v4           #ex:Ljava/io/IOException;
    :cond_87
    invoke-virtual {p0, v6, v3}, Lcom/android/server/RemoteControlService$MessageThread;->processData([BI)V

    goto/16 :goto_3
.end method

.method public sendMessage(ILjava/lang/String;)V
    .registers 5
    .parameter "what"
    .parameter "data"

    .prologue
    .line 291
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 292
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 293
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/android/server/RemoteControlService$MessageThread;->this$0:Lcom/android/server/RemoteControlService;

    iget-object v1, v1, Lcom/android/server/RemoteControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method
