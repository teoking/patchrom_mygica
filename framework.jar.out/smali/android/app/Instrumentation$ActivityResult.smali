.class public final Landroid/app/Instrumentation$ActivityResult;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResult"
.end annotation


# instance fields
.field private final mResultCode:I

.field private final mResultData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .registers 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 1332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1333
    iput p1, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    .line 1334
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    .line 1335
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .registers 2

    .prologue
    .line 1341
    iget v0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 1348
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    return-object v0
.end method
