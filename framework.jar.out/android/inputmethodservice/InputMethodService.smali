.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
    }
.end annotation


# static fields
.field public static final BACK_DISPOSITION_DEFAULT:I = 0x0

.field public static final BACK_DISPOSITION_WILL_DISMISS:I = 0x2

.field public static final BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1

.field static final DEBUG:Z = false

.field static final DEBUG_BENQ:Z = true

.field public static final IME_ACTIVE:I = 0x1

.field public static final IME_VISIBLE:I = 0x2

.field static final MOVEMENT_DOWN:I = -0x1

.field static final MOVEMENT_UP:I = -0x2

.field static final MSG_HACK:I = 0x5

.field static final TAG:Ljava/lang/String; = "InputMethodService"


# instance fields
.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field mBackDisposition:I

.field private mCallback:Lcom/benq/cdserver/IPCMCallback;

.field mCandidatesFrame:Landroid/widget/FrameLayout;

.field mCandidatesViewStarted:Z

.field mCandidatesVisibility:I

.field private mConnection:Landroid/content/ServiceConnection;

.field mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mExtractAccessories:Landroid/view/ViewGroup;

.field mExtractAction:Landroid/widget/Button;

.field mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field mExtractFrame:Landroid/widget/FrameLayout;

.field mExtractView:Landroid/view/View;

.field mExtractViewHidden:Z

.field mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedToken:I

.field mFullscreenApplied:Z

.field mFullscreenArea:Landroid/view/ViewGroup;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field mInputBinding:Landroid/view/inputmethod/InputBinding;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mInputFrame:Landroid/widget/FrameLayout;

.field mInputStarted:Z

.field mInputView:Landroid/view/View;

.field mInputViewStarted:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field mIsFullscreen:Z

.field mIsInputViewShown:Z

.field mLastShowInputRequested:Z

.field mPCM:Lcom/benq/cdserver/IPCMBinder;

.field mRootView:Landroid/view/View;

.field mShowInputFlags:I

.field mShowInputForced:Z

.field mShowInputRequested:Z

.field mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mStatusIcon:I

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I

.field mToken:Landroid/os/IBinder;

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 320
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 321
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 323
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 344
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 2427
    new-instance v0, Landroid/inputmethodservice/InputMethodService$3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$3;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnection:Landroid/content/ServiceConnection;

    .line 2448
    new-instance v0, Landroid/inputmethodservice/InputMethodService$4;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$4;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCallback:Lcom/benq/cdserver/IPCMCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/InputMethodService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    return-void
.end method

