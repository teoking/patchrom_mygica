.class Lcom/android/internal/policy/impl/GlobalActions$8;
.super Landroid/database/ContentObserver;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 756
    return-void
.end method
