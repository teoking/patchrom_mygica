.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field protected static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final FLAG_BIOMETRIC_WEAK_LIVELINESS:I = 0x1

.field protected static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field protected static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field protected static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field protected static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field private static final OPTION_ENABLE_FACELOCK:Ljava/lang/String; = "enable_facelock"

.field protected static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field protected static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCurrentUserId:I

    .line 154
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 156
    return-void
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 6
    .parameter "password"

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 506
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 507
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 508
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 509
    const/4 v0, 0x1

    .line 507
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 511
    :cond_17
    const/4 v1, 0x1

    goto :goto_14

    .line 515
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 516
    const/high16 v4, 0x5

    .line 524
    :goto_1f
    return v4

    .line 518
    :cond_20
    if-eqz v1, :cond_25

    .line 519
    const/high16 v4, 0x4

    goto :goto_1f

    .line 521
    :cond_25
    if-eqz v0, :cond_2a

    .line 522
    const/high16 v4, 0x2

    goto :goto_1f

    .line 524
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private finishBiometricWeak()V
    .registers 4

    .prologue
    .line 1107
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1112
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1115
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "secureSettingKey"
    .parameter "defaultValue"

    .prologue
    .line 988
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result p2

    .line 991
    .end local p2
    :goto_c
    return p2

    .line 990
    .restart local p2
    :catch_d
    move-exception v0

    .line 991
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_c
.end method

.method private getCurrentOrCallingUserId()I
    .registers 3

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 246
    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 247
    iget v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mCurrentUserId:I

    .line 249
    :goto_a
    return v1

    :cond_b
    invoke-static {v0}, Landroid/os/UserId;->getUserId(I)I

    move-result v1

    goto :goto_a
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_10

    .line 160
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 163
    :cond_10
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 7
    .parameter "secureSettingKey"
    .parameter "defaultValue"

    .prologue
    .line 1006
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide p2

    .line 1009
    .end local p2
    :goto_c
    return-wide p2

    .line 1008
    .restart local p2
    :catch_d
    move-exception v0

    .line 1009
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_c
.end method

