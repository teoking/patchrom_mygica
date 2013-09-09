.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$2;,
        Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final VDBG:Z = false

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"


# instance fields
.field debugPortThread:Ljava/lang/Thread;

.field debugSocket:Ljava/net/ServerSocket;

.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .registers 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .registers 10
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 137
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_1b

    .line 138
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 141
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 147
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 148
    if-nez p4, :cond_74

    .line 149
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 150
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 154
    :cond_74
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .registers 4

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 809
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v1, "vm_sim_imsi_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_9

    .line 483
    const/4 v1, 0x0

    .line 501
    :cond_8
    :goto_8
    return v1

    .line 486
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_31

    .line 487
    const-string v2, "GSM"

    const-string v3, "MmiCode 0: rejectCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :try_start_1c
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_21
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_8

    .line 490
    :catch_22
    move-exception v0

    .line 491
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSM"

    const-string/jumbo v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_8

    .line 495
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_31
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_8

    .line 496
    const-string v2, "GSM"

    const-string v3, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_8
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 12
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 550
    .local v5, len:I
    const/4 v7, 0x2

    if-le v5, v7, :cond_a

    .line 551
    const/4 v6, 0x0

    .line 595
    :goto_9
    return v6

    .line 554
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 556
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v6, :cond_70

    .line 558
    const/4 v7, 0x1

    :try_start_11
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 559
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 560
    .local v1, callIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 563
    .local v3, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_51

    if-lt v1, v6, :cond_51

    const/4 v7, 0x7

    if-gt v1, v7, :cond_51

    .line 564
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MmiCode 2: separate call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_41
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_11 .. :try_end_41} :catch_42

    goto :goto_9

    .line 572
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_42
    move-exception v4

    .line 573
    .local v4, e:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSM"

    const-string/jumbo v8, "separate failed"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_9

    .line 568
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #callIndex:I
    .restart local v2       #ch:C
    .restart local v3       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_51
    :try_start_51
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "separate: invalid call index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_6f
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_51 .. :try_end_6f} :catch_42

    goto :goto_9

    .line 579
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_70
    :try_start_70
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_99

    .line 580
    const-string v7, "GSM"

    const-string v8, "MmiCode 2: accept ringing call"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_88
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_70 .. :try_end_88} :catch_89

    goto :goto_9

    .line 588
    :catch_89
    move-exception v4

    .line 589
    .restart local v4       #e:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSM"

    const-string/jumbo v8, "switch failed"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto/16 :goto_9

    .line 584
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_99
    :try_start_99
    const-string v7, "GSM"

    const-string v8, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_a5
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_99 .. :try_end_a5} :catch_89

    goto/16 :goto_9
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 11
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 506
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 508
    .local v4, len:I
    const/4 v6, 0x2

    if-le v4, v6, :cond_a

    .line 509
    const/4 v5, 0x0

    .line 543
    :cond_9
    :goto_9
    return v5

    .line 512
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 515
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v5, :cond_48

    .line 516
    const/4 v6, 0x1

    :try_start_11
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 517
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 519
    .local v1, callIndex:I
    if-lt v1, v5, :cond_9

    const/4 v6, 0x7

    if-gt v1, v6, :cond_9

    .line 520
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    :try_end_39
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_11 .. :try_end_39} :catch_3a

    goto :goto_9

    .line 537
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    :catch_3a
    move-exception v3

    .line 538
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "GSM"

    const-string v7, "hangup failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_9

    .line 526
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_48
    :try_start_48
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_5d

    .line 527
    const-string v6, "GSM"

    const-string v7, "MmiCode 1: hangup foreground"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_9

    .line 532
    :cond_5d
    const-string v6, "GSM"

    const-string v7, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_69
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_48 .. :try_end_69} :catch_3a

    goto :goto_9
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 5
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_9

    .line 638
    const/4 v0, 0x0

    .line 644
    :goto_8
    return v0

    .line 641
    :cond_9
    const-string v1, "GSM"

    const-string v2, "MmiCode 5: CCBS not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_8
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .registers 8
    .parameter "infos"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1407
    if-eqz p1, :cond_7

    array-length v4, p1

    if-nez v4, :cond_d

    .line 1410
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v4, v3, v2}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1420
    :cond_c
    :goto_c
    return-void

    .line 1412
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, s:I
    :goto_f
    if-ge v0, v1, :cond_c

    .line 1413
    aget-object v4, p1, v0

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_26

    .line 1414
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v3, :cond_22

    move v2, v3

    :cond_22
    invoke-virtual {v4, v3, v2}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    goto :goto_c

    .line 1412
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 7
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 618
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 620
    .local v1, len:I
    if-eq v1, v2, :cond_9

    .line 621
    const/4 v2, 0x0

    .line 632
    :goto_8
    return v2

    .line 624
    :cond_9
    const-string v3, "GSM"

    const-string v4, "MmiCode 4: explicit call transfer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :try_start_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V
    :try_end_13
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_8

    .line 627
    :catch_14
    move-exception v0

    .line 628
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "GSM"

    const-string/jumbo v4, "transfer failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_8
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 600
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_9

    .line 601
    const/4 v1, 0x0

    .line 612
    :goto_8
    return v1

    .line 604
    :cond_9
    const-string v2, "GSM"

    const-string v3, "MmiCode 3: merge calls"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :try_start_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V
    :try_end_13
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_8

    .line 607
    :catch_14
    move-exception v0

    .line 608
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSM"

    const-string v3, "conference failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_8
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter "ar"

    .prologue
    .line 1361
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    if-nez v3, :cond_f

    .line 1362
    const-string v3, "GSM"

    const-string/jumbo v4, "unexpected result from user object."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_e
    :goto_e
    return-void

    .line 1366
    :cond_f
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    .line 1370
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v3, :cond_2d

    .line 1371
    const-string v3, "GSM"

    const-string/jumbo v4, "sending original message to recipient"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1373
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1378
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1379
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1380
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "network_selection_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1381
    const-string/jumbo v3, "network_selection_name_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1384
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1385
    const-string v3, "GSM"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .registers 3
    .parameter "commandInterfaceCFAction"

    .prologue
    .line 900
    packed-switch p1, :pswitch_data_8

    .line 907
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 905
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 900
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .registers 3
    .parameter "commandInterfaceCFReason"

    .prologue
    .line 886
    packed-switch p1, :pswitch_data_8

    .line 895
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 893
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 886
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .registers 10
    .parameter "ussdMode"
    .parameter "ussdMessage"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1096
    if-ne p1, v2, :cond_31

    move v3, v2

    .line 1099
    .local v3, isUssdRequest:Z
    :goto_5
    if-eqz p1, :cond_33

    if-eq p1, v2, :cond_33

    .line 1106
    .local v2, isUssdError:Z
    :goto_9
    const/4 v0, 0x0

    .line 1107
    .local v0, found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, s:I
    :goto_11
    if-ge v1, v5, :cond_29

    .line 1108
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1109
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 1114
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_29
    if-eqz v0, :cond_3c

    .line 1117
    if-eqz v2, :cond_38

    .line 1118
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 1135
    :cond_30
    :goto_30
    return-void

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v1           #i:I
    .end local v2           #isUssdError:Z
    .end local v3           #isUssdRequest:Z
    .end local v5           #s:I
    :cond_31
    move v3, v6

    .line 1096
    goto :goto_5

    .restart local v3       #isUssdRequest:Z
    :cond_33
    move v2, v6

    .line 1099
    goto :goto_9

    .line 1107
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1       #i:I
    .restart local v2       #isUssdError:Z
    .restart local v5       #s:I
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1120
    :cond_38
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_30

    .line 1127
    :cond_3c
    if-nez v2, :cond_30

    if-eqz p2, :cond_30

    .line 1129
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v4

    .line 1132
    .local v4, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_30
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .registers 5
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1087
    return-void