.method static synthetic access$100(Landroid/inputmethodservice/InputMethodService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method static synthetic access$200(Landroid/inputmethodservice/InputMethodService;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/InputMethodService;)Lcom/benq/cdserver/IPCMCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 235
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCallback:Lcom/benq/cdserver/IPCMCallback;

    return-object v0
.end method

.method private doHideWindow()V
    .registers 5

    .prologue
    .line 1547
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1548
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1549
    return-void
.end method

.method private finishViews()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1535
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_d

    .line 1537
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1542
    :cond_8
    :goto_8
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1543
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1544
    return-void

    .line 1538
    :cond_d
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_8

    .line 1540
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_8
.end method

.method private handleBack(Z)Z
    .registers 6
    .parameter "doIt"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1783
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v3, :cond_28

    .line 1784
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    instance-of v3, v3, Landroid/inputmethodservice/ExtractEditLayout;

    if-eqz v3, :cond_22

    .line 1785
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    check-cast v0, Landroid/inputmethodservice/ExtractEditLayout;

    .line 1786
    .local v0, extractEditLayout:Landroid/inputmethodservice/ExtractEditLayout;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout;->isActionModeStarted()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1787
    if-eqz p1, :cond_21

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout;->finishActionMode()V

    .line 1808
    .end local v0           #extractEditLayout:Landroid/inputmethodservice/ExtractEditLayout;
    :cond_21
    :goto_21
    return v1

    .line 1793
    :cond_22
    if-eqz p1, :cond_21

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    goto :goto_21

    .line 1795
    :cond_28
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v3, :cond_3c

    .line 1796
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v3, :cond_36

    .line 1799
    if-eqz p1, :cond_21

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_21

    .line 1804
    :cond_36
    if-eqz p1, :cond_21

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_21

    :cond_3c
    move v1, v2

    .line 1808
    goto :goto_21
.end method

.method private onToggleSoftInput(II)V
    .registers 4
    .parameter "showFlags"
    .parameter "hideFlags"

    .prologue
    .line 1894
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1895
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 1899
    :goto_9
    return-void

    .line 1897
    :cond_a
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    goto :goto_9
.end method

.method private requestShowSelf(I)V
    .registers 4
    .parameter "flags"

    .prologue
    .line 1779
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1780
    return-void
.end method


# virtual methods
.method doFinishInput()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1616
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_1c

    .line 1618
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1623
    :cond_a
    :goto_a
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1624
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1625
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_15

    .line 1627
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1629
    :cond_15
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1630
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1631
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1632
    return-void

    .line 1619
    :cond_1c
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_a

    .line 1621
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_a
.end method

.method doMovementKey(ILandroid/view/KeyEvent;I)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1924
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1925
    .local v1, eet:Landroid/inputmethodservice/ExtractEditText;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_3f

    if-eqz v1, :cond_3f

    .line 1929
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v3

    .line 1930
    .local v3, movement:Landroid/text/method/MovementMethod;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1931
    .local v2, layout:Landroid/text/Layout;
    if-eqz v3, :cond_3c

    if-eqz v2, :cond_3c

    .line 1934
    const/4 v7, -0x1

    if-ne p3, v7, :cond_2f

    .line 1935
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 1937
    invoke-virtual {p0, p1, v5}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 1977
    .end local v2           #layout:Landroid/text/Layout;
    .end local v3           #movement:Landroid/text/method/MovementMethod;
    :cond_2e
    :goto_2e
    :pswitch_2e
    return v5

    .line 1940
    .restart local v2       #layout:Landroid/text/Layout;
    .restart local v3       #movement:Landroid/text/method/MovementMethod;
    :cond_2f
    const/4 v7, -0x2

    if-ne p3, v7, :cond_41

    .line 1941
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 1968
    :cond_3c
    :goto_3c
    packed-switch p1, :pswitch_data_80

    .end local v2           #layout:Landroid/text/Layout;
    .end local v3           #movement:Landroid/text/method/MovementMethod;
    :cond_3f
    move v5, v6

    .line 1977
    goto :goto_2e

    .line 1946
    .restart local v2       #layout:Landroid/text/Layout;
    .restart local v3       #movement:Landroid/text/method/MovementMethod;
    :cond_41
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 1947
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_3c

    .line 1949
    :cond_4f
    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1950
    .local v0, down:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 1952
    invoke-static {p2, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    .line 1953
    .local v4, up:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 1955
    :goto_68
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_7b

    .line 1956
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 1958
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v3, v1, v7, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_68

    .line 1961
    :cond_7b
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_3c

    .line 1968
    nop

    :pswitch_data_80
    .packed-switch 0x13
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .parameter "ic"
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v1, 0x1

    .line 1635
    if-nez p3, :cond_6

    .line 1636
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1638
    :cond_6
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1639
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1640
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1641
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1643
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1644
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_24

    .line 1645
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_25

    .line 1647
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1648
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1649
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1656
    :cond_24
    :goto_24
    return-void

    .line 1650
    :cond_25
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_24

    .line 1652
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1653
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_24
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 2364
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2365
    .local v0, p:Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method service state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWindowCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWindowWasVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInShowWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Configuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStartedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInputViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCandidatesViewStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2380
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_2aa

    .line 2381
    const-string v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2382
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2387
    :goto_133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputForced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mShowInputFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCandidatesVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFullscreenApplied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsFullscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mExtractViewHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2396
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_2b1

    .line 2397
    const-string v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selectionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectionEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2406
    :goto_224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExtractedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsInputViewShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatusIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2409
    const-string v1, "Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  contentTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibleTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touchableRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2414
    return-void

    .line 2384
    :cond_2aa
    const-string v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_133

    .line 2404
    :cond_2b1
    const-string v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_224
.end method

.method public getBackDisposition()I
    .registers 2

    .prologue
    .line 881
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public getCandidatesHiddenVisibility()I
    .registers 2

    .prologue
    .line 1217
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x4

    goto :goto_8
.end method

.method public getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .registers 2

    .prologue
    .line 910
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 2

    .prologue
    .line 918
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 919
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_5

    .line 922
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_4
    return-object v0

    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    goto :goto_4
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 2

    .prologue
    .line 930
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .registers 2

    .prologue
    .line 926
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 869
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMaxWidth()I
    .registers 3

    .prologue
    .line 901
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 902
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public getTextForImeAction(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "imeOptions"

    .prologue
    .line 2196
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_40

    .line 2212
    const v0, 0x104048b

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0

    .line 2198
    :pswitch_d
    const/4 v0, 0x0

    goto :goto_c

    .line 2200
    :pswitch_f
    const v0, 0x1040485

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2202
    :pswitch_17
    const v0, 0x1040486

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2204
    :pswitch_1f
    const v0, 0x1040487

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2206
    :pswitch_27
    const v0, 0x1040488

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2208
    :pswitch_2f
    const v0, 0x1040489

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2210
    :pswitch_37
    const v0, 0x104048a

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 2196
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_17
        :pswitch_1f
        :pswitch_27
        :pswitch_2f
        :pswitch_37
    .end packed-switch
.end method

.method public getWindow()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hideStatusIcon()V
    .registers 3

    .prologue
    .line 1226
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1227
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    .line 1228
    return-void
.end method

.method public hideWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1552
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    .line 1553
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_14

    .line 1554
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1555
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1556
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1557
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1559
    :cond_14
    return-void
.end method

.method initViews()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 723
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 724
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 725
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 726
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    .line 728
    sget-object v2, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 729
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090047

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 731
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 732
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 733
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fancy_ime_animations"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4a

    .line 735
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v2}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x10301e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 738
    :cond_4a
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v3, 0x10202b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 739
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 740
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v3, 0x102001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    .line 741
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 742
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 743
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 744
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 745
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 747
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v3, 0x102001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 748
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v3, 0x102001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 749
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 750
    iput-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 752
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 753
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 754
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 755
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 761
    const-string/jumbo v2, "ro.custom.benq"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 762
    const-string v2, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initView,mRootView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 764
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "2"

    const-string v3, "SHOWKEYBOARD"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v2, "3"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 766
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 767
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.benq.cdserver.PCM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 769
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 773
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_f1
    return-void
.end method

.method initialize()V
    .registers 2

    .prologue
    .line 716
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_a

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 718
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 720
    :cond_a
    return-void
.end method

.method public isExtractViewShown()Z
    .registers 2

    .prologue
    .line 1064
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFullscreenMode()Z
    .registers 2

    .prologue
    .line 1014
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public isInputViewShown()Z
    .registers 2

    .prologue
    .line 1162
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isShowInputRequested()Z
    .registers 2

    .prologue
    .line 1153
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .parameter "action"
    .parameter "data"

    .prologue
    .line 1887
    return-void
.end method

.method public onBindInput()V
    .registers 1

    .prologue
    .line 1587
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 6
    .parameter "outInsets"

    .prologue
    const/4 v3, 0x1

    .line 1104
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 1105
    .local v1, loc:[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_42

    .line 1106
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1111
    :goto_10
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1113
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1114
    .local v0, decor:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1118
    .end local v0           #decor:Landroid/view/View;
    :goto_28
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_35

    .line 1119
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1121
    :cond_35
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 1122
    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1123
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 1124
    return-void

    .line 1108
    :cond_42
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1109
    .restart local v0       #decor:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v3

    goto :goto_10

    .line 1116
    .end local v0           #decor:Landroid/view/View;
    :cond_55
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_28
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 810
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 812
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 813
    .local v4, visible:Z
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 814
    .local v1, showFlags:I
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 815
    .local v3, showingInput:Z
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 816
    .local v0, completions:[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 817
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 818
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 819
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v6, :cond_23

    .line 820
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 823
    :cond_23
    if-eqz v4, :cond_49

    .line 824
    if-eqz v3, :cond_4e

    .line 826
    invoke-virtual {p0, v1, v8}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 827
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 828
    if-eqz v0, :cond_37

    .line 829
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 830
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 844
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v2

    .line 845
    .local v2, showing:Z
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_42

    const/4 v5, 0x2

    :cond_42
    or-int/lit8 v5, v5, 0x1

    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v6, v7, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 848
    .end local v2           #showing:Z
    :cond_49
    return-void

    .line 833
    :cond_4a
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_37

    .line 835
    :cond_4e
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v6, :cond_56

    .line 838
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_37

    .line 841
    :cond_56
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_37
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .registers 7
    .parameter "win"
    .parameter "isFullscreen"
    .parameter "isCandidatesOnly"

    .prologue
    const/4 v2, -0x1

    .line 1001
    if-eqz p2, :cond_d

    .line 1002
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1006
    :goto_c
    return-void

    .line 1004
    :cond_d
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_c
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 690
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const v2, 0x1030054

    const v3, 0x103007f

    const v4, 0x103013e

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/Resources;->selectSystemTheme(IIIII)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 695
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    .line 696
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    .line 697
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 698
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 700
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v2, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0, p0, v1, v2}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 701
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 702
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 703
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1314
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .registers 4

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .registers 2

    .prologue
    .line 856
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .registers 2

    .prologue
    .line 865
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1329
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 2
    .parameter "newSubtype"

    .prologue
    .line 2357
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 776
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    .line 777
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 779
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    .line 780
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v0, :cond_24

    .line 784
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 785
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 787
    :cond_24
    const-string/jumbo v0, "ro.custom.benq"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 788
    const-string v0, "InputMethodService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 791
    :cond_40
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 2
    .parameter "completions"

    .prologue
    .line 1688
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1026
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1027
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_f

    .line 1034
    :cond_e
    :goto_e
    return v1

    .line 1030
    :cond_f
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    if-nez v2, :cond_e

    .line 1034
    :cond_1c
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public onEvaluateInputViewShown()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1174
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1175
    .local v0, config:Landroid/content/res/Configuration;
    const-string v2, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEvaluateInputViewShown: config.hardKeyboardHidden = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v1, :cond_2d

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    :cond_2d
    :goto_2d
    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public onExtractTextContextMenuItem(I)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 2177
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2178
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 2179
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 2181
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public onExtractedCursorMovement(II)V
    .registers 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2160
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_6

    if-nez p2, :cond_7

    .line 2166
    :cond_6
    :goto_6
    return-void

    .line 2163
    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_6
.end method

.method public onExtractedDeleteText(II)V
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2099
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2100
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_f

    .line 2101
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2102
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2104
    :cond_f
    return-void
.end method

.method public onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .registers 6
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 2110
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2111
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_d

    .line 2112
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2113
    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2115
    :cond_d
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2089
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2090
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 2091
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2093
    :cond_9
    return-void
.end method

.method public onExtractedSetSpan(Ljava/lang/Object;III)V
    .registers 11
    .parameter "span"
    .parameter "start"
    .parameter "end"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    .line 2121
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2122
    .local v0, conn:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_d

    .line 2123
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2131
    :cond_d
    :goto_d
    return-void

    .line 2124
    :cond_e
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2125
    .local v1, text:Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_d

    move-object v2, v1

    .line 2126
    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, p1, v3, v4, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2127
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2128
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_d
.end method

.method public onExtractedTextClicked()V
    .registers 2

    .prologue
    .line 2141
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_5

    .line 2147
    :cond_4
    :goto_4
    return-void

    .line 2144
    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_4
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .registers 3
    .parameter "ei"

    .prologue
    .line 2288
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_8

    .line 2289
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2291
    :cond_8
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .registers 3
    .parameter "finishingInput"

    .prologue
    .line 1406
    if-nez p1, :cond_b

    .line 1407
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1408
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 1409
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1412
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_b
    return-void
.end method

.method public onFinishInput()V
    .registers 2

    .prologue
    .line 1671
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1672
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 1673
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1675
    :cond_9
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 3
    .parameter "finishingInput"

    .prologue
    .line 1361
    if-nez p1, :cond_b

    .line 1362
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1363
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 1364
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1367
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_b
    return-void
.end method

.method public onInitializeInterface()V
    .registers 1

    .prologue
    .line 713
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1825
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 1826
    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1827
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1828
    const/4 v0, 0x1

    .line 1832
    :cond_12
    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_12
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1841
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 1857
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1873
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1875
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v0

    .line 1878
    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_18
.end method

.method public onShowInputRequested(IZ)Z
    .registers 7
    .parameter "flags"
    .parameter "configChange"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1430
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1453
    :cond_8
    :goto_8
    return v1

    .line 1433
    :cond_9
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_21

    .line 1434
    if-nez p2, :cond_15

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1442
    :cond_15
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1443
    .local v0, config:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v3, v2, :cond_8

    .line 1450
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_21
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_27

    .line 1451
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    :cond_27
    move v1, v2

    .line 1453
    goto :goto_8
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .parameter "info"
    .parameter "restarting"

    .prologue
    .line 1390
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 1613
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .parameter "info"
    .parameter "restarting"

    .prologue
    .line 1345
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1883
    const/4 v0, 0x0

    return v0
.end method

.method public onUnbindInput()V
    .registers 1

    .prologue
    .line 1597
    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "newCursor"

    .prologue
    .line 1754
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 4
    .parameter "token"
    .parameter "text"

    .prologue
    .line 1697
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_5

    .line 1706
    :cond_4
    :goto_4
    return-void

    .line 1700
    :cond_5
    if-eqz p2, :cond_4

    .line 1701
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_4

    .line 1702
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 1703
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    goto :goto_4
.end method

.method public onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .registers 6
    .parameter "ei"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2252
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2279
    :cond_8
    :goto_8
    return-void

    .line 2256
    :cond_9
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    .line 2259
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_22

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v0, :cond_40

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_40

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_40

    .line 2263
    .local v0, hasAction:Z
    :cond_22
    :goto_22
    if-eqz v0, :cond_4e

    .line 2264
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2265
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_8

    .line 2266
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_42

    .line 2267
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2271
    :goto_38
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .end local v0           #hasAction:Z
    :cond_40
    move v0, v1

    .line 2259
    goto :goto_22

    .line 2269
    .restart local v0       #hasAction:Z
    :cond_42
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 2274
    :cond_4e
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2275
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_8

    .line 2276
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8
.end method

.method public onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .registers 4
    .parameter "ei"

    .prologue
    .line 2226
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_b

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 2229
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 2234
    :goto_f
    return-void

    .line 2233
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    goto :goto_f
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 11
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1720
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1721
    .local v0, eet:Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v3, :cond_2b

    .line 1722
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1723
    .local v2, off:I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 1724
    sub-int/2addr p3, v2

    .line 1725
    sub-int/2addr p4, v2

    .line 1726
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1727
    .local v1, len:I
    if-gez p3, :cond_2c

    const/4 p3, 0x0

    .line 1729
    :cond_22
    :goto_22
    if-gez p4, :cond_30

    const/4 p4, 0x0

    .line 1731
    :cond_25
    :goto_25
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    .line 1732
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 1734
    .end local v1           #len:I
    .end local v2           #off:I
    :cond_2b
    return-void

    .line 1728
    .restart local v1       #len:I
    .restart local v2       #off:I
    :cond_2c
    if-le p3, v1, :cond_22

    move p3, v1

    goto :goto_22

    .line 1730
    :cond_30
    if-le p4, v1, :cond_25

    move p4, v1

    goto :goto_25
.end method

.method public onViewClicked(Z)V
    .registers 2
    .parameter "focusChanged"

    .prologue
    .line 1745
    return-void
.end method

.method public onWindowHidden()V
    .registers 1

    .prologue
    .line 1576
    return-void
.end method

.method public onWindowShown()V
    .registers 1

    .prologue
    .line 1568
    return-void
.end method

.method reportExtractedMovement(II)V
    .registers 5
    .parameter "keyCode"
    .parameter "count"

    .prologue
    .line 1905
    const/4 v0, 0x0

    .local v0, dx:I
    const/4 v1, 0x0

    .line 1906
    .local v1, dy:I
    packed-switch p1, :pswitch_data_12

    .line 1920
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    .line 1921
    return-void

    .line 1908
    :pswitch_9
    neg-int v0, p2

    .line 1909
    goto :goto_5

    .line 1911
    :pswitch_b
    move v0, p2

    .line 1912
    goto :goto_5

    .line 1914
    :pswitch_d
    neg-int v1, p2

    .line 1915
    goto :goto_5

    .line 1917
    :pswitch_f
    move v1, p2

    goto :goto_5

    .line 1906
    nop

    :pswitch_data_12
    .packed-switch 0x13
        :pswitch_d
        :pswitch_f
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public requestHideSelf(I)V
    .registers 4
    .parameter "flags"

    .prologue
    .line 1765
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1766
    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .registers 7
    .parameter "fromEnterKey"

    .prologue
    const/4 v2, 0x1

    .line 2028
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2029
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_24

    if-eqz p1, :cond_10

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    if-nez v3, :cond_24

    :cond_10
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v2, :cond_24

    .line 2037
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2038
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_23

    .line 2039
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v1, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 2044
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_23
    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public sendDownUpKeyEvents(I)V
    .registers 18
    .parameter "keyEventCode"

    .prologue
    .line 2000
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v15

    .line 2001
    .local v15, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v15, :cond_7

    .line 2009
    :goto_6
    return-void

    .line 2002
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2003
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v15, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2006
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v15, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_6
.end method

.method public sendKeyChar(C)V
    .registers 5
    .parameter "charCode"

    .prologue
    const/4 v2, 0x1

    .line 2062
    packed-switch p1, :pswitch_data_2e

    .line 2070
    const/16 v1, 0x30

    if-lt p1, v1, :cond_20

    const/16 v1, 0x39

    if-gt p1, v1, :cond_20

    .line 2071
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    .line 2080
    :cond_13
    :goto_13
    return-void

    .line 2064
    :pswitch_14
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2065
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_13

    .line 2073
    :cond_20
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2074
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_13

    .line 2075
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_13

    .line 2062
    :pswitch_data_2e
    .packed-switch 0xa
        :pswitch_14
    .end packed-switch
.end method

.method public setBackDisposition(I)V
    .registers 2
    .parameter "disposition"

    .prologue
    .line 877
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 878
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 1272
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1273
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .registers 3
    .parameter "shown"

    .prologue
    .line 1185
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1186
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eq v0, p1, :cond_11

    .line 1190
    if-eqz p1, :cond_12

    .line 1191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 1196
    :cond_11
    :goto_11
    return-void

    .line 1193
    :cond_12
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_11
.end method

.method public setExtractView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1242
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1243
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 1247
    if-eqz p1, :cond_44

    .line 1248
    const v0, 0x1020025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1250
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    .line 1251
    const v0, 0x10202bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 1253
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v0, :cond_3f

    .line 1254
    const v0, 0x10202ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1257
    :cond_3f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1263
    :goto_43
    return-void

    .line 1259
    :cond_44
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1260
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1261
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    goto :goto_43
.end method

.method public setExtractViewShown(Z)V
    .registers 3
    .parameter "shown"

    .prologue
    .line 1047
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_c

    .line 1048
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 1049
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 1051
    :cond_c
    return-void

    .line 1048
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setInputView(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 1285
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1286
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 1290
    return-void
.end method

.method public setTheme(I)V
    .registers 4
    .parameter "theme"

    .prologue
    .line 683
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_c

    .line 684
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_c
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 687
    return-void
.end method

.method public showStatusIcon(I)V
    .registers 5
    .parameter "iconResId"

    .prologue
    .line 1221
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1222
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1223
    return-void
.end method

.method public showWindow(Z)V
    .registers 5
    .parameter "showInput"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1464
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    if-eqz v0, :cond_e

    .line 1465
    const-string v0, "InputMethodService"

    const-string v1, "Re-entrance in to showWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :goto_d
    return-void

    .line 1470
    :cond_e
    :try_start_e
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1471
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1472
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    .line 1474
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1475
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    goto :goto_d

    .line 1474
    :catchall_1d
    move-exception v0

    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1475
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1474
    throw v0
.end method

.method showWindowInner(Z)V
    .registers 9
    .parameter "showInput"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1480
    const/4 v0, 0x0

    .line 1481
    .local v0, doShowInput:Z
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1482
    .local v2, wasVisible:Z
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1483
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v3, :cond_5d

    .line 1484
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v3, :cond_14

    .line 1485
    if-eqz p1, :cond_14

    .line 1486
    const/4 v0, 0x1

    .line 1487
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1495
    :cond_14
    :goto_14
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1496
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1497
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 1499
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v3, :cond_25

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    if-nez v3, :cond_35

    .line 1500
    :cond_25
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    .line 1501
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 1502
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1504
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    .line 1506
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_35

    .line 1507
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    .line 1510
    .end local v1           #v:Landroid/view/View;
    :cond_35
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v3, :cond_5f

    .line 1511
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v3, :cond_44

    .line 1513
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1514
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v3, v4}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1522
    :cond_44
    :goto_44
    if-eqz v0, :cond_49

    .line 1523
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1526
    :cond_49
    if-nez v2, :cond_5c

    .line 1528
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1529
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 1530
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 1532
    :cond_5c
    return-void

    .line 1491
    :cond_5d
    const/4 p1, 0x1

    goto :goto_14

    .line 1516
    :cond_5f
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v3, :cond_44

    .line 1518
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1519
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v3, v4}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_44
.end method

.method startExtractingText(Z)V
    .registers 11
    .parameter "inputChanged"

    .prologue
    const/4 v8, 0x1

    .line 2294
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2295
    .local v0, eet:Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_95

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 2297
    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    .line 2298
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2299
    .local v4, req:Landroid/view/inputmethod/ExtractedTextRequest;
    iget v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v5, v4, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 2300
    iput v8, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 2301
    const/16 v5, 0xa

    iput v5, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 2302
    const/16 v5, 0x2710

    iput v5, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 2303
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2304
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_96

    const/4 v5, 0x0

    :goto_31
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 2306
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_39

    if-nez v2, :cond_5d

    .line 2307
    :cond_39
    const-string v5, "InputMethodService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", input connection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_5d
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2313
    .local v1, ei:Landroid/view/inputmethod/EditorInfo;
    :try_start_61
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 2314
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    .line 2315
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    .line 2316
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2317
    .local v3, inputType:I
    and-int/lit8 v5, v3, 0xf

    if-ne v5, v8, :cond_78

    .line 2319
    const/high16 v5, 0x4

    and-int/2addr v5, v3

    if-eqz v5, :cond_78

    .line 2320
    const/high16 v5, 0x2

    or-int/2addr v3, v5

    .line 2323
    :cond_78
    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 2324
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2325
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_9b

    .line 2326
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2327
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_8d
    .catchall {:try_start_61 .. :try_end_8d} :catchall_a5

    .line 2333
    :goto_8d
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 2336
    if-eqz p1, :cond_95

    .line 2337
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    .line 2340
    .end local v1           #ei:Landroid/view/inputmethod/EditorInfo;
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #inputType:I
    .end local v4           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_95
    return-void

    .line 2304
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v4       #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_96
    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    goto :goto_31

    .line 2329
    .restart local v1       #ei:Landroid/view/inputmethod/EditorInfo;
    .restart local v3       #inputType:I
    :cond_9b
    const/4 v5, 0x0

    :try_start_9c
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2330
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_a5

    goto :goto_8d

    .line 2333
    .end local v3           #inputType:I
    :catchall_a5
    move-exception v5

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    throw v5
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 1238
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .registers 4
    .parameter "shown"

    .prologue
    .line 1199
    if-eqz p1, :cond_f

    const/4 v0, 0x0

    .line 1200
    .local v0, vis:I
    :goto_3
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_e

    .line 1201
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1202
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 1204
    :cond_e
    return-void

    .line 1199
    .end local v0           #vis:I
    :cond_f
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    goto :goto_3
.end method

.method updateExtractFrameVisibility()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1069
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1070
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v3, :cond_3f

    const/4 v1, 0x4

    .line 1071
    .local v1, vis:I
    :goto_d
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1076
    :goto_12
    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v3, :cond_4a

    move v3, v4

    :goto_17
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1077
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v3, :cond_39

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_39

    .line 1078
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v1, :cond_4c

    :goto_2a
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1082
    .local v0, animRes:I
    if-eqz v0, :cond_39

    .line 1083
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1087
    .end local v0           #animRes:I
    :cond_39
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1088
    return-void

    .end local v1           #vis:I
    :cond_3f
    move v1, v2

    .line 1070
    goto :goto_d

    .line 1073
    :cond_41
    const/4 v1, 0x0

    .line 1074
    .restart local v1       #vis:I
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_12

    :cond_4a
    move v3, v2

    .line 1076
    goto :goto_17

    .line 1078
    :cond_4c
    const/4 v4, 0x2

    goto :goto_2a
.end method

.method public updateFullscreenMode()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 942
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v5, :cond_7e

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v5

    if-eqz v5, :cond_7e

    move v2, v6

    .line 943
    .local v2, isFullscreen:Z
    :goto_d
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v8, :cond_80

    move v0, v6

    .line 944
    .local v0, changed:Z
    :goto_14
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v5, v2, :cond_1c

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-nez v5, :cond_6a

    .line 945
    :cond_1c
    const/4 v0, 0x1

    .line 946
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 947
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 948
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_28

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 949
    :cond_28
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 950
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 951
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 953
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_82

    .line 954
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 956
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 957
    const/high16 v5, 0x3f80

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 963
    :goto_48
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    if-eqz v2, :cond_67

    .line 966
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v5, :cond_64

    .line 967
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v4

    .line 968
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_64

    .line 969
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    .line 972
    .end local v4           #v:Landroid/view/View;
    :cond_64
    invoke-virtual {p0, v7}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 974
    :cond_67
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 977
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6a
    if-eqz v0, :cond_7d

    .line 978
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v8, :cond_8f

    :goto_76
    invoke-virtual {p0, v5, v2, v6}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 979
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 981
    :cond_7d
    return-void

    .end local v0           #changed:Z
    .end local v2           #isFullscreen:Z
    :cond_7e
    move v2, v7

    .line 942
    goto :goto_d

    .restart local v2       #isFullscreen:Z
    :cond_80
    move v0, v7

    .line 943
    goto :goto_14

    .line 959
    .restart local v0       #changed:Z
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_82
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 960
    const/4 v5, -0x2

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 961
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_48

    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8f
    move v6, v7

    .line 978
    goto :goto_76
.end method

.method public updateInputViewShown()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1135
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v0, 0x1

    .line 1136
    .local v0, isShown:Z
    :goto_c
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v3, v0, :cond_2d

    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v3, :cond_2d

    .line 1137
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 1138
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_30

    :goto_1a
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1139
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v2, :cond_2d

    .line 1140
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1141
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 1142
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_2d

    .line 1143
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 1147
    .end local v1           #v:Landroid/view/View;
    :cond_2d
    return-void

    .end local v0           #isShown:Z
    :cond_2e
    move v0, v2

    .line 1135
    goto :goto_c

    .line 1138
    .restart local v0       #isShown:Z
    :cond_30
    const/16 v2, 0x8

    goto :goto_1a
.end method
