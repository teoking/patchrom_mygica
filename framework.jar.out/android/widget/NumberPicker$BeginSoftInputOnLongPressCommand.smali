.class Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 2077
    iput-object p1, p0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2081
    iget-object v0, p0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2700(Landroid/widget/NumberPicker;)V

    .line 2082
    iget-object v0, p0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$2802(Landroid/widget/NumberPicker;Z)Z

    .line 2083
    return-void
.end method
