.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 585
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 255
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 258
    return-void
.end method

.method private constructor <init>(IIFF)V
    .registers 5
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 247
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 249
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 250
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 251
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .registers 16
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v5, 0x0

    .line 101
    .local v5, compatFlags:I
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v9, :cond_10

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v9, :cond_10

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v9, :cond_50

    .line 104
    :cond_10
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v9, :cond_3a

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 107
    .local v7, required:I
    :goto_16
    if-nez v7, :cond_1a

    .line 108
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 110
    :cond_1a
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v9, :cond_3d

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 112
    .local v4, compat:I
    :goto_20
    if-ge v4, v7, :cond_23

    .line 113
    move v4, v7

    .line 115
    :cond_23
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 117
    .local v6, largest:I
    const/16 v9, 0x140

    if-le v7, v9, :cond_3f

    .line 124
    or-int/lit8 v5, v5, 0x4

    .line 141
    :cond_2b
    :goto_2b
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 142
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 143
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 243
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :goto_37
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 244
    return-void

    .line 104
    :cond_3a
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_16

    .restart local v7       #required:I
    :cond_3d
    move v4, v7

    .line 110
    goto :goto_20

    .line 125
    .restart local v4       #compat:I
    .restart local v6       #largest:I
    :cond_3f
    if-eqz v6, :cond_46

    if-le p3, v6, :cond_46

    .line 129
    or-int/lit8 v5, v5, 0xa

    goto :goto_2b

    .line 130
    :cond_46
    if-lt v4, p3, :cond_4b

    .line 133
    or-int/lit8 v5, v5, 0x4

    goto :goto_2b

    .line 134
    :cond_4b
    if-eqz p4, :cond_2b

    .line 137
    or-int/lit8 v5, v5, 0x8

    goto :goto_2b

    .line 150
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :cond_50
    const/4 v0, 0x2

    .line 156
    .local v0, EXPANDABLE:I
    const/16 v1, 0x8

    .line 162
    .local v1, LARGE_SCREENS:I
    const/16 v2, 0x20

    .line 164
    .local v2, XLARGE_SCREENS:I
    const/4 v8, 0x0

    .line 168
    .local v8, sizeInfo:I
    const/4 v3, 0x0

    .line 170
    .local v3, anyResizeable:Z
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_64

    .line 171
    or-int/lit8 v8, v8, 0x8

    .line 172
    const/4 v3, 0x1

    .line 173
    if-nez p4, :cond_64

    .line 177
    or-int/lit8 v8, v8, 0x22

    .line 180
    :cond_64
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_70

    .line 181
    const/4 v3, 0x1

    .line 182
    if-nez p4, :cond_70

    .line 183
    or-int/lit8 v8, v8, 0x22

    .line 186
    :cond_70
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_79

    .line 187
    const/4 v3, 0x1

    .line 188
    or-int/lit8 v8, v8, 0x2

    .line 191
    :cond_79
    if-eqz p4, :cond_7d

    .line 196
    and-int/lit8 v8, v8, -0x3

    .line 199
    :cond_7d
    or-int/lit8 v5, v5, 0x8

    .line 200
    and-int/lit8 v9, p2, 0xf

    packed-switch v9, :pswitch_data_e2

    .line 219
    :cond_84
    :goto_84
    const/high16 v9, 0x1000

    and-int/2addr v9, p2

    if-eqz v9, :cond_c6

    .line 220
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_c1

    .line 221
    and-int/lit8 v5, v5, -0x9

    .line 230
    :cond_8f
    :goto_8f
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_cb

    .line 231
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 232
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 233
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_37

    .line 202
    :pswitch_a2
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_a8

    .line 203
    and-int/lit8 v5, v5, -0x9

    .line 205
    :cond_a8
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_84

    .line 206
    or-int/lit8 v5, v5, 0x4

    goto :goto_84

    .line 210
    :pswitch_b2
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_b8

    .line 211
    and-int/lit8 v5, v5, -0x9

    .line 213
    :cond_b8
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_84

    .line 214
    or-int/lit8 v5, v5, 0x4

    goto :goto_84

    .line 222
    :cond_c1
    if-nez v3, :cond_8f

    .line 223
    or-int/lit8 v5, v5, 0x2

    goto :goto_8f

    .line 226
    :cond_c6
    and-int/lit8 v5, v5, -0x9

    .line 227
    or-int/lit8 v5, v5, 0x4

    goto :goto_8f

    .line 235
    :cond_cb
    const/16 v9, 0xa0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 236
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v9, v9

    const/high16 v10, 0x4320

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 238
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 239
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_37

    .line 200
    :pswitch_data_e2
    .packed-switch 0x3
        :pswitch_b2
        :pswitch_a2
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 596
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 601
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .registers 20
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 476
    move-object/from16 v0, p0

    iget v15, v0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 477
    .local v15, width:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 479
    .local v3, height:I
    if-ge v15, v3, :cond_91

    .line 480
    move v13, v15

    .line 481
    .local v13, shortSize:I
    move v4, v3

    .line 486
    .local v4, longSize:I
    :goto_c
    const/high16 v16, 0x43a0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f00

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v7, v0

    .line 487
    .local v7, newShortSize:I
    int-to-float v0, v4

    move/from16 v16, v0

    int-to-float v0, v13

    move/from16 v17, v0

    div-float v1, v16, v17

    .line 488
    .local v1, aspect:F
    const v16, 0x3fe3bbbc

    cmpl-float v16, v1, v16

    if-lez v16, :cond_2f

    .line 489
    const v1, 0x3fe3bbbc

    .line 491
    :cond_2f
    int-to-float v0, v7

    move/from16 v16, v0

    mul-float v16, v16, v1

    const/high16 v17, 0x3f00

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v6, v0

    .line 493
    .local v6, newLongSize:I
    if-ge v15, v3, :cond_95

    .line 494
    move v8, v7

    .line 495
    .local v8, newWidth:I
    move v5, v6

    .line 501
    .local v5, newHeight:I
    :goto_3f
    int-to-float v0, v15

    move/from16 v16, v0

    int-to-float v0, v8

    move/from16 v17, v0

    div-float v14, v16, v17

    .line 502
    .local v14, sw:F
    int-to-float v0, v3

    move/from16 v16, v0

    int-to-float v0, v5

    move/from16 v17, v0

    div-float v12, v16, v17

    .line 503
    .local v12, sh:F
    cmpg-float v16, v14, v12

    if-gez v16, :cond_98

    move v11, v14

    .line 504
    .local v11, scale:F
    :goto_54
    const/high16 v16, 0x3f80

    cmpg-float v16, v11, v16

    if-gez v16, :cond_5c

    .line 505
    const/high16 v11, 0x3f80

    .line 508
    :cond_5c
    if-eqz p1, :cond_66

    .line 509
    move-object/from16 v0, p1

    iput v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 510
    move-object/from16 v0, p1

    iput v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 513
    :cond_66
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 514
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRawWidth()I

    move-result v10

    .line 515
    .local v10, rawWidth:I
    invoke-virtual {v2}, Landroid/view/Display;->getRawHeight()I

    move-result v9

    .line 517
    .local v9, rawHeight:I
    const/16 v16, 0x400

    move/from16 v0, v16

    if-ne v0, v10, :cond_82

    const/16 v16, 0x300

    move/from16 v0, v16

    if-eq v0, v9, :cond_8e

    :cond_82
    const/16 v16, 0x400

    move/from16 v0, v16

    if-ne v0, v9, :cond_90

    const/16 v16, 0x300

    move/from16 v0, v16

    if-ne v0, v10, :cond_90

    .line 518
    :cond_8e
    const/high16 v11, 0x4000

    .line 521
    .end local v11           #scale:F
    :cond_90
    return v11

    .line 483
    .end local v1           #aspect:F
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #longSize:I
    .end local v5           #newHeight:I
    .end local v6           #newLongSize:I
    .end local v7           #newShortSize:I
    .end local v8           #newWidth:I
    .end local v9           #rawHeight:I
    .end local v10           #rawWidth:I
    .end local v12           #sh:F
    .end local v13           #shortSize:I
    .end local v14           #sw:F
    :cond_91
    move v13, v3

    .line 484
    .restart local v13       #shortSize:I
    move v4, v15

    .restart local v4       #longSize:I
    goto/16 :goto_c

    .line 497
    .restart local v1       #aspect:F
    .restart local v6       #newLongSize:I
    .restart local v7       #newShortSize:I
    :cond_95
    move v8, v6

    .line 498
    .restart local v8       #newWidth:I
    move v5, v7

    .restart local v5       #newHeight:I
    goto :goto_3f

    .restart local v12       #sh:F
    .restart local v14       #sw:F
    :cond_98
    move v11, v12

    .line 503
    goto :goto_54
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public applyToConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "inoutConfig"

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 458
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 461
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 462
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 463
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 465
    :cond_1a
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .registers 6
    .parameter "inoutDm"

    .prologue
    const/high16 v3, 0x3f00

    .line 432
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_41

    .line 435
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 441
    :goto_b
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 442
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 443
    .local v0, invertedRatio:F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 444
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 445
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 446
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 447
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 448
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 449
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 451
    .end local v0           #invertedRatio:F
    :cond_40
    return-void

    .line 437
    :cond_41
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 438
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_b
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 527
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 528
    .local v2, oc:Landroid/content/res/CompatibilityInfo;
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v4, v5, :cond_c

    .line 534
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :cond_b
    :goto_b
    return v3

    .line 529
    .restart local v2       #oc:Landroid/content/res/CompatibilityInfo;
    :cond_c
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-ne v4, v5, :cond_b

    .line 530
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_b

    .line 531
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1e} :catch_24

    cmpl-float v4, v4, v5

    if-nez v4, :cond_b

    .line 532
    const/4 v3, 0x1

    goto :goto_b

    .line 533
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :catch_24
    move-exception v1

    .line 534
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_b
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .registers 2

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 564
    const/16 v0, 0x11

    .line 565
    .local v0, result:I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 566
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 567
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 568
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 569
    return v0
.end method

.method public isScalingRequired()Z
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public neverSupportsScreen()Z
    .registers 2

    .prologue
    .line 272
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public supportsScreen()Z
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 541
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 545
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 547
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_2d
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_38

    .line 550
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_38
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 553
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_43
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 556
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_4e
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 579
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 582
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 583
    return-void
.end method
