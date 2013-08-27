.class Lcom/android/server/LightsService$1;
.super Landroid/os/IHardwareService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/class/leds/spotlight/brightness"


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/os/IHardwareService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashlightEnabled()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 148
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 150
    .local v2, result:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_15

    .line 151
    const/16 v4, 0x30

    if-eq v2, v4, :cond_14

    const/4 v3, 0x1

    .line 153
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #result:I
    :cond_14
    :goto_14
    return v3

    .line 152
    :catch_15
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    goto :goto_14
.end method

.method public getI2cData(II)Ljava/lang/String;
    .registers 4
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 158
    invoke-static {p1, p2}, Lcom/android/server/LightsService;->access$300(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getI2cDataSize(II)I
    .registers 4
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 193
    invoke-static {p1, p2}, Lcom/android/server/LightsService;->access$400(II)I

    move-result v0

    return v0
.end method

.method public getMAC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    const-string v0, "ubootenv.var.macaddr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMCID()Ljava/lang/String;
    .registers 11

    .prologue
    .line 167
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    new-instance v8, Ljava/io/File;

    const-string v9, "/sys/class/efuse/userdata"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 169
    .local v5, fr:Ljava/io/FileReader;
    const/16 v8, 0x64

    new-array v2, v8, [C

    .line 171
    .local v2, buf:[C
    invoke-virtual {v5, v2}, Ljava/io/FileReader;->read([C)I

    .line 172
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    .line 173
    .local v4, efuse:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_39

    .line 179
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, a:[Ljava/lang/String;
    const/16 v8, 0x1e

    new-array v6, v8, [C

    .line 181
    .local v6, t:[C
    const/4 v7, 0x0

    .local v7, x:I
    :goto_26
    array-length v8, v0

    if-ge v7, v8, :cond_3f

    .line 183
    aget-object v8, v0, v7

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 185
    .local v1, b:I
    if-lez v1, :cond_36

    .line 186
    int-to-char v8, v1

    aput-char v8, v6, v7

    .line 181
    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 174
    .end local v0           #a:[Ljava/lang/String;
    .end local v1           #b:I
    .end local v2           #buf:[C
    .end local v4           #efuse:Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v6           #t:[C
    .end local v7           #x:I
    :catch_39
    move-exception v3

    .line 175
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v8, 0x0

    .line 188
    .end local v3           #e:Ljava/lang/Exception;
    :goto_3e
    return-object v8

    .restart local v0       #a:[Ljava/lang/String;
    .restart local v2       #buf:[C
    .restart local v4       #efuse:Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v6       #t:[C
    .restart local v7       #x:I
    :cond_3f
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_3e
.end method

.method public setFlashlightEnabled(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-static {v2}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.FLASHLIGHT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-static {v2}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.HARDWARE_TEST"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_24

    .line 203
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires FLASHLIGHT or HARDWARE_TEST permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_24
    :try_start_24
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 208
    .local v0, bytes:[B
    const/4 v3, 0x0

    if-eqz p1, :cond_42

    const/16 v2, 0x31

    :goto_33
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 209
    const/4 v2, 0x1

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 210
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 211
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_41} :catch_45

    .line 215
    .end local v0           #bytes:[B
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_41
    return-void

    .line 208
    .restart local v0       #bytes:[B
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_42
    const/16 v2, 0x30

    goto :goto_33

    .line 212
    .end local v0           #bytes:[B
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :catch_45
    move-exception v2

    goto :goto_41
.end method

.method public writeI2cData(ILjava/lang/String;)I
    .registers 4
    .parameter "offset"
    .parameter "data"

    .prologue
    .line 196
    invoke-static {p1, p2}, Lcom/android/server/LightsService;->access$500(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