.end method

.method private processIccRecordEvents(I)V
    .registers 2
    .parameter "eventCode"

    .prologue
    .line 1325
    packed-switch p1, :pswitch_data_c

    .line 1333
    :goto_3
    return-void

    .line 1327
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_3

    .line 1330
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto :goto_3

    .line 1325
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method private registerForSimRecordEvents()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1483
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1484
    return-void
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .registers 5
    .parameter "imsi"

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 814
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 815
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "vm_sim_imsi_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 816
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 817
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .registers 5
    .parameter "number"

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 791
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 792
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "vm_number_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 793
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method private unregisterForSimRecordEvents()V
    .registers 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 1489
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1491
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    .line 429
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 5
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1450
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1452
    return-void
.end method

.method public canConference()Z
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 455
    return-void
.end method

.method public conference()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    .line 451
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .registers 10
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 705
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, newDialString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 728
    :goto_b
    return-object v3

    .line 713
    :cond_c
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, networkPortion:Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 715
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    if-nez v0, :cond_3b

    .line 719
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_b

    .line 720
    :cond_3b
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 721
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_b

    .line 723
    :cond_4e
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 725
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    goto :goto_b
.end method

.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    .line 1054
    return-void
.end method

.method public dispose()V
    .registers 3

    .prologue
    .line 203
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_3
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 208
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->dispose()V

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1495
    const-string v0, "GSMPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMMIs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimPhoneBookIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimSmsIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    return-void
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    .line 1050
    return-void
