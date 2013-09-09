.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 347
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 348
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 349
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 353
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_16c

    .line 465
    :cond_8
    :goto_8
    return-void

    .line 355
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 357
    .local v1, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :try_start_d
    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Ljava/io/FileDescriptor;

    iget-object v8, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/io/PrintWriter;

    iget-object v9, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v10, v7, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_20} :catch_2f

    .line 362
    :goto_20
    iget-object v8, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v8

    .line 363
    :try_start_23
    iget-object v7, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 364
    monitor-exit v8

    goto :goto_8

    :catchall_2c
    move-exception v7

    monitor-exit v8
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v7

    .line 359
    :catch_2f
    move-exception v2

    .line 360
    .local v2, e:Ljava/lang/RuntimeException;
    iget-object v7, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 368
    .end local v1           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v2           #e:Ljava/lang/RuntimeException;
    :pswitch_4b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/InputBindResult;

    .line 369
    .local v3, res:Lcom/android/internal/view/InputBindResult;
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 370
    :try_start_54
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v9, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v9, :cond_62

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v9, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v10, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v9, v10, :cond_90

    .line 371
    :cond_62
    const-string v7, "InputMethodManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring onBind: cur seq="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v10, v10, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", given seq="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    monitor-exit v8

    goto/16 :goto_8

    .line 379
    :catchall_8d
    move-exception v7

    monitor-exit v8
    :try_end_8f
    .catchall {:try_start_54 .. :try_end_8f} :catchall_8d

    throw v7

    .line 376
    :cond_90
    :try_start_90
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, v3, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v10, v9, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    .line 377
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, v3, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v10, v9, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    .line 378
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v10, v3, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v10, v9, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    .line 379
    monitor-exit v8
    :try_end_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_8d

    .line 380
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8, v11, v7, v7, v7}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    goto/16 :goto_8

    .line 384
    .end local v3           #res:Lcom/android/internal/view/InputBindResult;
    :pswitch_aa
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 385
    .local v4, sequence:I
    const/4 v5, 0x0

    .line 386
    .local v5, startInput:Z
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 387
    :try_start_b2
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v9, v9, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ne v9, v4, :cond_d9

    .line 398
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    .line 402
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v9, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v9, :cond_d2

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, v9, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_d2

    .line 403
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    .line 405
    :cond_d2
    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v9, v9, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-eqz v9, :cond_d9

    .line 406
    const/4 v5, 0x1

    .line 409
    :cond_d9
    monitor-exit v8
    :try_end_da
    .catchall {:try_start_b2 .. :try_end_da} :catchall_e3

    .line 410
    if-eqz v5, :cond_8

    .line 411
    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8, v11, v7, v7, v7}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(Landroid/os/IBinder;III)Z

    goto/16 :goto_8

    .line 409
    :catchall_e3
    move-exception v7

    :try_start_e4
    monitor-exit v8
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v7

    .line 416
    .end local v4           #sequence:I
    .end local v5           #startInput:Z
    :pswitch_e6
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_125

    .line 417
    .local v0, active:Z
    :goto_ea
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 418
    :try_start_ef
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v7, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    .line 419
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    .line 420
    if-nez v0, :cond_11f

    .line 424
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z
    :try_end_ff
    .catchall {:try_start_ef .. :try_end_ff} :catchall_122

    .line 428
    :try_start_ff
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v7}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_122
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_106} :catch_169

    .line 433
    :goto_106
    :try_start_106
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v7, :cond_11f

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->hasWindowFocus()Z

    move-result v7

    if-eqz v7, :cond_11f

    .line 434
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v9, v9, Landroid/view/inputmethod/InputMethodManager;->mHasBeenInactive:Z

    invoke-static {v7, v9}, Landroid/view/inputmethod/InputMethodManager;->access$000(Landroid/view/inputmethod/InputMethodManager;Z)V

    .line 437
    :cond_11f
    monitor-exit v8

    goto/16 :goto_8

    :catchall_122
    move-exception v7

    monitor-exit v8
    :try_end_124
    .catchall {:try_start_106 .. :try_end_124} :catchall_122

    throw v7

    .end local v0           #active:Z
    :cond_125
    move v0, v7

    .line 416
    goto :goto_ea

    .line 446
    :pswitch_127
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v7, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    .line 447
    :try_start_12c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 448
    .restart local v1       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v6, v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 450
    .local v6, szText:Ljava/lang/String;
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v7, :cond_140

    .line 451
    monitor-exit v8

    goto/16 :goto_8

    .line 460
    .end local v1           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v6           #szText:Ljava/lang/String;
    :catchall_13d
    move-exception v7

    monitor-exit v8
    :try_end_13f
    .catchall {:try_start_12c .. :try_end_13f} :catchall_13d

    throw v7

    .line 452
    .restart local v1       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .restart local v6       #szText:Ljava/lang/String;
    :cond_140
    if-nez v6, :cond_150

    .line 454
    :try_start_142
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    const/16 v9, 0x270f

    const/16 v10, 0x270f

    invoke-interface {v7, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 455
    monitor-exit v8

    goto/16 :goto_8

    .line 457
    :cond_150
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 458
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v9, 0x1

    invoke-interface {v7, v6, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 459
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, v7, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 460
    monitor-exit v8
    :try_end_167
    .catchall {:try_start_142 .. :try_end_167} :catchall_13d

    goto/16 :goto_8

    .line 429
    .end local v1           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v6           #szText:Ljava/lang/String;
    .restart local v0       #active:Z
    :catch_169
    move-exception v7

    goto :goto_106

    .line 353
    nop

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_4b
        :pswitch_aa
        :pswitch_e6
        :pswitch_127
    .end packed-switch
.end method
