.class Landroid/media/audiofx/Hpeq$BaseParameterListener;
.super Ljava/lang/Object;
.source "Hpeq.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Hpeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/Hpeq;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/Hpeq;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Landroid/media/audiofx/Hpeq$BaseParameterListener;->this$0:Landroid/media/audiofx/Hpeq;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/Hpeq;Landroid/media/audiofx/Hpeq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Landroid/media/audiofx/Hpeq$BaseParameterListener;-><init>(Landroid/media/audiofx/Hpeq;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 9
    .parameter "effect"
    .parameter "status"
    .parameter "param"
    .parameter "value"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, l:Landroid/media/audiofx/Hpeq$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/Hpeq$BaseParameterListener;->this$0:Landroid/media/audiofx/Hpeq;

    #getter for: Landroid/media/audiofx/Hpeq;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/audiofx/Hpeq;->access$000(Landroid/media/audiofx/Hpeq;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 250
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Hpeq$BaseParameterListener;->this$0:Landroid/media/audiofx/Hpeq;

    #getter for: Landroid/media/audiofx/Hpeq;->mParamListener:Landroid/media/audiofx/Hpeq$OnParameterChangeListener;
    invoke-static {v1}, Landroid/media/audiofx/Hpeq;->access$100(Landroid/media/audiofx/Hpeq;)Landroid/media/audiofx/Hpeq$OnParameterChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Landroid/media/audiofx/Hpeq$BaseParameterListener;->this$0:Landroid/media/audiofx/Hpeq;

    #getter for: Landroid/media/audiofx/Hpeq;->mParamListener:Landroid/media/audiofx/Hpeq$OnParameterChangeListener;
    invoke-static {v1}, Landroid/media/audiofx/Hpeq;->access$100(Landroid/media/audiofx/Hpeq;)Landroid/media/audiofx/Hpeq$OnParameterChangeListener;

    move-result-object v0

    .line 253
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    if-eqz v0, :cond_3

    .line 255
    const/4 v3, -0x1

    .line 256
    .local v3, p1:I
    const/4 v4, -0x1

    .line 257
    .local v4, p2:I
    const/4 v5, -0x1

    .line 259
    .local v5, v:I
    array-length v1, p3

    if-lt v1, v7, :cond_1

    .line 260
    iget-object v1, p0, Landroid/media/audiofx/Hpeq$BaseParameterListener;->this$0:Landroid/media/audiofx/Hpeq;

    invoke-virtual {v1, p3, v6}, Landroid/media/audiofx/Hpeq;->byteArrayToInt([BI)I

    move-result v3

    .line 261
    array-length v1, p3

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 262
    iget-object v1, p0, Landroid/media/audiofx/Hpeq$BaseParameterListener;->this$0:Landroid/media/audiofx/Hpeq;

    invoke-virtual {v1, p3, v7}, Landroid/media/audiofx/Hpeq;->byteArrayToInt([BI)I

    move-result v4

    .line 265
    :cond_1
    array-length v1, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 266
    iget-object v1, p0, Landroid/media/audiofx/Hpeq$BaseParameterListener;->this$0:Landroid/media/audiofx/Hpeq;

    invoke-virtual {v1, p4, v6}, Landroid/media/audiofx/Hpeq;->byteArrayToShort([BI)S

    move-result v5

    .line 271
    :cond_2
    :goto_0
    if-eq v3, v8, :cond_3

    if-eq v5, v8, :cond_3

    .line 272
    iget-object v1, p0, Landroid/media/audiofx/Hpeq$BaseParameterListener;->this$0:Landroid/media/audiofx/Hpeq;

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/audiofx/Hpeq$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Hpeq;IIII)V

    .line 275
    .end local v3           #p1:I
    .end local v4           #p2:I
    .end local v5           #v:I
    :cond_3
    return-void

    .line 253
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 267
    .restart local v3       #p1:I
    .restart local v4       #p2:I
    .restart local v5       #v:I
    :cond_4
    array-length v1, p4

    if-ne v1, v7, :cond_2

    .line 268
    iget-object v1, p0, Landroid/media/audiofx/Hpeq$BaseParameterListener;->this$0:Landroid/media/audiofx/Hpeq;

    invoke-virtual {v1, p4, v6}, Landroid/media/audiofx/Hpeq;->byteArrayToInt([BI)I

    move-result v5

    goto :goto_0
.end method
