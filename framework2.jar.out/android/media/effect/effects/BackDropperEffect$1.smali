.class Landroid/media/effect/effects/BackDropperEffect$1;
.super Ljava/lang/Object;
.source "BackDropperEffect.java"

# interfaces
.implements Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/effect/effects/BackDropperEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/effect/effects/BackDropperEffect;


# direct methods
.method constructor <init>(Landroid/media/effect/effects/BackDropperEffect;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Landroid/media/effect/effects/BackDropperEffect$1;->this$0:Landroid/media/effect/effects/BackDropperEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLearningDone(Landroid/filterpacks/videoproc/BackDropperFilter;)V
    .registers 5
    .parameter "filter"

    .prologue
    .line 76
    iget-object v0, p0, Landroid/media/effect/effects/BackDropperEffect$1;->this$0:Landroid/media/effect/effects/BackDropperEffect;

    invoke-static {v0}, Landroid/media/effect/effects/BackDropperEffect;->access$000(Landroid/media/effect/effects/BackDropperEffect;)Landroid/media/effect/EffectUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 77
    iget-object v0, p0, Landroid/media/effect/effects/BackDropperEffect$1;->this$0:Landroid/media/effect/effects/BackDropperEffect;

    invoke-static {v0}, Landroid/media/effect/effects/BackDropperEffect;->access$000(Landroid/media/effect/effects/BackDropperEffect;)Landroid/media/effect/EffectUpdateListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/effect/effects/BackDropperEffect$1;->this$0:Landroid/media/effect/effects/BackDropperEffect;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/effect/EffectUpdateListener;->onEffectUpdated(Landroid/media/effect/Effect;Ljava/lang/Object;)V

    .line 79
    :cond_14
    return-void
.end method