.end method

.method public explicitCallTransfer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 463
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 240
    const-string v0, "GSM"

    const-string v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 975
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .registers 7
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 916
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 917
    const-string v1, "GSM"

    const-string/jumbo v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    if-nez p1, :cond_1e

    .line 920
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 924
    .local v0, resp:Landroid/os/Message;
    :goto_16
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 926
    .end local v0           #resp:Landroid/os/Message;
    :cond_1d
    return-void

    .line 922
    :cond_1e
    move-object v0, p2

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_16
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .registers 4
    .parameter "onComplete"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 966
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1460
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1462
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .registers 4

    .prologue
    .line 330
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 332
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_1b

    .line 333
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_26

    .line 348
    :cond_1b
    :goto_1b
    return-object v0

    .line 335
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 336
    goto :goto_1b

    .line 339
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 340
    goto :goto_1b

    .line 343
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_1b

    .line 333
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1042
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 5
    .parameter "apnType"

    .prologue
    .line 283
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 285
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v1, :cond_9

    .line 289
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 326
    :goto_8
    return-object v0

    .line 290
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-eqz v1, :cond_14

    .line 294
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_8

    .line 295
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 300
    :cond_24
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_8

    .line 302
    :cond_27
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    goto :goto_8

    .line 305
    :pswitch_39
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 306
    goto :goto_8

    .line 310
    :pswitch_3c
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_4f

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 312
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_8

    .line 314
    :cond_4f
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 316
    goto :goto_8

    .line 321
    :pswitch_52
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_8

    .line 302
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_39
        :pswitch_39
        :pswitch_3c
        :pswitch_3c
        :pswitch_52
        :pswitch_52
        :pswitch_52
    .end packed-switch
.end method

