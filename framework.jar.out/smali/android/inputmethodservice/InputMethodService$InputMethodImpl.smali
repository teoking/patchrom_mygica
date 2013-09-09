.class public Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
.super Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputMethodImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .registers 3
    .parameter "token"

    .prologue
    .line 369
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_11

    .line 370
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    .line 371
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    .line 373
    :cond_11
    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .registers 5
    .parameter "binding"

    .prologue
    .line 381
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object p1, v1, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 382
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iput-object v2, v1, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 385
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 386
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v1, v1, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 387
    :cond_1b
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 388
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->onBindInput()V

    .line 389
    return-void
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 3
    .parameter "subtype"

    .prologue
    .line 509
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 510
    return-void
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 9
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v4, 0x0

    .line 418
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v2

    .line 419
    .local v2, wasVis:Z
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput v4, v3, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 420
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-boolean v4, v3, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 421
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-boolean v4, v3, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    .line 422
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/inputmethodservice/InputMethodService;->access$000(Landroid/inputmethodservice/InputMethodService;)V

    .line 423
    if-eqz p2, :cond_27

    .line 424
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v3

    if-eq v2, v3, :cond_7d

    const/4 v3, 0x3

    :goto_23
    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 434
    :cond_27
    const-string/jumbo v3, "ro.custom.benq"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 435
    const-string v3, "InputMethodService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideSoftInput():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v5, v5, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    if-eqz v3, :cond_7c

    .line 440
    :try_start_52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "2"

    const-string v4, "SHOWKEYBOARD"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v3, "3"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 443
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 444
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.benq.cdserver.PCM"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 446
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v3, v3, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_7c} :catch_83

    .line 457
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7c
    :goto_7c
    return-void

    .line 424
    :cond_7d
    if-eqz v2, :cond_81

    move v3, v4

    goto :goto_23

    :cond_81
    const/4 v3, 0x1

    goto :goto_23

    .line 448
    :catch_83
    move-exception v3

    goto :goto_7c
.end method

.method public restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 5
    .parameter "ic"
    .parameter "attribute"

    .prologue
    .line 410
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 411
    return-void
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .registers 15
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 464
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v4

    .line 465
    .local v4, wasVis:Z
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput v7, v5, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 466
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5, p1, v7}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 467
    const-string v5, "InputMethodService"

    const-string/jumbo v9, "onShowInputRequested!"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 471
    :cond_22
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v3

    .line 472
    .local v3, showing:Z
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v9, v5, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v10, v5, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_8c

    move v5, v6

    :goto_33
    or-int/lit8 v5, v5, 0x1

    iget-object v11, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget v11, v11, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v9, v10, v5, v11}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 474
    if-eqz p2, :cond_4a

    .line 475
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v5

    if-eq v4, v5, :cond_8e

    :goto_46
    const/4 v5, 0x0

    invoke-virtual {p2, v6, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 484
    :cond_4a
    const-string/jumbo v5, "ro.custom.benq"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 486
    :try_start_53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 487
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "2"

    const-string v6, "SHOWKEYBOARD"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v5, "3"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 489
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 490
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.benq.cdserver.PCM"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 493
    const-string v5, "InputMethodService"

    const-string/jumbo v6, "pcmtest startService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v5, v5, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    if-eqz v5, :cond_94

    .line 495
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v5, v5, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 506
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    move v5, v7

    .line 472
    goto :goto_33

    .line 475
    :cond_8e
    if-eqz v4, :cond_92

    move v6, v7

    goto :goto_46

    :cond_92
    move v6, v8

    goto :goto_46

    .line 497
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_94
    const-string v5, "InputMethodService"

    const-string/jumbo v6, "mInputView is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_9c} :catch_9d

    goto :goto_8b

    .line 499
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_9d
    move-exception v1

    .line 501
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "InputMethodService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pcmtest , show exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b
.end method

.method public startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 5
    .parameter "ic"
    .parameter "attribute"

    .prologue
    .line 405
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 406
    return-void
.end method

.method public unbindInput()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 397
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 398
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 399
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object v2, v0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    .line 400
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->this$0:Landroid/inputmethodservice/InputMethodService;

    iput-object v2, v0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 401
    return-void
.end method
