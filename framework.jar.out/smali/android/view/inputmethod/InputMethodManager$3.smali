.class Landroid/view/inputmethod/InputMethodManager$3;
.super Lcom/benq/cdserver/IPCMCallback$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$3;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/benq/cdserver/IPCMCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 930
    return-void
.end method

.method public passString(Ljava/lang/String;)V
    .registers 6
    .parameter "szText"

    .prologue
    .line 933
    new-instance v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/os/HandlerCaller$SomeArgs;-><init>()V

    .line 934
    .local v0, sargs:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 935
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$3;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$3;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    .line 937
    return-void
.end method
