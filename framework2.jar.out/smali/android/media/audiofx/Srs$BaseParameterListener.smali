.class Landroid/media/audiofx/Srs$BaseParameterListener;
.super Ljava/lang/Object;
.source "Srs.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Srs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/Srs;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/Srs;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Landroid/media/audiofx/Srs$BaseParameterListener;->this$0:Landroid/media/audiofx/Srs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/Srs;Landroid/media/audiofx/Srs$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Landroid/media/audiofx/Srs$BaseParameterListener;-><init>(Landroid/media/audiofx/Srs;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 14
    .parameter "effect"
    .parameter "status"
    .parameter "param"
    .parameter "value"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, l:Landroid/media/audiofx/Srs$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/Srs$BaseParameterListener;->this$0:Landroid/media/audiofx/Srs;

    invoke-static {v1}, Landroid/media/audiofx/Srs;->access$000(Landroid/media/audiofx/Srs;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 300
    :try_start_b
    iget-object v1, p0, Landroid/media/audiofx/Srs$BaseParameterListener;->this$0:Landroid/media/audiofx/Srs;

    invoke-static {v1}, Landroid/media/audiofx/Srs;->access$100(Landroid/media/audiofx/Srs;)Landroid/media/audiofx/Srs$OnParameterChangeListener;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 301
    iget-object v1, p0, Landroid/media/audiofx/Srs$BaseParameterListener;->this$0:Landroid/media/audiofx/Srs;

    invoke-static {v1}, Landroid/media/audiofx/Srs;->access$100(Landroid/media/audiofx/Srs;)Landroid/media/audiofx/Srs$OnParameterChangeListener;

    move-result-object v0

    .line 303
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_48

    .line 304
    if-eqz v0, :cond_47

    .line 305
    const/4 v3, -0x1

    .line 306
    .local v3, p1:I
    const/4 v4, -0x1

    .line 307
    .local v4, p2:I
    const/4 v5, -0x1

    .line 309
    .local v5, v:I
    array-length v1, p3

    if-lt v1, v7, :cond_33

    .line 310
    iget-object v1, p0, Landroid/media/audiofx/Srs$BaseParameterListener;->this$0:Landroid/media/audiofx/Srs;

    invoke-virtual {v1, p3, v6}, Landroid/media/audiofx/Srs;->byteArrayToInt([BI)I

    move-result v3

    .line 311
    array-length v1, p3

    const/16 v2, 0x8

    if-lt v1, v2, :cond_33

    .line 312
    iget-object v1, p0, Landroid/media/audiofx/Srs$BaseParameterListener;->this$0:Landroid/media/audiofx/Srs;

    invoke-virtual {v1, p3, v7}, Landroid/media/audiofx/Srs;->byteArrayToInt([BI)I

    move-result v4

    .line 315
    :cond_33
    array-length v1, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b

    .line 316
    iget-object v1, p0, Landroid/media/audiofx/Srs$BaseParameterListener;->this$0:Landroid/media/audiofx/Srs;

    invoke-virtual {v1, p4, v6}, Landroid/media/audiofx/Srs;->byteArrayToShort([BI)S

    move-result v5

    .line 321
    :cond_3d
    :goto_3d
    if-eq v3, v8, :cond_47

    if-eq v5, v8, :cond_47

    .line 322
    iget-object v1, p0, Landroid/media/audiofx/Srs$BaseParameterListener;->this$0:Landroid/media/audiofx/Srs;

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/audiofx/Srs$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Srs;IIII)V

    .line 325
    .end local v3           #p1:I
    .end local v4           #p2:I
    .end local v5           #v:I
    :cond_47
    return-void

    .line 303
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1

    .line 317
    .restart local v3       #p1:I
    .restart local v4       #p2:I
    .restart local v5       #v:I
    :cond_4b
    array-length v1, p4

    if-ne v1, v7, :cond_3d

    .line 318
    iget-object v1, p0, Landroid/media/audiofx/Srs$BaseParameterListener;->this$0:Landroid/media/audiofx/Srs;

    invoke-virtual {v1, p4, v6}, Landroid/media/audiofx/Srs;->byteArrayToInt([BI)I

    move-result v5

    goto :goto_3d
.end method