.method public getDataRoamingEnabled()Z
    .registers 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .registers 3

    .prologue
    .line 845
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v0, "0"

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 2

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 850
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v0, "0"

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .registers 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 1026
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 954
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    const-string v0, "GSM"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .registers 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    .line 822
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    .line 825
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    .end local v0           #ret:Ljava/lang/String;
    :cond_1b
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 799
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 801
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 802
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v2, "vm_number_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1c
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 684
    :goto_8
    return v1

    .line 653
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v1, v2

    .line 654
    goto :goto_8

    .line 657
    :cond_11
    const/4 v1, 0x0

    .line 658
    .local v1, result:Z
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 659
    .local v0, ch:C
    packed-switch v0, :pswitch_data_38

    goto :goto_8

    .line 661
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 663
    goto :goto_8

    .line 665
    :pswitch_1f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 667
    goto :goto_8

    .line 669
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 670
    goto :goto_8

    .line 672
    :pswitch_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 673
    goto :goto_8

    .line 675
    :pswitch_2e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 676
    goto :goto_8

    .line 678
    :pswitch_33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 679
    goto :goto_8

    .line 659
    :pswitch_data_38
    .packed-switch 0x30
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 1153
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_1b6

    .line 1320
    :pswitch_8
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 1322
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 1155
    :pswitch_c
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1158
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0x9

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 1159
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    goto :goto_b

    .line 1167
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    goto :goto_b

    .line 1171
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 1175
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v3

    .line 1176
    .local v3, imsi:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 1177
    .local v4, imsiFromSIM:Ljava/lang/String;
    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1178
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1179
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    goto :goto_b

    .line 1185
    .end local v3           #imsi:Ljava/lang/String;
    .end local v4           #imsiFromSIM:Ljava/lang/String;
    :pswitch_4d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1187
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_b

    .line 1191
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Baseband version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string v10, "gsm.version.baseband"

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1196
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1198
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_b

    .line 1202
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    goto :goto_b

    .line 1206
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1208
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_b

    .line 1212
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_b

    .line 1216
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1218
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    move-object v8, v9

    check-cast v8, [Ljava/lang/String;

    .line 1220
    .local v8, ussdResult:[Ljava/lang/String;
    array-length v9, v8

    if-le v9, v10, :cond_b

    .line 1222
    const/4 v9, 0x0

    :try_start_a7
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_a7 .. :try_end_b3} :catch_b5

    goto/16 :goto_b

    .line 1223
    :catch_b5
    move-exception v1

    .line 1224
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v9, "GSM"

    const-string v10, "error parsing USSD"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 1235
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v8           #ussdResult:[Ljava/lang/String;
    :pswitch_bf
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, s:I
    :goto_c6
    if-ge v2, v7, :cond_b

    .line 1236
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v9

    if-eqz v9, :cond_e1

    .line 1237
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 1235
    :cond_e1
    add-int/lit8 v2, v2, 0x1

    goto :goto_c6

    .line 1243
    .end local v2           #i:I
    .end local v7           #s:I
    :pswitch_e4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1244
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 1245
    .local v5, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v9, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_b

    .line 1249
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v5           #not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :pswitch_f3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1250
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v11, :cond_105

    .line 1251
    iget-object v11, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget v12, p1, Landroid/os/Message;->arg1:I

    if-ne v12, v10, :cond_102

    move v9, v10

    :cond_102
    invoke-virtual {v11, v10, v9}, Lcom/android/internal/telephony/IccRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 1253
    :cond_105
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    .line 1254
    .local v6, onComplete:Landroid/os/Message;
    if-eqz v6, :cond_b

    .line 1255
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v9, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1256
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b

    .line 1261
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v6           #onComplete:Landroid/os/Message;
    :pswitch_117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1262
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-class v9, Lcom/android/internal/telephony/IccVmNotSupportedException;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12c

    .line 1263
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1264
    iput-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1266
    :cond_12c
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    .line 1267
    .restart local v6       #onComplete:Landroid/os/Message;
    if-eqz v6, :cond_b

    .line 1268
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v9, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1269
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b

    .line 1275
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v6           #onComplete:Landroid/os/Message;
    :pswitch_13e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1276
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_14f

    .line 1277
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v9, [Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1279
    :cond_14f
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    .line 1280
    .restart local v6       #onComplete:Landroid/os/Message;
    if-eqz v6, :cond_b

    .line 1281
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v9, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1282
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b

    .line 1287
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v6           #onComplete:Landroid/os/Message;
    :pswitch_161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1288
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v10, v9}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_b

    .line 1292
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_170
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1293
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Landroid/os/Message;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_b

    .line 1297
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_17d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1298
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->processIccRecordEvents(I)V

    goto/16 :goto_b

    .line 1304
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_18e
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto/16 :goto_b

    .line 1308
    :pswitch_197
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1309
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_1a4

    .line 1310
    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 1312
    :cond_1a4
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    .line 1313
    .restart local v6       #onComplete:Landroid/os/Message;
    if-eqz v6, :cond_b

    .line 1314
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v9, v10}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1315
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_b

    .line 1153
    :pswitch_data_1b6
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e4
        :pswitch_31
        :pswitch_8
        :pswitch_b
        :pswitch_4d
        :pswitch_98
        :pswitch_bf
        :pswitch_79
        :pswitch_88
        :pswitch_8
        :pswitch_f3
        :pswitch_13e
        :pswitch_8
        :pswitch_8
        :pswitch_18e
        :pswitch_18e
        :pswitch_197
        :pswitch_2d
        :pswitch_117
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_170
        :pswitch_161
        :pswitch_17d
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    .line 733
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 735
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 736
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 738
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 739
    const/4 v1, 0x1

    .line 742
    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method protected isCfEnable(I)Z
    .registers 4
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 912
    if-eq p1, v0, :cond_6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isCspPlmnEnabled()Z
    .registers 2

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method isInCall()Z
    .registers 5

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 689
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 690
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 692
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_2a
    const/4 v3, 0x1

    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method public notifyCallForwardingIndicator()V
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 404
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "cn"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method notifyLocationChanged()V
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 394
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 371
    return-void
