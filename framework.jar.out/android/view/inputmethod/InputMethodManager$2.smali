.class Landroid/view/inputmethod/InputMethodManager$2;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 904
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 909
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p2}, Lcom/benq/cdserver/IPCMBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/benq/cdserver/IPCMBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mPCM:Lcom/benq/cdserver/IPCMBinder;

    .line 912
    :try_start_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mPCM:Lcom/benq/cdserver/IPCMBinder;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->access$100(Landroid/view/inputmethod/InputMethodManager;)Lcom/benq/cdserver/IPCMCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/benq/cdserver/IPCMBinder;->registerCallback(Lcom/benq/cdserver/IPCMCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16

    .line 917
    :goto_15
    return-void

    .line 913
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 921
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/inputmethod/InputMethodManager;->mPCM:Lcom/benq/cdserver/IPCMBinder;

    .line 922
    return-void
.end method
