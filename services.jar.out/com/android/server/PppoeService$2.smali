.class Lcom/android/server/PppoeService$2;
.super Ljava/lang/Thread;
.source "PppoeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PppoeService;->setPppoeState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PppoeService;


# direct methods
.method constructor <init>(Lcom/android/server/PppoeService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 197
    .local p0, this:Lcom/android/server/PppoeService$2;,"Lcom/android/server/PppoeService.2;"
    iput-object p1, p0, Lcom/android/server/PppoeService$2;->this$0:Lcom/android/server/PppoeService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 200
    .local p0, this:Lcom/android/server/PppoeService$2;,"Lcom/android/server/PppoeService.2;"
    iget-object v0, p0, Lcom/android/server/PppoeService$2;->this$0:Lcom/android/server/PppoeService;

    invoke-static {v0}, Lcom/android/server/PppoeService;->access$000(Lcom/android/server/PppoeService;)Landroid/net/pppoe/PppoeStateTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/pppoe/PppoeStateTracker;->stopInterface(Z)Z

    .line 201
    return-void
.end method
