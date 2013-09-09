.class Landroid/media/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioSystem$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 9
    .parameter "error"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 275
    sparse-switch p1, :sswitch_data_3c

    .line 293
    :cond_6
    :goto_6
    return-void

    .line 277
    :sswitch_7
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 278
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v6, 0x5dc

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 280
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v3}, Landroid/media/AudioService;->access$002(Landroid/media/AudioService;Z)Z

    goto :goto_6

    .line 284
    :sswitch_22
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 285
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 287
    iget-object v0, p0, Landroid/media/AudioService$1;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v2}, Landroid/media/AudioService;->access$002(Landroid/media/AudioService;Z)Z

    goto :goto_6

    .line 275
    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_22
        0x64 -> :sswitch_7
    .end sparse-switch
.end method
