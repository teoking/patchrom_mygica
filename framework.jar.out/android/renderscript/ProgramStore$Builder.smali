.class public Landroid/renderscript/ProgramStore$Builder;
.super Ljava/lang/Object;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field mColorMaskA:Z

.field mColorMaskB:Z

.field mColorMaskG:Z

.field mColorMaskR:Z

.field mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field mDepthMask:Z

.field mDither:Z

.field private mMaskChanges:I

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 5
    .parameter "rs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 334
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 336
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 337
    iput-boolean v2, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 338
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 339
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 340
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 341
    iput-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 342
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 343
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 344
    iput v2, p0, Landroid/renderscript/ProgramStore$Builder;->mMaskChanges:I

    .line 345
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramStore;
    .registers 13

    .prologue
    .line 431
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 432
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iget-boolean v2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iget-boolean v4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iget-boolean v5, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iget-boolean v6, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iget-object v7, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iget v7, v7, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    iget-object v8, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iget v8, v8, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    iget-object v9, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iget v9, v9, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    invoke-virtual/range {v0 .. v9}, Landroid/renderscript/RenderScript;->nProgramStoreCreate(ZZZZZZIII)I

    move-result v10

    .line 435
    .local v10, id:I
    new-instance v11, Landroid/renderscript/ProgramStore;

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v11, v10, v0}, Landroid/renderscript/ProgramStore;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 436
    .local v11, programStore:Landroid/renderscript/ProgramStore;
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v0, v11, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 437
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    .line 438
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    .line 439
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    .line 440
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    .line 441
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    .line 442
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v0, v11, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 443
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v0, v11, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 444
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iput-boolean v0, v11, Landroid/renderscript/ProgramStore;->mDither:Z

    .line 445
    return-object v11
.end method

.method public setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;
    .registers 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 409
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 410
    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 411
    return-object p0
.end method

.method public setColorMaskEnabled(ZZZZ)Landroid/renderscript/ProgramStore$Builder;
    .registers 7
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 383
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 384
    iput-boolean p2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 385
    iput-boolean p3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 386
    iput-boolean p4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 387
    iget v0, p0, Landroid/renderscript/ProgramStore$Builder;->mMaskChanges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/renderscript/ProgramStore$Builder;->mMaskChanges:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1a

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/ProgramStore$Builder;->mMaskChanges:I

    .line 390
    const-wide/16 v0, 0x64

    :try_start_17
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 394
    :cond_1a
    :goto_1a
    return-object p0

    .line 391
    :catch_1b
    move-exception v0

    goto :goto_1a
.end method

.method public setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;
    .registers 2
    .parameter "func"

    .prologue
    .line 355
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 356
    return-object p0
.end method

.method public setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .registers 2
    .parameter "enable"

    .prologue
    .line 368
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 369
    return-object p0
.end method

.method public setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .registers 2
    .parameter "enable"

    .prologue
    .line 423
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    .line 424
    return-object p0
.end method
