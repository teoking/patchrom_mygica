.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityInteractionConnection"
.end annotation


# instance fields
.field private final mViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .parameter "viewRootImpl"

    .prologue
    .line 5183
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 5184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    .line 5185
    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(JIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 25
    .parameter "accessibilityNodeId"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5192
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 5193
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_25

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_25

    .line 5194
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdClientThread(JIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5206
    :goto_24
    return-void

    .line 5201
    :cond_25
    const/4 v2, 0x0

    :try_start_26
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_24

    .line 5202
    :catch_2e
    move-exception v2

    goto :goto_24
.end method

.method public findAccessibilityNodeInfoByViewId(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 27
    .parameter "accessibilityNodeId"
    .parameter "viewId"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5233
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 5234
    .local v14, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_28

    iget-object v2, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_28

    .line 5235
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByViewIdClientThread(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5247
    :goto_27
    return-void

    .line 5242
    :cond_28
    const/4 v2, 0x0

    :try_start_29
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_27

    .line 5243
    :catch_31
    move-exception v2

    goto :goto_27
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 27
    .parameter "accessibilityNodeId"
    .parameter "text"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5254
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 5255
    .local v14, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_28

    iget-object v2, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_28

    .line 5256
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;IIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5268
    :goto_27
    return-void

    .line 5263
    :cond_28
    const/4 v2, 0x0

    :try_start_29
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_27

    .line 5264
    :catch_31
    move-exception v2

    goto :goto_27
.end method

.method public findFocus(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 27
    .parameter "accessibilityNodeId"
    .parameter "focusType"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5275
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 5276
    .local v14, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_28

    iget-object v2, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_28

    .line 5277
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Landroid/view/AccessibilityInteractionController;->findFocusClientThread(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5288
    :goto_27
    return-void

    .line 5283
    :cond_28
    const/4 v2, 0x0

    :try_start_29
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_27

    .line 5284
    :catch_31
    move-exception v2

    goto :goto_27
.end method

.method public focusSearch(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 27
    .parameter "accessibilityNodeId"
    .parameter "direction"
    .parameter "windowLeft"
    .parameter "windowTop"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5295
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewRootImpl;

    .line 5296
    .local v14, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_28

    iget-object v2, v14, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_28

    .line 5297
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-virtual/range {v2 .. v13}, Landroid/view/AccessibilityInteractionController;->focusSearchClientThread(JIIIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5308
    :goto_27
    return-void

    .line 5303
    :cond_28
    const/4 v2, 0x0

    :try_start_29
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_27

    .line 5304
    :catch_31
    move-exception v2

    goto :goto_27
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .registers 25
    .parameter "accessibilityNodeId"
    .parameter "action"
    .parameter "arguments"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 5213
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 5214
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_25

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_25

    .line 5215
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 5226
    :goto_24
    return-void

    .line 5221
    :cond_25
    const/4 v2, 0x0

    :try_start_26
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_24

    .line 5222
    :catch_2e
    move-exception v2

    goto :goto_24
.end method
