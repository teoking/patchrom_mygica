.class Landroid/webkit/WebViewClassic$SelectionHandleAlpha;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionHandleAlpha"
.end annotation


# instance fields
.field private mAlpha:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .registers 3
    .parameter

    .prologue
    .line 4507
    iput-object p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4508
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4507
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .registers 2

    .prologue
    .line 4521
    iget v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 4510
    iput p1, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->mAlpha:I

    .line 4511
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 4512
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4513
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$2100(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4514
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$2200(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4516
    iget-object v0, p0, Landroid/webkit/WebViewClassic$SelectionHandleAlpha;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 4518
    :cond_2a
    return-void
.end method