.end method

.method notifyPhoneStateChanged()V
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 356
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .registers 1

    .prologue
    .line 364
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 365
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2
    .parameter "ss"

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 389
    return-void
.end method

.method notifySignalStrength()V
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 399
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .registers 3
    .parameter "code"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method notifyUnknownConnection()V
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .registers 5
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1077
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1080
    :cond_19
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 419
    :cond_14
    return-void
.end method

.method public rejectCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 434
    return-void
.end method

.method public removeReferences()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 229
    const-string v0, "GSM"

    const-string/jumbo v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 231
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 232
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 233
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 234
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 235
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 236
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 237
    return-void
.end method

.method public saveClirSetting(I)V
    .registers 6
    .parameter "commandInterfaceCLIRMode"

    .prologue
    .line 1396
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1397
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1398
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "clir_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1402
    const-string v2, "GSM"

    const-string v3, "failed to commit CLIR preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_1e
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .registers 7
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1012
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1013
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1014
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1015
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1018
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1020
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 1021
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .registers 4
    .parameter "dtmfString"

    .prologue
    .line 781
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return-void
.end method

.method public sendDtmf(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 754
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_26

    .line 755
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_25
    :goto_25
    return-void

    .line 758
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_25

    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_25
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .registers 6
    .parameter "ussdMessge"

    .prologue
    const/4 v3, 0x0

    .line 746
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 747
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 749
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .registers 13
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 933
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 937
    if-nez p2, :cond_29

    .line 938
    const/16 v2, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v3

    :goto_19
    invoke-virtual {p0, v2, v0, v1, p5}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 943
    .local v6, resp:Landroid/os/Message;
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 950
    .end local v6           #resp:Landroid/os/Message;
    :cond_26
    return-void

    :cond_27
    move v0, v1

    .line 938
    goto :goto_19

    .line 941
    :cond_29
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1d
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .registers 5
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 970
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .registers 5
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1470
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1472
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 1062
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 873
    return-void
.end method

.method public setMute(Z)V
    .registers 3
    .parameter "muted"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 1034
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 994
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 995
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 996
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 997
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1000
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1002
    .local v0, msg:Landroid/os/Message;
    const-string v2, "GSM"

    const-string/jumbo v3, "wrapping and sending message to connect automatically"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1005
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1029
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1030
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .registers 6
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 960
    return-void
.end method

.method public setRadioPower(Z)V
    .registers 3
    .parameter "power"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .line 787
    return-void
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "property"
    .parameter "value"

    .prologue
    .line 412
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v2, 0x0

    .line 880
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 881
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v2, v2, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 882
    .local v0, resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/telephony/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 883
    return-void
.end method

.method public startDtmf(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 766
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_26

    .line 767
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_25
    return-void

    .line 770
    :cond_26
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_25
.end method

.method public stopDtmf()V
    .registers 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 777
    return-void
.end method

.method public switchHoldingAndActive()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 439
    return-void
.end method

.method protected syncClirSetting()V
    .registers 5

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1142
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "clir_key"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1143
    .local v0, clirSetting:I
    if-ltz v0, :cond_17

    .line 1144
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1146
    :cond_17
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .registers 5
    .parameter "h"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 424
    :cond_14
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .registers 6

    .prologue
    .line 1341
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v3, :cond_30

    .line 1343
    :try_start_4
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1344
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1345
    .local v1, map:Landroid/content/ContentValues;
    const-string/jumbo v3, "numeric"

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_26
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_26} :catch_28

    .line 1347
    const/4 v3, 0x1

    .line 1352
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_27
    return v3

    .line 1348
    :catch_28
    move-exception v0

    .line 1349
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "GSM"

    const-string v4, "Can\'t store current operator"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    .end local v0           #e:Landroid/database/SQLException;
    :cond_30
    const/4 v3, 0x0

    goto :goto_27
.end method

.method public updateServiceLocation()V
    .registers 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableSingleLocationUpdate()V

    .line 1046
    return-void
.end method
