.class Landroid/webkit/WebViewClassic$DestroyNativeRunnable;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DestroyNativeRunnable"
.end annotation


# instance fields
.field private mNativePtr:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "nativePtr"

    .prologue
    .line 2138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2139
    iput p1, p0, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;->mNativePtr:I

    .line 2140
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2145
    iget v0, p0, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;->mNativePtr:I

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$1800(I)V

    .line 2146
    return-void
.end method