.method private getSalt()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 750
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 751
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_22

    .line 753
    :try_start_c
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 754
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 755
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_22} :catch_27

    .line 761
    :cond_22
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 756
    :catch_27
    move-exception v0

    .line 758
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "secureSettingKey"

    .prologue
    const/4 v1, 0x0

    .line 1024
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 1027
    :goto_e
    return-object v1

    .line 1026
    :catch_f
    move-exception v0

    .line 1027
    .local v0, re:Landroid/os/RemoteException;
    goto :goto_e
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 731
    const/4 v1, 0x0

    .line 745
    :goto_3
    return-object v1

    .line 734
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 735
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 736
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 737
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 738
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 736
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 741
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 742
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 743
    .local v1, hash:[B
    goto :goto_3

    .line 744
    .end local v1           #hash:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_2f
    move-exception v4

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 745
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 710
    const-string v4, ""

    .line 719
    :goto_4
    return-object v4

    .line 712
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 714
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 715
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 716
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 717
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 719
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 7
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 997
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1002
    :goto_b
    return-void

    .line 998
    :catch_c
    move-exception v0

    .line 1000
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 8
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1015
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1020
    :goto_b
    return-void

    .line 1016
    :catch_c
    move-exception v0

    .line 1018
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1033
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 1038
    :goto_b
    return-void

    .line 1034
    :catch_c
    move-exception v0

    .line 1036
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 695
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 696
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    .line 697
    aget-byte v0, v1, v2

    .line 698
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 700
    .end local v0           #b:B
    :cond_1c
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "ary"

    .prologue
    .line 789
    const-string v0, "0123456789ABCDEF"

    .line 790
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 791
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 795
    :cond_43
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .registers 8
    .parameter "password"

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 530
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_c

    .line 546
    :goto_b
    return-void

    .line 534
    :cond_c
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 535
    .local v3, service:Landroid/os/IBinder;
    if-nez v3, :cond_1d

    .line 536
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 540
    :cond_1d
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 542
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_21
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_b

    .line 543
    :catch_25
    move-exception v1

    .line 544
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .registers 6
    .parameter "password"

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 277
    .local v1, userId:I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPassword([BI)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v2

    .line 279
    :goto_10
    return v2

    .line 278
    :catch_11
    move-exception v0

    .line 279
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .registers 9
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 291
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 292
    .local v2, passwordHashString:Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, passwordHistory:Ljava/lang/String;
    if-nez v3, :cond_13

    .line 307
    :cond_12
    :goto_12
    return v5

    .line 297
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 298
    .local v1, passwordHashLength:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 299
    .local v4, passwordHistoryLength:I
    if-eqz v4, :cond_12

    .line 302
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 304
    .local v0, neededPasswordHistoryLength:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2c

    .line 305
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 307
    :cond_2c
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_12
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .line 262
    .local v1, userId:I
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPattern([BI)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v2

    .line 264
    :goto_10
    return v2

    .line 263
    :catch_11
    move-exception v0

    .line 264
    .local v0, re:Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public clearLock(Z)V
    .registers 6
    .parameter "isFallback"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 404
    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 405
    :cond_8
    const/high16 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 407
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 408
    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 409
    const-string v0, "lockscreen.password_type_alternate"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 410
    return-void
.end method

.method deleteGallery()V
    .registers 4

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 446
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 447
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method public deleteTempGallery()V
    .registers 4

    .prologue
    .line 436
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 437
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method public getActivePasswordQuality()I
    .registers 6

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 362
    .local v0, activePasswordQuality:I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 364
    .local v1, quality:I
    sparse-switch v1, :sswitch_data_46

    .line 397
    :cond_e
    :goto_e
    return v0

    .line 366
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 367
    const/high16 v0, 0x1

    goto :goto_e

    .line 371
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 372
    const v0, 0x8000

    goto :goto_e

    .line 376
    :sswitch_22
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 377
    const/high16 v0, 0x2

    goto :goto_e

    .line 381
    :sswitch_2b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 382
    const/high16 v0, 0x4

    goto :goto_e

    .line 386
    :sswitch_34
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 387
    const/high16 v0, 0x5

    goto :goto_e

    .line 391
    :sswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 392
    const/high16 v0, 0x6

    goto :goto_e

    .line 364
    :sswitch_data_46
    .sparse-switch
        0x8000 -> :sswitch_18
        0x10000 -> :sswitch_f
        0x20000 -> :sswitch_22
        0x40000 -> :sswitch_2b
        0x50000 -> :sswitch_34
        0x60000 -> :sswitch_3d
    .end sparse-switch
.end method

.method public getCurrentUser()I
    .registers 3

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 228
    iget v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mCurrentUserId:I

    return v0

    .line 230
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system process can get the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 140
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 143
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 6

    .prologue
    const-wide/32 v3, 0x10000

    .line 666
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 670
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_16

    .line 671
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 675
    :cond_16
    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 929
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 930
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 931
    .local v2, now:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_17

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_18

    :cond_17
    move-wide v0, v4

    .line 934
    .end local v0           #deadline:J
    :cond_18
    return-wide v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 978
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 981
    :cond_11
    const/4 v0, 0x0

    .line 983
    .end local v0           #nextAlarm:Ljava/lang/String;
    :cond_12
    return-object v0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .registers 3

    .prologue
    .line 1122
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .registers 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .registers 3

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .registers 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .registers 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public isBiometricWeakEverChosen()Z
    .registers 3

    .prologue
    .line 351
    const-string v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 836
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 838
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_8
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_17

    .line 844
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 852
    :cond_16
    :goto_16
    return v2

    .line 839
    :catch_17
    move-exception v0

    .line 840
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_16

    .line 847
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_16

    move v2, v3

    .line 852
    goto :goto_16
.end method

.method public isBiometricWeakLivelinessEnabled()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 873
    const-string v2, "lock_biometric_weak_flags"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 874
    .local v0, currentFlag:J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public isEmergencyCallCapable()Z
    .registers 3

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .registers 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .registers 16

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 802
    const-string v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 803
    .local v3, mode:J
    const-string v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 804
    .local v1, backupMode:J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_2c

    cmp-long v8, v3, v11

    if-eqz v8, :cond_2c

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_2c

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-nez v8, :cond_55

    :cond_2c
    move v5, v7

    .line 808
    .local v5, passwordEnabled:Z
    :goto_2d
    cmp-long v8, v1, v13

    if-eqz v8, :cond_43

    cmp-long v8, v1, v11

    if-eqz v8, :cond_43

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_43

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_57

    :cond_43
    move v0, v7

    .line 813
    .local v0, backupEnabled:Z
    :goto_44
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_59

    if-nez v5, :cond_54

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-eqz v8, :cond_59

    if-eqz v0, :cond_59

    :cond_54
    :goto_54
    return v7

    .end local v0           #backupEnabled:Z
    .end local v5           #passwordEnabled:Z
    :cond_55
    move v5, v6

    .line 804
    goto :goto_2d

    .restart local v5       #passwordEnabled:Z
    :cond_57
    move v0, v6

    .line 808
    goto :goto_44

    .restart local v0       #backupEnabled:Z
    :cond_59
    move v7, v6

    .line 813
    goto :goto_54
.end method

.method public isLockPatternEnabled()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 821
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    move v0, v1

    .line 825
    .local v0, backupEnabled:Z
    :goto_10
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_2d

    if-eqz v0, :cond_2d

    :cond_2a
    :goto_2a
    return v1

    .end local v0           #backupEnabled:Z
    :cond_2b
    move v0, v2

    .line 821
    goto :goto_10

    .restart local v0       #backupEnabled:Z
    :cond_2d
    move v1, v2

    .line 825
    goto :goto_2a
.end method

.method public isLockScreenDisabled()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isPatternEverChosen()Z
    .registers 3

    .prologue
    .line 341
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .registers 3

    .prologue
    .line 943
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .registers 3

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1041
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    int-to-long v2, v6

    .line 1042
    .local v2, mode:J
    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_43

    move v1, v4

    .line 1043
    .local v1, isPattern:Z
    :goto_f
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_45

    :cond_2b
    move v0, v4

    .line 1047
    .local v0, isPassword:Z
    :goto_2c
    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v6

    if-nez v6, :cond_42

    :cond_3a
    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1049
    .local v4, secure:Z
    :cond_42
    :goto_42
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_43
    move v1, v5

    .line 1042
    goto :goto_f

    .restart local v1       #isPattern:Z
    :cond_45
    move v0, v5

    .line 1043
    goto :goto_2c

    .restart local v0       #isPassword:Z
    :cond_47
    move v4, v5

    .line 1047
    goto :goto_42
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 3

    .prologue
    .line 902
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .registers 3

    .prologue
    .line 888
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .registers 11
    .parameter "password"

    .prologue
    .line 772
    if-nez p1, :cond_4

    .line 773
    const/4 v2, 0x0

    .line 785
    :goto_3
    return-object v2

    .line 775
    :cond_4
    const/4 v0, 0x0

    .line 776
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 778
    .local v2, hashed:[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 779
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 780
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 781
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_51

    move-result-object v2

    goto :goto_3

    .line 782
    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :catch_51
    move-exception v1

    .line 783
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public removeUser(I)V
    .registers 6
    .parameter "userId"

    .prologue
    .line 235
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_f

    .line 237
    :try_start_8
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 242
    :cond_f
    :goto_f
    return-void

    .line 238
    :catch_10
    move-exception v0

    .line 239
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove lock settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public reportFailedPasswordAttempt()V
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 212
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    .line 216
    return-void
.end method

.method public resumeCall()Z
    .registers 3

    .prologue
    .line 1095
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1097
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    :try_start_d
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_16

    .line 1098
    const/4 v1, 0x1

    .line 1103
    :goto_14
    return v1

    .line 1100
    :catch_15
    move-exception v1

    .line 1103
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 4
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 557
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .registers 32
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"

    .prologue
    .line 569
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v22

    .line 571
    .local v22, hash:[B
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    move-object/from16 v0, v22

    invoke-interface {v3, v0, v4}, Lcom/android/internal/widget/ILockSettings;->setLockPassword([BI)V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 573
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v24

    .line 574
    .local v24, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_159

    .line 576
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 581
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v21

    .line 582
    .local v21, computedQuality:I
    if-nez p3, :cond_ef

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 584
    const-string v3, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 585
    if-eqz v21, :cond_c2

    .line 586
    const/4 v5, 0x0

    .line 587
    .local v5, letters:I
    const/4 v6, 0x0

    .line 588
    .local v6, uppercase:I
    const/4 v7, 0x0

    .line 589
    .local v7, lowercase:I
    const/4 v8, 0x0

    .line 590
    .local v8, numbers:I
    const/4 v9, 0x0

    .line 591
    .local v9, symbols:I
    const/4 v10, 0x0

    .line 592
    .local v10, nonletter:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_48
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_92

    .line 593
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 594
    .local v20, c:C
    const/16 v3, 0x41

    move/from16 v0, v20

    if-lt v0, v3, :cond_6b

    const/16 v3, 0x5a

    move/from16 v0, v20

    if-gt v0, v3, :cond_6b

    .line 595
    add-int/lit8 v5, v5, 0x1

    .line 596
    add-int/lit8 v6, v6, 0x1

    .line 592
    :goto_68
    add-int/lit8 v23, v23, 0x1

    goto :goto_48

    .line 597
    :cond_6b
    const/16 v3, 0x61

    move/from16 v0, v20

    if-lt v0, v3, :cond_7c

    const/16 v3, 0x7a

    move/from16 v0, v20

    if-gt v0, v3, :cond_7c

    .line 598
    add-int/lit8 v5, v5, 0x1

    .line 599
    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    .line 600
    :cond_7c
    const/16 v3, 0x30

    move/from16 v0, v20

    if-lt v0, v3, :cond_8d

    const/16 v3, 0x39

    move/from16 v0, v20

    if-gt v0, v3, :cond_8d

    .line 601
    add-int/lit8 v8, v8, 0x1

    .line 602
    add-int/lit8 v10, v10, 0x1

    goto :goto_68

    .line 604
    :cond_8d
    add-int/lit8 v9, v9, 0x1

    .line 605
    add-int/lit8 v10, v10, 0x1

    goto :goto_68

    .line 608
    .end local v20           #c:C
    :cond_92
    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 628
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v23           #i:I
    :goto_a1
    const-string v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 629
    .local v25, passwordHistory:Ljava/lang/String;
    if-nez v25, :cond_b0

    .line 630
    new-instance v25, Ljava/lang/String;

    .end local v25           #passwordHistory:Ljava/lang/String;
    invoke-direct/range {v25 .. v25}, Ljava/lang/String;-><init>()V

    .line 632
    .restart local v25       #passwordHistory:Ljava/lang/String;
    :cond_b0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v26

    .line 633
    .local v26, passwordHistoryLength:I
    if-nez v26, :cond_11f

    .line 634
    const-string v25, ""

    .line 643
    :goto_b8
    const-string v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v21           #computedQuality:I
    .end local v24           #keyStore:Landroid/security/KeyStore;
    .end local v25           #passwordHistory:Ljava/lang/String;
    .end local v26           #passwordHistoryLength:I
    :goto_c1
    return-void

    .line 613
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v21       #computedQuality:I
    .restart local v24       #keyStore:Landroid/security/KeyStore;
    :cond_c2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d2} :catch_d3

    goto :goto_a1

    .line 653
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v21           #computedQuality:I
    .end local v24           #keyStore:Landroid/security/KeyStore;
    :catch_d3
    move-exception v27

    .line 655
    .local v27, re:Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to save lock password "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 619
    .end local v27           #re:Landroid/os/RemoteException;
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v21       #computedQuality:I
    .restart local v24       #keyStore:Landroid/security/KeyStore;
    :cond_ef
    :try_start_ef
    const-string v3, "lockscreen.password_type"

    const-wide/32 v11, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 620
    const-string v3, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 622
    const v12, 0x8000

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    goto :goto_a1

    .line 636
    .restart local v25       #passwordHistory:Ljava/lang/String;
    .restart local v26       #passwordHistoryLength:I
    :cond_11f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 639
    const/4 v3, 0x0

    move-object/from16 v0, v22

    array-length v4, v0

    mul-int v4, v4, v26

    add-int v4, v4, v26

    add-int/lit8 v4, v4, -0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_b8

    .line 647
    .end local v21           #computedQuality:I
    .end local v25           #passwordHistory:Ljava/lang/String;
    .end local v26           #passwordHistoryLength:I
    :cond_159
    invoke-virtual/range {v24 .. v24}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_162

    .line 648
    invoke-virtual/range {v24 .. v24}, Landroid/security/KeyStore;->reset()Z

    .line 650
    :cond_162
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_172
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_172} :catch_d3

    goto/16 :goto_c1
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 458
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .registers 15
    .parameter
    .parameter "isFallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v9

    .line 469
    .local v9, hash:[B
    :try_start_4
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v9, v2}, Lcom/android/internal/widget/ILockSettings;->setLockPattern([BI)V

    .line 470
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 471
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    .line 472
    .local v10, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_7e

    .line 473
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 474
    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 475
    if-nez p2, :cond_43

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 477
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 478
    const/high16 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 498
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #keyStore:Landroid/security/KeyStore;
    :goto_42
    return-void

    .line 481
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v10       #keyStore:Landroid/security/KeyStore;
    :cond_43
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x8000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 482
    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 484
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V

    .line 485
    const v1, 0x8000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_63} :catch_64

    goto :goto_42

    .line 495
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #keyStore:Landroid/security/KeyStore;
    :catch_64
    move-exception v11

    .line 496
    .local v11, re:Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock pattern "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 489
    .end local v11           #re:Landroid/os/RemoteException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v10       #keyStore:Landroid/security/KeyStore;
    :cond_7e
    :try_start_7e
    invoke-virtual {v10}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 490
    invoke-virtual {v10}, Landroid/security/KeyStore;->reset()Z

    .line 492
    :cond_87
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_92} :catch_64

    goto :goto_42
.end method

.method public savedPasswordExists()Z
    .registers 4

    .prologue
    .line 328
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 330
    :goto_c
    return v1

    .line 329
    :catch_d
    move-exception v0

    .line 330
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedPatternExists()Z
    .registers 4

    .prologue
    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 318
    :goto_c
    return v1

    .line 317
    :catch_d
    move-exception v0

    .line 318
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public setBiometricWeakLivelinessEnabled(Z)V
    .registers 9
    .parameter "enabled"

    .prologue
    .line 859
    const-string v4, "lock_biometric_weak_flags"

    const-wide/16 v5, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 861
    .local v0, currentFlag:J
    if-eqz p1, :cond_14

    .line 862
    const-wide/16 v4, 0x1

    or-long v2, v0, v4

    .line 866
    .local v2, newFlag:J
    :goto_e
    const-string v4, "lock_biometric_weak_flags"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 867
    return-void

    .line 864
    .end local v2           #newFlag:J
    :cond_14
    const-wide/16 v4, -0x2

    and-long v2, v0, v4

    .restart local v2       #newFlag:J
    goto :goto_e
.end method

.method public setCurrentUser(I)V
    .registers 4
    .parameter "userId"

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 220
    iput p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mCurrentUserId:I

    .line 224
    return-void

    .line 222
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system process can set the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 881
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 882
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .registers 5
    .parameter "disable"

    .prologue
    .line 419
    const-string v2, "lockscreen.disabled"

    if-eqz p1, :cond_a

    const-wide/16 v0, 0x1

    :goto_6
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 420
    return-void

    .line 419
    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 918
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 919
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 920
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .parameter "locked"

    .prologue
    .line 955
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 956
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1118
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1119
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 909
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 910
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 895
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 896
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V
    .registers 9
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    const/4 v4, 0x0

    .line 1067
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz p3, :cond_1c

    .line 1068
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1075
    const/4 v3, 0x2

    if-ne p2, v3, :cond_22

    .line 1077
    const v2, 0x10402fc

    .line 1078
    .local v2, textId:I
    const v1, 0x1080084

    .line 1079
    .local v1, phoneCallIcon:I
    invoke-virtual {p1, v1, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1085
    .end local v1           #phoneCallIcon:I
    :goto_18
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1086
    .end local v2           #textId:I
    :goto_1b
    return-void

    .line 1070
    :cond_1c
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1b

    .line 1081
    :cond_22
    const v2, 0x10402fb

    .line 1082
    .restart local v2       #textId:I
    const v0, 0x10802c7

    .line 1083
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_18
.end method

.method public usingBiometricWeak()Z
    .registers 5

    .prologue
    .line 682
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 684
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method
