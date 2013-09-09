.class Landroid/inputmethodservice/InputMethodService$3;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .parameter

    .prologue
    .line 2427
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "className"
    .parameter "service"

    .prologue
    .line 2432
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {p2}, Lcom/benq/cdserver/IPCMBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/benq/cdserver/IPCMBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/InputMethodService;->mPCM:Lcom/benq/cdserver/IPCMBinder;

    .line 2433
    const-string v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pcmtest onServiceConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService;->access$200(Landroid/inputmethodservice/InputMethodService;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :try_start_27
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mPCM:Lcom/benq/cdserver/IPCMBinder;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v2}, Landroid/inputmethodservice/InputMethodService;->access$300(Landroid/inputmethodservice/InputMethodService;)Lcom/benq/cdserver/IPCMCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/benq/cdserver/IPCMBinder;->registerCallback(Lcom/benq/cdserver/IPCMCallback;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_35

    .line 2440
    :goto_34
    return-void

    .line 2436
    :catch_35
    move-exception v0

    .line 2437
    .local v0, e:Landroid/os/RemoteException;
    const-string/jumbo v1, "raypcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected faile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 2443
    const-string v0, "InputMethodService"

    const-string/jumbo v1, "pcmtest onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/inputmethodservice/InputMethodService;->mPCM:Lcom/benq/cdserver/IPCMBinder;

    .line 2445
    return-void
.end method
