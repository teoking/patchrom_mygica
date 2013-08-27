.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RcDisplayDeathHandler;,
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$RemotePlaybackState;,
        Landroid/media/AudioService$RcClientDeathHandler;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;
    }
.end annotation


# static fields
.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x7

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0xb

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x8

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x5

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xf

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0xa

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x6

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x12

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x13

.field private static final MSG_RCDISPLAY_CLEAR:I = 0xc

.field private static final MSG_RCDISPLAY_UPDATE:I = 0xd

.field private static final MSG_REEVALUATE_REMOTE:I = 0x11

.field private static final MSG_REPORT_NEW_ROUTES:I = 0x10

.field private static final MSG_SET_A2DP_CONNECTION_STATE:I = 0x15

.field private static final MSG_SET_ALL_VOLUMES:I = 0xe

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_USE:I = 0x9

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x14

.field private static final NOTIFICATION_VOLUME_DELAY_MS:I = 0x1388

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_CURRENT:I = 0x1

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PERSIST_LAST_AUDIBLE:I = 0x2

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static SOUND_EFFECT_VOLUME_DB:I = 0x0

.field public static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;

.field private static sLastRccId:I


# instance fields
.field private final MAX_STREAM_VOLUME:[I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_NAMES:[Ljava/lang/String;

.field private final STREAM_VOLUME_ALIAS:[I

.field private final STREAM_VOLUME_ALIAS_NON_VOICE:[I

.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompleted:Z

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private mDeviceOrientation:I

.field private mDockAddress:Ljava/lang/String;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mHasRemotePlayback:Z

.field private final mHasVibrator:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMasterVolumeRamp:[I

.field private mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private mMediaServerOk:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrevVolDirection:I

.field private final mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private mVoiceCapable:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private mVolumeControlStream:I

.field private mVolumePanel:Landroid/view/VolumePanel;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 189
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Effect_Tick.ogg"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "KeypressStandard.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KeypressSpacebar.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeypressDelete.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeypressReturn.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 3638
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 3640
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    .line 4268
    sput v3, Landroid/media/AudioService;->sLastRccId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v11, 0x0

    .line 424
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 200
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_268

    aput-object v1, v0, v11

    new-array v1, v4, [I

    fill-array-data v1, :array_270

    aput-object v1, v0, v12

    new-array v1, v4, [I

    fill-array-data v1, :array_278

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_280

    aput-object v3, v0, v1

    const/4 v1, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_288

    aput-object v3, v0, v1

    const/4 v1, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_290

    aput-object v3, v0, v1

    const/4 v1, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_298

    aput-object v3, v0, v1

    const/4 v1, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_2a0

    aput-object v3, v0, v1

    const/16 v1, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_2a8

    aput-object v3, v0, v1

    iput-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 213
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2b0

    iput-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 233
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2c8

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 245
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2e0

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    .line 260
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "STREAM_VOICE_CALL"

    aput-object v1, v0, v11

    const-string v1, "STREAM_SYSTEM"

    aput-object v1, v0, v12

    const-string v1, "STREAM_RING"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v3, "STREAM_MUSIC"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "STREAM_ALARM"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "STREAM_NOTIFICATION"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "STREAM_BLUETOOTH_SCO"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "STREAM_SYSTEM_ENFORCED"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "STREAM_DTMF"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "STREAM_TTS"

    aput-object v3, v0, v1

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 273
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 324
    new-instance v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    iput-boolean v11, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 382
    iput-object v5, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 389
    iput v11, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 394
    iput v2, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 395
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 399
    iput-object v5, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 403
    iput v11, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 407
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 410
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 411
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 1993
    new-instance v0, Landroid/media/AudioService$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3300
    const/16 v0, 0x38c

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 3642
    new-instance v0, Landroid/media/AudioService$3;

    invoke-direct {v0, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3718
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 4040
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mVoiceEventLock:Ljava/lang/Object;

    .line 4201
    new-instance v0, Landroid/media/AudioService$4;

    invoke-direct {v0, p0}, Landroid/media/AudioService$4;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 4216
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    .line 4222
    iput-object v5, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4236
    iput v11, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4381
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 4387
    iput-object v5, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 4909
    iput v2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 4910
    iput v2, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 425
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 427
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    .line 430
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 431
    .local v8, pm:Landroid/os/PowerManager;
    const-string v0, "handleMediaEvent"

    invoke-virtual {v8, v12, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 433
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    .line 434
    .local v10, vibrator:Landroid/os/Vibrator;
    if-nez v10, :cond_262

    move v0, v11

    :goto_172
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 437
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v1, "ro.config.vc_call_vol_steps"

    iget-object v3, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v11

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v11

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I

    .line 444
    new-instance v0, Landroid/view/VolumePanel;

    invoke-direct {v0, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 445
    iput v11, p0, Landroid/media/AudioService;->mMode:I

    .line 446
    iput v11, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 447
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 448
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 449
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 450
    invoke-direct {p0, v11}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 451
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 453
    iput-boolean v12, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 457
    iput v11, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 458
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0, v11}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 460
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 463
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 465
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v0, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v0, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 476
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 482
    :cond_201
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 486
    .local v7, pkgFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 491
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 493
    .local v9, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v0, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v9, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 497
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    .line 502
    new-instance v0, Landroid/media/AudioService$RemotePlaybackState;

    iget-object v1, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v3, 0x3

    aget v3, v1, v3

    iget-object v1, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v4, 0x3

    aget v4, v1, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$RemotePlaybackState;-><init>(Landroid/media/AudioService;IIILandroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    .line 504
    iput-boolean v11, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    .line 505
    iput-boolean v11, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 506
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    .line 507
    return-void

    .line 434
    .end local v6           #intentFilter:Landroid/content/IntentFilter;
    .end local v7           #pkgFilter:Landroid/content/IntentFilter;
    .end local v9           #tmgr:Landroid/telephony/TelephonyManager;
    :cond_262
    invoke-virtual {v10}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_172

    .line 200
    :array_268
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_270
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_278
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_280
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_288
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_290
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_298
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2a0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2a8
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 213
    :array_2b0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 233
    :array_2c8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 245
    :array_2e0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/AudioService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1402(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 98
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2300(Landroid/media/AudioService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2402(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;II)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$3300(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;III)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4400()I
    .registers 1

    .prologue
    .line 98
    sget v0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I

    return v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)[[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$4600()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/media/AudioService;)Landroid/media/AudioSystem$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$5300(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$5400(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$5700(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/media/AudioService;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$5800(Landroid/media/AudioService;Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$6000(Landroid/media/AudioService;IILjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$6300(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/media/AudioService;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$6400(Landroid/media/AudioService;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onNewPlaybackInfoForRcc(III)V

    return-void
.end method

.method static synthetic access$6500(Landroid/media/AudioService;ILandroid/media/IRemoteVolumeObserver;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$6702(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$6800(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7002(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$7102(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$7202(Landroid/media/AudioService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    return p1
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/media/AudioService;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7600()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7702(Landroid/media/AudioService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$7800()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/AudioService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/media/AudioService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    return-void
.end method

.method static synthetic access$8104()I
    .registers 1

    .prologue
    .line 98
    sget v0, Landroid/media/AudioService;->sLastRccId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/AudioService;->sLastRccId:I

    return v0
.end method

.method static synthetic access$8300(Landroid/media/AudioService;)Ljava/util/Stack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$8402(Landroid/media/AudioService;Landroid/media/IRemoteControlDisplay;)Landroid/media/IRemoteControlDisplay;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object p1
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$902(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method private adjustRemoteVolume(III)V
    .registers 8
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 5190
    const/4 v0, -0x1

    .line 5191
    .local v0, rccId:I
    const/4 v1, 0x0

    .line 5192
    .local v1, volFixed:Z
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3

    .line 5193
    :try_start_5
    iget-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    if-nez v2, :cond_b

    .line 5195
    monitor-exit v3

    .line 5210
    :goto_a
    return-void

    .line 5197
    :cond_b
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5198
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_22

    const/4 v1, 0x1

    .line 5200
    :goto_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_24

    .line 5204
    if-nez v1, :cond_1c

    .line 5205
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->sendVolumeUpdateToRemote(II)V

    .line 5209
    :cond_1c
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2, p1, p3}, Landroid/view/VolumePanel;->postRemoteVolumeChanged(II)V

    goto :goto_a

    .line 5198
    :cond_22
    const/4 v1, 0x0

    goto :goto_16

    .line 5200
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private broadcastMasterMuteStatus(Z)V
    .registers 6
    .parameter "muted"

    .prologue
    .line 966
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 968
    const/high16 v3, 0x2800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 970
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 971
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 972
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    return-void
.end method

.method private broadcastRingerMode(I)V
    .registers 6
    .parameter "ringerMode"

    .prologue
    .line 2275
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2276
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2277
    const/high16 v3, 0x2800

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2280
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2281
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2282
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 1983
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_1e

    .line 1984
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1985
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1986
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1988
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1989
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 1991
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .parameter "vibrateType"

    .prologue
    .line 2286
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2288
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2289
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2290
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2292
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private canReassignAudioFocus()Z
    .registers 3

    .prologue
    .line 3813
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3814
    const/4 v0, 0x0

    .line 3816
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private cancelA2dpDeviceTimeout()V
    .registers 3

    .prologue
    .line 3209
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 3210
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .registers 6

    .prologue
    .line 530
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 531
    .local v0, numStreamTypes:I
    const/4 v1, 0x0

    .local v1, streamType:I
    :goto_5
    if-ge v1, v0, :cond_41

    .line 532
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_2d

    .line 533
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 536
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 541
    :cond_2d
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-nez v2, :cond_3e

    .line 542
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 531
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 545
    :cond_41
    return-void
.end method

.method private checkForRingerModeChange(III)Z
    .registers 9
    .parameter "oldIndex"
    .parameter "direction"
    .parameter "step"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 2098
    const/4 v0, 0x1

    .line 2099
    .local v0, adjustVolumeIndex:Z
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 2101
    .local v1, ringerMode:I
    packed-switch v1, :pswitch_data_62

    .line 2147
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_22
    :goto_22
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 2153
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 2155
    return v0

    .line 2103
    :pswitch_28
    if-ne p2, v3, :cond_22

    .line 2104
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_36

    .line 2110
    if-gt p3, p1, :cond_22

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_22

    .line 2111
    const/4 v1, 0x1

    goto :goto_22

    .line 2115
    :cond_36
    if-ge p1, p3, :cond_22

    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_22

    .line 2116
    const/4 v1, 0x0

    goto :goto_22

    .line 2122
    :pswitch_3e
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_4a

    .line 2123
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 2127
    :cond_4a
    if-ne p2, v3, :cond_53

    .line 2128
    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_51

    .line 2129
    const/4 v1, 0x0

    .line 2134
    :cond_51
    :goto_51
    const/4 v0, 0x0

    .line 2135
    goto :goto_22

    .line 2131
    :cond_53
    if-ne p2, v4, :cond_51

    .line 2132
    const/4 v1, 0x2

    goto :goto_51

    .line 2137
    :pswitch_57
    if-ne p2, v4, :cond_5e

    .line 2138
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_60

    .line 2139
    const/4 v1, 0x1

    .line 2144
    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    .line 2145
    goto :goto_22

    .line 2141
    :cond_60
    const/4 v1, 0x2

    goto :goto_5e

    .line 2101
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_57
        :pswitch_3e
        :pswitch_28
    .end packed-switch
.end method

.method private checkScoAudioState()V
    .registers 3

    .prologue
    .line 1891
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    .line 1895
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 1897
    :cond_1b
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .registers 9
    .parameter "device"
    .parameter "state"

    .prologue
    .line 3306
    const/4 v0, 0x0

    .line 3307
    .local v0, delay:I
    if-nez p2, :cond_31

    iget v4, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_31

    .line 3308
    const/4 v2, 0x0

    .line 3309
    .local v2, devices:I
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3310
    .local v1, dev:I
    iget v4, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_13

    .line 3311
    or-int/2addr v2, v1

    goto :goto_13

    .line 3314
    .end local v1           #dev:I
    :cond_2a
    if-ne v2, p1, :cond_31

    .line 3315
    const/16 v0, 0x3e8

    .line 3316
    invoke-direct {p0}, Landroid/media/AudioService;->sendBecomingNoisyIntent()V

    .line 3320
    .end local v2           #devices:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_31
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_45

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3322
    :cond_45
    const/16 v0, 0x3e8

    .line 3324
    :cond_47
    return v0
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .registers 4
    .parameter "infoChangedFlags"

    .prologue
    .line 4720
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4721
    :cond_10
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 4741
    :goto_13
    return-void

    .line 4725
    :cond_14
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4a

    .line 4729
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_13

    .line 4734
    :cond_4a
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget v0, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    if-eq v1, v0, :cond_64

    .line 4735
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_13

    .line 4740
    :cond_64
    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_13
.end method

.method private checkUpdateRemoteStateIfActive(I)Z
    .registers 9
    .parameter "streamType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5143
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5144
    :try_start_5
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5145
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 5146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5147
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    if-ne v5, v2, :cond_b

    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-static {v5}, Landroid/media/AudioService;->isPlaystateActive(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    if-ne v5, p1, :cond_b

    .line 5152
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_4b

    .line 5153
    :try_start_2a
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5154
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 5155
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 5156
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v6, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    iput v6, v5, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 5157
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 5158
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_48

    .line 5159
    :try_start_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4b

    .line 5166
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :goto_47
    return v2

    .line 5158
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v2

    .line 5162
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_4b
    move-exception v2

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_4e
    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    .line 5163
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4

    .line 5164
    const/4 v2, 0x0

    :try_start_53
    iput-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 5165
    monitor-exit v4

    move v2, v3

    .line 5166
    goto :goto_47

    .line 5165
    :catchall_58
    move-exception v2

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_58

    throw v2
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .registers 4

    .prologue
    .line 4672
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4673
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4674
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_15

    .line 4676
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4677
    return-void

    .line 4674
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private createAudioSystemThread()V
    .registers 2

    .prologue
    .line 510
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 511
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 512
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 513
    return-void
.end method

.method private createStreamStates()V
    .registers 7

    .prologue
    .line 548
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 549
    .local v1, numStreamTypes:I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 551
    .local v2, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_1e

    .line 552
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 555
    :cond_1e
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 556
    return-void
.end method

.method private disconnectBluetoothSco(I)V
    .registers 10
    .parameter "exceptPid"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 1952
    iget-object v7, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1953
    :try_start_5
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 1954
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_41

    .line 1956
    :cond_10
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2e

    .line 1957
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_30

    .line 1958
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1960
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1971
    :cond_2e
    :goto_2e
    monitor-exit v7

    .line 1972
    return-void

    .line 1963
    :cond_30
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_2e

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1965
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_2e

    .line 1971
    :catchall_3e
    move-exception v0

    monitor-exit v7
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_3e

    throw v0

    .line 1969
    :cond_41
    const/4 v0, 0x1

    :try_start_42
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3e

    goto :goto_2e
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 15
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/16 v2, 0x7bc

    const/4 v1, 0x0

    .line 4005
    if-eqz p2, :cond_a

    .line 4006
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4008
    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4009
    .local v3, keyIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4010
    iget-object v11, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v11

    .line 4011
    :try_start_19
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_5c

    move-result v0

    if-nez v0, :cond_5f

    .line 4014
    :try_start_21
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_37

    :goto_2f
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_5c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_21 .. :try_end_35} :catch_39

    .line 4030
    :goto_35
    :try_start_35
    monitor-exit v11

    .line 4031
    return-void

    .line 4014
    :cond_37
    const/4 v2, 0x0

    goto :goto_2f

    .line 4017
    :catch_39
    move-exception v10

    .line 4018
    .local v10, e:Landroid/app/PendingIntent$CanceledException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending pending intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    invoke-virtual {v10}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_35

    .line 4030
    .end local v10           #e:Landroid/app/PendingIntent$CanceledException;
    :catchall_5c
    move-exception v0

    monitor-exit v11
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_5c

    throw v0

    .line 4024
    :cond_5f
    if-eqz p2, :cond_68

    .line 4025
    :try_start_61
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v1, 0x7bc

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4027
    :cond_68
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_75
    .catchall {:try_start_61 .. :try_end_75} :catchall_5c

    goto :goto_35
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .registers 11
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/4 v2, 0x0

    .line 3986
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3987
    .local v1, keyIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3988
    iget-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3989
    if-eqz p2, :cond_24

    .line 3990
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3991
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3993
    :cond_24
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/AudioService;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, -0x1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3995
    return-void
.end method

.method private doSetMasterVolume(FI)V
    .registers 12
    .parameter "volume"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 1082
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1083
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v8

    .line 1084
    .local v8, oldVolume:I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1086
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v7

    .line 1087
    .local v7, newVolume:I
    if-eq v7, v8, :cond_25

    .line 1089
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1093
    :cond_25
    invoke-direct {p0, p2, v8, v7}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    .line 1095
    .end local v7           #newVolume:I
    .end local v8           #oldVolume:I
    :cond_28
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 3725
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3726
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3727
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3728
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 3729
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3730
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 3734
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_57
    move-exception v2

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_57

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_5a
    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    .line 3735
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 4415
    const-string v2, "\nRemote Control Client stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4416
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4417
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4418
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 4419
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4420
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volMax: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volObs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 4430
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_87
    move-exception v2

    monitor-exit v3
    :try_end_89
    .catchall {:try_start_8 .. :try_end_89} :catchall_87

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_8a
    :try_start_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_87

    .line 4431
    iget-object v3, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v3

    .line 4432
    :try_start_8e
    const-string v2, "\nRemote Volume State:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  has remote: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  is remote active: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  rccId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_131

    const-string v2, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_f0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume steps: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v4, v4, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4441
    monitor-exit v3

    .line 4442
    return-void

    .line 4436
    :cond_131
    const-string v2, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_f0

    .line 4441
    :catchall_134
    move-exception v2

    monitor-exit v3
    :try_end_136
    .catchall {:try_start_8e .. :try_end_136} :catchall_134

    throw v2
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "pw"

    .prologue
    .line 4394
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4395
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4396
    :try_start_8
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4397
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 4398
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4399
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 4406
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_6f
    move-exception v2

    monitor-exit v3
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_6f

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_72
    :try_start_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_6f

    .line 4407
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .registers 6
    .parameter "pw"

    .prologue
    .line 559
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 561
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_3b

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 564
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 566
    :cond_3b
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .parameter "direction"

    .prologue
    .line 2171
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    if-le p1, v0, :cond_1f

    .line 2172
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2174
    :cond_1f
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .registers 5
    .parameter "ringerMode"

    .prologue
    .line 1136
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :cond_1f
    return-void
.end method

.method private ensureValidSteps(I)V
    .registers 5
    .parameter "steps"

    .prologue
    .line 2177
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_20

    .line 2178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2180
    :cond_20
    return-void
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .parameter "streamType"

    .prologue
    .line 2183
    if-ltz p1, :cond_7

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 2184
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2186
    :cond_20
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    .line 3956
    invoke-static {p1}, Landroid/media/AudioService;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3957
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    :goto_1f
    return-void

    .line 3961
    :cond_20
    sget-object v1, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3962
    :try_start_23
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3b

    .line 3963
    :try_start_26
    iget-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    if-nez v0, :cond_35

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3e

    .line 3965
    :cond_35
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 3966
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_4e

    :try_start_39
    monitor-exit v1

    goto :goto_1f

    .line 3969
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3b

    throw v0

    .line 3968
    :cond_3e
    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_4e

    .line 3969
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3b

    .line 3971
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioService;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3972
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1f

    .line 3968
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_3b

    .line 3974
    :cond_51
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1f
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 7
    .parameter "keyEvent"
    .parameter "needWakeLock"

    .prologue
    const/4 v2, 0x1

    .line 4056
    const/4 v1, 0x1

    .line 4057
    .local v1, voiceButtonAction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4058
    .local v0, keyAction:I
    iget-object v3, p0, Landroid/media/AudioService;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4059
    if-nez v0, :cond_31

    .line 4060
    :try_start_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1c

    .line 4062
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    .line 4063
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    .line 4079
    :cond_17
    :goto_17
    monitor-exit v3

    .line 4082
    packed-switch v1, :pswitch_data_52

    .line 4096
    :goto_1b
    :pswitch_1b
    return-void

    .line 4064
    :cond_1c
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    if-nez v2, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_17

    .line 4067
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    .line 4068
    const/4 v1, 0x2

    goto :goto_17

    .line 4070
    :cond_31
    if-ne v0, v2, :cond_17

    .line 4071
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    if-eqz v2, :cond_17

    .line 4073
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonDown:Z

    .line 4074
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceButtonHandled:Z

    if-nez v2, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_17

    .line 4075
    const/4 v1, 0x3

    goto :goto_17

    .line 4079
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v2

    .line 4089
    :pswitch_49
    invoke-direct {p0, p2}, Landroid/media/AudioService;->startVoiceBasedInteractions(Z)V

    goto :goto_1b

    .line 4093
    :pswitch_4d
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1b

    .line 4082
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_49
        :pswitch_4d
    .end packed-switch
.end method

.method private findVolumeDelta(II)I
    .registers 9
    .parameter "direction"
    .parameter "volume"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, delta:I
    if-ne p1, v5, :cond_26

    .line 900
    const/16 v4, 0x64

    if-ne p2, v4, :cond_a

    .line 929
    :cond_9
    :goto_9
    return v3

    .line 904
    :cond_a
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 907
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_13
    if-le v1, v5, :cond_21

    .line 908
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_23

    .line 909
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1           #i:I
    :cond_21
    :goto_21
    move v3, v0

    .line 929
    goto :goto_9

    .line 907
    .restart local v1       #i:I
    :cond_23
    add-int/lit8 v1, v1, -0x2

    goto :goto_13

    .line 913
    .end local v1           #i:I
    :cond_26
    const/4 v4, -0x1

    if-ne p1, v4, :cond_21

    .line 914
    if-eqz p2, :cond_9

    .line 917
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v2, v3

    .line 919
    .local v2, length:I
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 922
    const/4 v1, 0x2

    .restart local v1       #i:I
    :goto_36
    if-ge v1, v2, :cond_21

    .line 923
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_46

    .line 924
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 925
    goto :goto_21

    .line 922
    :cond_46
    add-int/lit8 v1, v1, 0x2

    goto :goto_36
.end method

.method private getActiveStreamType(I)I
    .registers 8
    .parameter "suggestedStreamType"

    .prologue
    const/4 v3, 0x2

    const/16 v1, -0xc8

    const/high16 v5, -0x8000

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 2203
    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_37

    .line 2204
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2205
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v2, :cond_19

    .line 2208
    const/4 p1, 0x6

    .line 2268
    .end local p1
    :cond_18
    :goto_18
    return p1

    .restart local p1
    :cond_19
    move p1, v0

    .line 2211
    goto :goto_18

    .line 2213
    :cond_1b
    if-ne p1, v5, :cond_2f

    .line 2216
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v4

    if-eqz v4, :cond_25

    move p1, v1

    .line 2219
    goto :goto_18

    .line 2220
    :cond_25
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    move p1, v2

    .line 2223
    goto :goto_18

    :cond_2d
    move p1, v3

    .line 2227
    goto :goto_18

    .line 2229
    :cond_2f
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_18

    move p1, v2

    .line 2232
    goto :goto_18

    .line 2239
    :cond_37
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 2240
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v1

    if-ne v1, v2, :cond_45

    .line 2243
    const/4 p1, 0x6

    goto :goto_18

    :cond_45
    move p1, v0

    .line 2246
    goto :goto_18

    .line 2248
    :cond_47
    const/4 v0, 0x5

    const/16 v4, 0x1388

    invoke-static {v0, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_58

    const/16 v0, 0x1388

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2253
    :cond_58
    const/4 p1, 0x5

    goto :goto_18

    .line 2254
    :cond_5a
    if-ne p1, v5, :cond_18

    .line 2255
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_64

    move p1, v1

    .line 2259
    goto :goto_18

    :cond_64
    move p1, v2

    .line 2263
    goto :goto_18
.end method

.method private getBluetoothHeadset()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 1936
    const/4 v8, 0x0

    .line 1937
    .local v8, result:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 1938
    .local v7, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_11

    .line 1939
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 1946
    :cond_11
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    const/4 v5, 0x0

    if-eqz v8, :cond_20

    const/16 v6, 0xbb8

    :goto_1a
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1948
    return v8

    :cond_20
    move v6, v2

    .line 1946
    goto :goto_1a
.end method

.method private getDeviceForStream(I)I
    .registers 5
    .parameter "stream"

    .prologue
    .line 2330
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 2331
    .local v0, device:I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    .line 2337
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_11

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_21

    .line 2338
    :cond_11
    const/4 v0, 0x2

    .line 2343
    :cond_12
    :goto_12
    const-string/jumbo v1, "sys.audio.headsetConmbine"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2344
    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    .line 2345
    const/4 v0, 0x2

    .line 2348
    :cond_20
    return v0

    .line 2340
    :cond_21
    and-int/lit16 v0, v0, 0x380

    goto :goto_12
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .registers 9
    .parameter "cb"
    .parameter "create"

    .prologue
    .line 1900
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1901
    const/4 v0, 0x0

    .line 1902
    .local v0, client:Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_32

    move-result v3

    .line 1903
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Landroid/media/AudioService$ScoClient;
    :goto_c
    if-ge v2, v3, :cond_23

    .line 1904
    :try_start_e
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_35

    .line 1905
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_16
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_1f

    .line 1906
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_32

    move-object v1, v0

    .line 1912
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :goto_1e
    return-object v1

    .line 1903
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_c

    .line 1908
    :cond_23
    if-eqz p2, :cond_38

    .line 1909
    :try_start_25
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_35

    .line 1910
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_2a
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    :goto_2f
    monitor-exit v5

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_1e

    .line 1913
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .end local v2           #i:I
    .end local v3           #size:I
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :catchall_32
    move-exception v4

    :goto_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v4

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    .restart local v2       #i:I
    .restart local v3       #size:I
    :catchall_35
    move-exception v4

    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_33

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :cond_38
    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_2f
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1258
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 1261
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 1263
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 5330
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 5331
    .local v1, newOrientation:I
    iget v2, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v1, v2, :cond_13

    .line 5332
    iput v1, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 5333
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 5338
    .end local v1           #newOrientation:I
    :cond_13
    :goto_13
    return-void

    .line 5335
    :catch_14
    move-exception v0

    .line 5336
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retrieving device orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .registers 10
    .parameter "connected"
    .parameter "device"
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3277
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v4

    .line 3278
    :try_start_5
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    :cond_29
    move v0, v2

    .line 3281
    .local v0, isConnected:Z
    :goto_2a
    if-eqz v0, :cond_4c

    if-nez p1, :cond_4c

    .line 3282
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v3, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3285
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3286
    monitor-exit v4

    move v1, v2

    .line 3295
    :goto_49
    return v1

    .end local v0           #isConnected:Z
    :cond_4a
    move v0, v3

    .line 3278
    goto :goto_2a

    .line 3287
    .restart local v0       #isConnected:Z
    :cond_4c
    if-nez v0, :cond_61

    if-eqz p1, :cond_61

    .line 3288
    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3291
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3292
    monitor-exit v4

    move v1, v2

    goto :goto_49

    .line 3294
    :cond_61
    monitor-exit v4

    move v1, v3

    .line 3295
    goto :goto_49

    .line 3294
    .end local v0           #isConnected:Z
    :catchall_64
    move-exception v1

    monitor-exit v4
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_64

    throw v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .registers 3

    .prologue
    .line 3214
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .registers 3
    .parameter "pi"

    .prologue
    .line 4554
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4555
    const/4 v0, 0x1

    .line 4557
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isInCommunication()Z
    .registers 6

    .prologue
    .line 2189
    const/4 v1, 0x0

    .line 2191
    .local v1, isOffhook:Z
    iget-boolean v3, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v3, :cond_16

    .line 2193
    :try_start_5
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2194
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_16

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_21

    move-result v1

    .line 2199
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_16
    :goto_16
    if-nez v1, :cond_1f

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2a

    :cond_1f
    const/4 v3, 0x1

    :goto_20
    return v3

    .line 2195
    :catch_21
    move-exception v0

    .line 2196
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    const-string v4, "Couldn\'t connect to phone service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 2199
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private static isPlaystateActive(I)Z
    .registers 2
    .parameter "playState"

    .prologue
    .line 5176
    packed-switch p0, :pswitch_data_8

    .line 5185
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 5183
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 5176
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isStreamMutedByRingerMode(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2163
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "keyEvent"

    .prologue
    const/4 v1, 0x0

    .line 4110
    if-nez p0, :cond_4

    .line 4132
    :goto_3
    return v1

    .line 4113
    :cond_4
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 4114
    .local v0, keyCode:I
    sparse-switch v0, :sswitch_data_e

    goto :goto_3

    .line 4132
    :sswitch_c
    const/4 v1, 0x1

    goto :goto_3

    .line 4114
    :sswitch_data_e
    .sparse-switch
        0x4f -> :sswitch_c
        0x55 -> :sswitch_c
        0x56 -> :sswitch_c
        0x57 -> :sswitch_c
        0x58 -> :sswitch_c
        0x59 -> :sswitch_c
        0x5a -> :sswitch_c
        0x5b -> :sswitch_c
        0x7e -> :sswitch_c
        0x7f -> :sswitch_c
        0x80 -> :sswitch_c
        0x81 -> :sswitch_c
        0x82 -> :sswitch_c
    .end sparse-switch
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 4142
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_6

    .line 4143
    const/4 v0, 0x1

    .line 4145
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    const/4 v0, 0x1

    .line 3172
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 3173
    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3177
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3178
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 3198
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3200
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3202
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3203
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3205
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    const/16 v1, 0x80

    .line 3188
    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3191
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    return-void
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 5

    .prologue
    .line 3661
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_32

    .line 3662
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3664
    :try_start_1a
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_33

    .line 3672
    :cond_32
    :goto_32
    return-void

    .line 3666
    :catch_33
    move-exception v0

    .line 3667
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method private onNewPlaybackInfoForRcc(III)V
    .registers 10
    .parameter "rccId"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 5058
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5059
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5060
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 5061
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5062
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v2, p1, :cond_9

    .line 5063
    sparse-switch p2, :sswitch_data_b4

    .line 5108
    const-string v2, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unhandled key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for RCC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5111
    :goto_3f
    monitor-exit v3

    .line 5115
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :goto_40
    return-void

    .line 5065
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :sswitch_41
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    .line 5066
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    goto :goto_3f

    .line 5114
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_47
    move-exception v2

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v2

    .line 5069
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :sswitch_4a
    :try_start_4a
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    .line 5070
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_47

    .line 5071
    :try_start_4f
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_5e

    .line 5072
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 5073
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5075
    :cond_5e
    monitor-exit v4

    goto :goto_3f

    :catchall_60
    move-exception v2

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_4f .. :try_end_62} :catchall_60

    :try_start_62
    throw v2

    .line 5078
    :sswitch_63
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    .line 5079
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_47

    .line 5080
    :try_start_68
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_77

    .line 5081
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 5082
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5084
    :cond_77
    monitor-exit v4

    goto :goto_3f

    :catchall_79
    move-exception v2

    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_68 .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v2

    .line 5087
    :sswitch_7c
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    .line 5088
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_47

    .line 5089
    :try_start_81
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_90

    .line 5090
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iput p3, v2, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 5091
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->postHasNewRemotePlaybackInfo()V

    .line 5093
    :cond_90
    monitor-exit v4

    goto :goto_3f

    :catchall_92
    move-exception v2

    monitor-exit v4
    :try_end_94
    .catchall {:try_start_81 .. :try_end_94} :catchall_92

    :try_start_94
    throw v2

    .line 5096
    :sswitch_95
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    goto :goto_3f

    .line 5099
    :sswitch_98
    iput p3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    .line 5100
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_47

    .line 5101
    :try_start_9d
    iget-object v2, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v2, v2, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    if-ne p1, v2, :cond_ac

    .line 5102
    invoke-static {p3}, Landroid/media/AudioService;->isPlaystateActive(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioService;->mMainRemoteIsActive:Z

    .line 5103
    invoke-direct {p0}, Landroid/media/AudioService;->postReevaluateRemote()V

    .line 5105
    :cond_ac
    monitor-exit v4

    goto :goto_3f

    :catchall_ae
    move-exception v2

    monitor-exit v4
    :try_end_b0
    .catchall {:try_start_9d .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw v2

    .line 5114
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_b1
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_47

    goto :goto_40

    .line 5063
    nop

    :sswitch_data_b4
    .sparse-switch
        0x1 -> :sswitch_41
        0x2 -> :sswitch_4a
        0x3 -> :sswitch_63
        0x4 -> :sswitch_7c
        0x5 -> :sswitch_95
        0xff -> :sswitch_98
    .end sparse-switch
.end method

.method private onRcDisplayClear()V
    .registers 6

    .prologue
    .line 4623
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 4624
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 4625
    :try_start_6
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4627
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 4629
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    .line 4630
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_19

    .line 4631
    return-void

    .line 4629
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0

    .line 4630
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .registers 10
    .parameter "rcse"
    .parameter "flags"

    .prologue
    .line 4637
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 4638
    :try_start_3
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_50

    .line 4639
    :try_start_6
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4642
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 4645
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_4d

    .line 4651
    :try_start_22
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget v5, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    iget v6, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    invoke-interface {v1, v4, p2, v5, v6}, Landroid/media/IRemoteControlClient;->onInformationRequested(IIII)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_4d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_30

    .line 4662
    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_4d

    .line 4663
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_50

    .line 4664
    return-void

    .line 4653
    :catch_30
    move-exception v0

    .line 4654
    .local v0, e:Landroid/os/RemoteException;
    :try_start_31
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_2d

    .line 4662
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_4d
    move-exception v1

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v1

    .line 4663
    :catchall_50
    move-exception v1

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_50

    throw v1
.end method

.method private onReevaluateRemote()V
    .registers 7

    .prologue
    .line 5299
    const/4 v0, 0x0

    .line 5300
    .local v0, hasRemotePlayback:Z
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5301
    :try_start_4
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5302
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 5303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5304
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    .line 5305
    const/4 v0, 0x1

    .line 5309
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_2d

    .line 5310
    iget-object v4, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v4

    .line 5311
    :try_start_20
    iget-boolean v3, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    if-eq v3, v0, :cond_2b

    .line 5312
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasRemotePlayback:Z

    .line 5313
    iget-object v3, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v3, v0}, Landroid/view/VolumePanel;->postRemoteSliderVisibility(Z)V

    .line 5315
    :cond_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_30

    .line 5316
    return-void

    .line 5309
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v3

    .line 5315
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v3
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .registers 7
    .parameter "rccId"
    .parameter "rvo"

    .prologue
    .line 5124
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5125
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5126
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5128
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v2, p1, :cond_9

    .line 5129
    iput-object p2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5133
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1b
    monitor-exit v3

    .line 5134
    return-void

    .line 5133
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method private onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 15
    .parameter "btDevice"
    .parameter "state"

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 3219
    if-nez p1, :cond_6

    .line 3274
    :goto_5
    return-void

    .line 3222
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 3223
    .local v7, address:Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3224
    const-string v7, ""

    .line 3226
    :cond_12
    iget-object v10, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v10

    .line 3227
    :try_start_15
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 3231
    .local v8, isConnected:Z
    :goto_37
    if-eqz v8, :cond_6f

    if-eq p2, v3, :cond_6f

    .line 3232
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3233
    if-nez p2, :cond_46

    .line 3237
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 3243
    :cond_46
    :goto_46
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_49
    .catchall {:try_start_15 .. :try_end_49} :catchall_63

    .line 3244
    :try_start_49
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_60

    .line 3245
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 3246
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3249
    :cond_60
    monitor-exit v11
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_6c

    .line 3273
    :cond_61
    :goto_61
    :try_start_61
    monitor-exit v10

    goto :goto_5

    .end local v8           #isConnected:Z
    :catchall_63
    move-exception v0

    monitor-exit v10
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_63

    throw v0

    :cond_66
    move v8, v1

    .line 3227
    goto :goto_37

    .line 3241
    .restart local v8       #isConnected:Z
    :cond_68
    :try_start_68
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_63

    goto :goto_46

    .line 3249
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v11
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0

    .line 3250
    :cond_6f
    if-nez v8, :cond_61

    if-ne p2, v3, :cond_61

    .line 3251
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 3253
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3254
    iput-object v7, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 3263
    :cond_7e
    :goto_7e
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 3264
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_84
    .catchall {:try_start_6e .. :try_end_84} :catchall_63

    .line 3265
    :try_start_84
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 3266
    .local v9, name:Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 3267
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 3268
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3271
    :cond_a2
    monitor-exit v11

    goto :goto_61

    .end local v9           #name:Ljava/lang/String;
    :catchall_a4
    move-exception v0

    monitor-exit v11
    :try_end_a6
    .catchall {:try_start_84 .. :try_end_a6} :catchall_a4

    :try_start_a6
    throw v0

    .line 3258
    :cond_a7
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 3259
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 3260
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_a6 .. :try_end_b5} :catchall_63

    goto :goto_7e
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .registers 9
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 3377
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v1

    .line 3378
    if-nez p2, :cond_d

    if-eq p1, v3, :cond_d

    if-ne p1, v4, :cond_d

    .line 3382
    :cond_d
    if-ne p2, v0, :cond_1f

    :goto_f
    :try_start_f
    const-string v2, ""

    invoke-direct {p0, v0, p1, v2}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 3383
    if-eqz p2, :cond_1a

    if-eq p1, v3, :cond_1a

    if-ne p1, v4, :cond_1a

    .line 3387
    :cond_1a
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 3388
    monitor-exit v1

    .line 3389
    return-void

    .line 3382
    :cond_1f
    const/4 v0, 0x0

    goto :goto_f

    .line 3388
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_21

    throw v0
.end method

.method private postReevaluateRemote()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 5293
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x11

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5294
    return-void
.end method

.method private pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 10
    .parameter "mediaIntent"
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 4508
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 4530
    :goto_19
    return-void

    .line 4511
    :cond_1a
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4512
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    const/4 v0, 0x0

    .line 4513
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    const/4 v2, 0x0

    .line 4514
    .local v2, wasInsideStack:Z
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 4515
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4516
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4517
    const/4 v2, 0x1

    .line 4518
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4522
    :cond_3a
    if-nez v2, :cond_41

    .line 4523
    new-instance v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    invoke-direct {v0, p1, p2}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4525
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_41
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4528
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v6, v6, p2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_19
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 14
    .parameter "handler"
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2301
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2302
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2303
    return-void
.end method

.method private rcDisplay_startDeathMonitor_syncRcStack()V
    .registers 6

    .prologue
    .line 4951
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v2, :cond_17

    .line 4953
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4954
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioService$RcDisplayDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    .line 4956
    :try_start_11
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    .line 4963
    .end local v0           #b:Landroid/os/IBinder;
    :cond_17
    :goto_17
    return-void

    .line 4957
    .restart local v0       #b:Landroid/os/IBinder;
    :catch_18
    move-exception v1

    .line 4959
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_17
.end method

.method private rcDisplay_stopDeathMonitor_syncRcStack()V
    .registers 2

    .prologue
    .line 4944
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v0, :cond_9

    .line 4946
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-virtual {v0}, Landroid/media/AudioService$RcDisplayDeathHandler;->unlinkToRcDisplayDeath()V

    .line 4948
    :cond_9
    return-void
.end method

.method private readPersistedSettings()V
    .registers 10

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 597
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 599
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v4, "mode_ringer"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 601
    .local v3, ringerModeFromSettings:I
    move v2, v3

    .line 604
    .local v2, ringerMode:I
    invoke-static {v2}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_14

    .line 605
    const/4 v2, 0x2

    .line 607
    :cond_14
    if-ne v2, v7, :cond_1b

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v4, :cond_1b

    .line 608
    const/4 v2, 0x0

    .line 610
    :cond_1b
    if-eq v2, v3, :cond_23

    .line 611
    const-string/jumbo v4, "mode_ringer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    :cond_23
    iget-object v8, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 614
    :try_start_26
    iput v2, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 615
    monitor-exit v8
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_85

    .line 619
    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v4, :cond_88

    move v4, v5

    :goto_2e
    invoke-static {v6, v7, v4}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 623
    iget v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    iget-boolean v8, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_8a

    :goto_3a
    invoke-static {v4, v6, v5}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 630
    const-string/jumbo v4, "mode_ringer_streams_affected"

    const/16 v5, 0xa6

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 634
    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_8c

    .line 635
    iget v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 639
    :goto_55
    const-string/jumbo v4, "mode_ringer_streams_affected"

    iget v5, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    const-string/jumbo v4, "mute_streams_affected"

    const/16 v5, 0xe

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 646
    const-string/jumbo v4, "volume_master_mute"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_93

    move v1, v7

    .line 647
    .local v1, masterMute:Z
    :goto_72
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 648
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 653
    invoke-direct {p0, v2}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 656
    invoke-direct {p0, v6}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 657
    invoke-direct {p0, v7}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 660
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMediaButtonReceiver()V

    .line 661
    return-void

    .line 615
    .end local v1           #masterMute:Z
    :catchall_85
    move-exception v4

    :try_start_86
    monitor-exit v8
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v4

    :cond_88
    move v4, v6

    .line 619
    goto :goto_2e

    :cond_8a
    move v5, v6

    .line 623
    goto :goto_3a

    .line 637
    :cond_8c
    iget v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_55

    :cond_93
    move v1, v6

    .line 646
    goto :goto_72
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .registers 8
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 3747
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 3750
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3751
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 3752
    if-eqz p2, :cond_31

    .line 3754
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 3756
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 3757
    const/16 v2, 0xf

    :try_start_2d
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 3758
    monitor-exit v3

    .line 3774
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_31
    return-void

    .line 3758
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    throw v2

    .line 3763
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_35
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3764
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 3765
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3766
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3767
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3770
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    goto :goto_3b
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .registers 8
    .parameter "cb"

    .prologue
    .line 3783
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const/4 v1, 0x1

    .line 3785
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_19
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3786
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 3787
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 3788
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3789
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 3783
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_51
    const/4 v1, 0x0

    goto :goto_19

    .line 3795
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_53
    if-eqz v1, :cond_61

    .line 3798
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 3800
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 3801
    const/16 v3, 0xf

    :try_start_5d
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 3802
    monitor-exit v4

    .line 3804
    :cond_61
    return-void

    .line 3802
    :catchall_62
    move-exception v3

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    throw v3
.end method

.method private removeMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 5
    .parameter "pi"

    .prologue
    .line 4538
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4539
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4540
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4541
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4542
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4543
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 4547
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_20
    return-void
.end method

.method private removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    .registers 12
    .parameter "packageName"

    .prologue
    .line 4450
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 4451
    :try_start_3
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4452
    monitor-exit v4

    .line 4479
    :goto_c
    return-void

    .line 4454
    :cond_d
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4455
    .local v0, oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4457
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 4458
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4459
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4461
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4462
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_1b

    .line 4478
    .end local v0           #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v3

    .line 4465
    .restart local v0       #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3d
    :try_start_3d
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 4467
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4478
    :cond_55
    :goto_55
    monitor-exit v4

    goto :goto_c

    .line 4470
    :cond_57
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_55

    .line 4473
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_78
    .catchall {:try_start_3d .. :try_end_78} :catchall_3a

    goto :goto_55
.end method

.method private rescaleIndex(III)I
    .registers 6
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 664
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .registers 4

    .prologue
    .line 1975
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1976
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 1977
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 1978
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 1979
    monitor-exit v1

    .line 1980
    return-void

    .line 1979
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private restoreMasterVolume()V
    .registers 5

    .prologue
    .line 1202
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v1, :cond_17

    .line 1203
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_master"

    const/high16 v3, -0x4080

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 1205
    .local v0, volume:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_17

    .line 1206
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1209
    .end local v0           #volume:F
    :cond_17
    return-void
.end method

.method private restoreMediaButtonReceiver()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 4486
    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "media_button_receiver"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4488
    .local v3, receiverName:Ljava/lang/String;
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    .line 4489
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4492
    .local v0, eventReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4494
    .local v1, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4495
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4497
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4499
    .end local v0           #eventReceiver:Landroid/content/ComponentName;
    .end local v1           #mediaButtonIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_29
    return-void
.end method

.method private sendBecomingNoisyIntent()V
    .registers 4

    .prologue
    .line 3183
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3184
    return-void
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .registers 16
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3329
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3331
    .local v8, intent:Landroid/content/Intent;
    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3332
    const-string/jumbo v0, "name"

    invoke-virtual {v8, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3333
    const/high16 v0, 0x4000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3335
    const/4 v7, 0x0

    .line 3337
    .local v7, connType:I
    const/4 v0, 0x4

    if-ne p1, v0, :cond_50

    .line 3338
    const/4 v7, 0x1

    .line 3339
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3340
    const-string/jumbo v0, "microphone"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3356
    :cond_29
    :goto_29
    iget-object v10, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v10

    .line 3357
    if-eqz v7, :cond_4b

    .line 3358
    :try_start_2e
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v9, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 3359
    .local v9, newConn:I
    if-eqz p2, :cond_83

    .line 3360
    or-int/2addr v9, v7

    .line 3364
    :goto_35
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v9, v0, :cond_4b

    .line 3365
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v9, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 3366
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3370
    .end local v9           #newConn:I
    :cond_4b
    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_87

    .line 3372
    invoke-static {v8, v11}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3373
    return-void

    .line 3341
    :cond_50
    const/16 v0, 0x8

    if-ne p1, v0, :cond_61

    .line 3342
    const/4 v7, 0x2

    .line 3343
    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3344
    const-string/jumbo v0, "microphone"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_29

    .line 3345
    :cond_61
    const/16 v0, 0x800

    if-ne p1, v0, :cond_6c

    .line 3346
    const/4 v7, 0x4

    .line 3347
    const-string v0, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_29

    .line 3348
    :cond_6c
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_77

    .line 3349
    const/4 v7, 0x4

    .line 3350
    const-string v0, "android.intent.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_29

    .line 3351
    :cond_77
    const/16 v0, 0x400

    if-ne p1, v0, :cond_29

    .line 3352
    const/16 v7, 0x8

    .line 3353
    const-string v0, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_29

    .line 3362
    .restart local v9       #newConn:I
    :cond_83
    xor-int/lit8 v0, v7, -0x1

    and-int/2addr v9, v0

    goto :goto_35

    .line 3370
    .end local v9           #newConn:I
    :catchall_87
    move-exception v0

    :try_start_88
    monitor-exit v10
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v0
.end method

.method private sendMasterMuteUpdate(ZI)V
    .registers 4
    .parameter "muted"
    .parameter "flags"

    .prologue
    .line 961
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p2}, Landroid/view/VolumePanel;->postMasterMuteChanged(I)V

    .line 962
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 963
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .registers 6
    .parameter "flags"
    .parameter "oldVolume"
    .parameter "newVolume"

    .prologue
    .line 951
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v1, p1}, Landroid/view/VolumePanel;->postMasterVolumeChanged(I)V

    .line 953
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 954
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 956
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 957
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 10
    .parameter "handler"
    .parameter "msg"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2308
    if-nez p2, :cond_e

    .line 2309
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2314
    :cond_5
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2315
    :goto_d
    return-void

    .line 2310
    :cond_e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_d
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .registers 5
    .parameter "originalKeyEvent"
    .parameter "needWakeLock"

    .prologue
    .line 4100
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4101
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4103
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4104
    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 4106
    return-void
.end method

.method private sendVolumeUpdate(IIII)V
    .registers 7
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 934
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v1, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    .line 935
    const/4 p1, 0x5

    .line 938
    :cond_8
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v1, p1, p4}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 940
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 941
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 942
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 943
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 944
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 945
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 947
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .registers 9
    .parameter "rccId"
    .parameter "direction"

    .prologue
    .line 5214
    if-nez p2, :cond_3

    .line 5237
    :cond_2
    :goto_2
    return-void

    .line 5218
    :cond_3
    const/4 v2, 0x0

    .line 5219
    .local v2, rvo:Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    .line 5220
    :try_start_7
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5221
    .local v3, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 5222
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5224
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v4, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_d

    .line 5225
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5229
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1f
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_30

    .line 5230
    if-eqz v2, :cond_2

    .line 5232
    const/4 v4, -0x1

    :try_start_23
    invoke-interface {v2, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_2

    .line 5233
    :catch_27
    move-exception v0

    .line 5234
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AudioService"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5229
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .registers 8
    .parameter "newClientGeneration"

    .prologue
    .line 4586
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4587
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 4588
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4589
    .local v1, se:Landroid/media/AudioService$RemoteControlStackEntry;
    if-eqz v1, :cond_6

    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_6

    .line 4591
    :try_start_18
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_6

    .line 4592
    :catch_1e
    move-exception v0

    .line 4593
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4595
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_6

    .line 4599
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #se:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3e
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 8
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 4569
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_9

    .line 4571
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 4580
    :cond_9
    :goto_9
    return-void

    .line 4573
    :catch_a
    move-exception v0

    .line 4574
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 4577
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_9
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .registers 4
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 4612
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 4614
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 4615
    return-void
.end method

.method private setOrientationForAudioSystem()V
    .registers 3

    .prologue
    .line 5341
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_2a

    .line 5359
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5361
    :goto_c
    return-void

    .line 5344
    :pswitch_d
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 5348
    :pswitch_14
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 5352
    :pswitch_1b
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 5356
    :pswitch_22
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_c

    .line 5341
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_14
        :pswitch_d
        :pswitch_1b
    .end packed-switch
.end method

.method private setRingerModeInt(IZ)V
    .registers 15
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1154
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1155
    :try_start_7
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1156
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_64

    .line 1162
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    .line 1163
    .local v9, numStreamTypes:I
    add-int/lit8 v11, v9, -0x1

    .local v11, streamType:I
    :goto_10
    if-ltz v11, :cond_92

    .line 1164
    invoke-direct {p0, v11}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1165
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_20

    if-ne p1, v4, :cond_78

    .line 1169
    :cond_20
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v11

    if-ne v0, v4, :cond_68

    .line 1171
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v0, v11

    monitor-enter v1

    .line 1172
    :try_start_2f
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 1173
    .local v10, set:Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1174
    .local v8, i:Ljava/util/Iterator;
    :cond_3f
    :goto_3f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1175
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1176
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3f

    .line 1177
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 1180
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v8           #i:Ljava/util/Iterator;
    .end local v10           #set:Ljava/util/Set;
    :catchall_61
    move-exception v0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_2f .. :try_end_63} :catchall_61

    throw v0

    .line 1156
    .end local v9           #numStreamTypes:I
    .end local v11           #streamType:I
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0

    .line 1180
    .restart local v8       #i:Ljava/util/Iterator;
    .restart local v9       #numStreamTypes:I
    .restart local v10       #set:Ljava/util/Set;
    .restart local v11       #streamType:I
    :cond_67
    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_61

    .line 1182
    .end local v8           #i:Ljava/util/Iterator;
    .end local v10           #set:Ljava/util/Set;
    :cond_68
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1183
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1163
    :cond_78
    :goto_78
    add-int/lit8 v11, v11, -0x1

    goto :goto_10

    .line 1186
    :cond_7b
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_78

    if-eq p1, v4, :cond_78

    .line 1188
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1189
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_78

    .line 1195
    :cond_92
    if-eqz p2, :cond_9e

    .line 1196
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1199
    :cond_9e
    return-void
.end method

.method private setStreamVolumeInt(IIIZZ)V
    .registers 13
    .parameter "streamType"
    .parameter "index"
    .parameter "device"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 991
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 994
    .local v5, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 996
    if-eqz p2, :cond_1b

    .line 997
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 999
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/16 v6, 0x1f4

    move v3, v2

    move v4, p3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1020
    :cond_1b
    :goto_1b
    return-void

    .line 1008
    :cond_1c
    invoke-virtual {v5, p2, p3, p5}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IIZ)Z

    move-result v0

    if-nez v0, :cond_24

    if-eqz p4, :cond_1b

    .line 1011
    :cond_24
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1b
.end method

.method private startVoiceBasedInteractions(Z)V
    .registers 10
    .parameter "needWakeLock"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4153
    const/4 v3, 0x0

    .line 4158
    .local v3, voiceIntent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 4159
    .local v2, pm:Landroid/os/PowerManager;
    iget-object v6, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v6, :cond_45

    iget-object v6, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_45

    move v1, v4

    .line 4160
    .local v1, isLocked:Z
    :goto_1b
    if-nez v1, :cond_47

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 4161
    new-instance v3, Landroid/content/Intent;

    .end local v3           #voiceIntent:Landroid/content/Intent;
    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4168
    .restart local v3       #voiceIntent:Landroid/content/Intent;
    :goto_2a
    if-eqz p1, :cond_31

    .line 4169
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4172
    :cond_31
    if-eqz v3, :cond_3d

    .line 4173
    const/high16 v4, 0x1080

    :try_start_35
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4175
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_7e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_35 .. :try_end_3d} :catch_60

    .line 4180
    :cond_3d
    if-eqz p1, :cond_44

    .line 4181
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_41
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4184
    :cond_44
    return-void

    .end local v1           #isLocked:Z
    :cond_45
    move v1, v5

    .line 4159
    goto :goto_1b

    .line 4163
    .restart local v1       #isLocked:Z
    :cond_47
    new-instance v3, Landroid/content/Intent;

    .end local v3           #voiceIntent:Landroid/content/Intent;
    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4164
    .restart local v3       #voiceIntent:Landroid/content/Intent;
    const-string v6, "android.speech.extras.EXTRA_SECURE"

    if-eqz v1, :cond_5e

    iget-object v7, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_5e

    :goto_5a
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2a

    :cond_5e
    move v4, v5

    goto :goto_5a

    .line 4177
    :catch_60
    move-exception v0

    .line 4178
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_61
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_7e

    .line 4180
    if-eqz p1, :cond_44

    .line 4181
    iget-object v4, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_41

    .line 4180
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_7e
    move-exception v4

    if-eqz p1, :cond_86

    .line 4181
    iget-object v5, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4180
    :cond_86
    throw v4
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .registers 8
    .parameter "infoChangedFlags"

    .prologue
    .line 4688
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4689
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    move v0, p1

    .line 4692
    .local v0, infoFlagsAboutToBeUsed:I
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_11

    .line 4694
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 4707
    :goto_10
    return-void

    .line 4697
    :cond_11
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4698
    :try_start_14
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 4700
    const/16 v0, 0xf

    .line 4702
    :cond_20
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 4703
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_34

    .line 4705
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10

    .line 4703
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private updateStreamVolumeAlias(Z)V
    .registers 10
    .parameter "updateVolumes"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 571
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_3f

    .line 572
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 573
    const/4 v7, 0x2

    .line 578
    .local v7, dtmfStreamAlias:I
    :goto_c
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 579
    const/4 v7, 0x0

    .line 581
    :cond_13
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 582
    if-eqz p1, :cond_3e

    .line 583
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 585
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;Z)V

    .line 587
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x2

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 594
    :cond_3e
    return-void

    .line 575
    .end local v7           #dtmfStreamAlias:I
    :cond_3f
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 576
    const/4 v7, 0x3

    .restart local v7       #dtmfStreamAlias:I
    goto :goto_c
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .prologue
    .line 517
    monitor-enter p0

    .line 518
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 521
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 522
    :catch_9
    move-exception v0

    .line 523
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 526
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_12

    .line 527
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .registers 8
    .parameter "fl"
    .parameter "clientId"

    .prologue
    const/4 v4, 0x1

    .line 3918
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    :try_start_19
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_19 .. :try_end_1c} :catch_25

    .line 3922
    const/4 v1, 0x1

    :try_start_1d
    invoke-direct {p0, p2, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 3923
    monitor-exit v2

    .line 3932
    :goto_21
    return v4

    .line 3923
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catch Ljava/util/ConcurrentModificationException; {:try_start_24 .. :try_end_25} :catch_25

    .line 3924
    :catch_25
    move-exception v0

    .line 3928
    .local v0, cme:Ljava/util/ConcurrentModificationException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3929
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_21
.end method

.method public adjustLocalOrRemoteStreamVolume(II)V
    .registers 6
    .parameter "streamType"
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 680
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 681
    invoke-direct {p0, v1, p2, v2}, Landroid/media/AudioService;->adjustRemoteVolume(III)V

    .line 685
    :cond_b
    :goto_b
    return-void

    .line 682
    :cond_c
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 683
    invoke-virtual {p0, v1, p2, v2}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_b
.end method

.method public adjustMasterVolume(II)V
    .registers 10
    .parameter "steps"
    .parameter "flags"

    .prologue
    .line 794
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 795
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 796
    .local v4, volume:I
    const/4 v0, 0x0

    .line 797
    .local v0, delta:I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 798
    .local v3, numSteps:I
    if-lez p1, :cond_21

    const/4 v1, 0x1

    .line 799
    .local v1, direction:I
    :goto_16
    const/4 v2, 0x0

    .local v2, i:I
    :goto_17
    if-ge v2, v3, :cond_23

    .line 800
    invoke-direct {p0, v1, v4}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v0

    .line 801
    add-int/2addr v4, v0

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 798
    .end local v1           #direction:I
    .end local v2           #i:I
    :cond_21
    const/4 v1, -0x1

    goto :goto_16

    .line 805
    .restart local v1       #direction:I
    .restart local v2       #i:I
    :cond_23
    invoke-virtual {p0, v4, p2}, Landroid/media/AudioService;->setMasterVolume(II)V

    .line 806
    return-void
.end method

.method public adjustStreamVolume(III)V
    .registers 29
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 719
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 720
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v24, v5, p1

    .line 726
    .local v24, streamTypeAlias:I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v10, v5, v24

    .line 728
    .local v10, streamState:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v9

    .line 730
    .local v9, device:I
    invoke-static {v10}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_b5

    const/4 v5, 0x1

    :goto_25
    invoke-virtual {v10, v9, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v19

    .line 732
    .local v19, aliasIndex:I
    const/16 v18, 0x1

    .line 735
    .local v18, adjustVolume:Z
    const/16 v5, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v5, v1, v2}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v23

    .line 739
    .local v23, step:I
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_43

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v5

    move/from16 v0, v24

    if-ne v0, v5, :cond_6c

    .line 741
    :cond_43
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v22

    .line 743
    .local v22, ringerMode:I
    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_4e

    .line 744
    and-int/lit8 p3, p3, -0x11

    .line 748
    :cond_4e
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioService;->checkForRingerModeChange(III)Z

    move-result v18

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v5

    move/from16 v0, v24

    if-ne v0, v5, :cond_6c

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v5, :cond_6c

    .line 751
    const/4 v5, 0x0

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(II)V

    .line 757
    .end local v22           #ringerMode:I
    :cond_6c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v5, p1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_b8

    const/4 v5, 0x1

    :goto_7f
    invoke-virtual {v6, v9, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v21

    .line 760
    .local v21, oldIndex:I
    invoke-static {v10}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_ba

    .line 761
    if-eqz v18, :cond_9c

    .line 764
    mul-int v5, p2, v23

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(II)V

    .line 765
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/16 v11, 0x1f4

    invoke-static/range {v5 .. v11}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 773
    :cond_9c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-virtual {v5, v9, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v20

    .line 789
    .local v20, index:I
    :goto_a7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 790
    return-void

    .line 730
    .end local v18           #adjustVolume:Z
    .end local v19           #aliasIndex:I
    .end local v20           #index:I
    .end local v21           #oldIndex:I
    .end local v23           #step:I
    :cond_b5
    const/4 v5, 0x0

    goto/16 :goto_25

    .line 757
    .restart local v18       #adjustVolume:Z
    .restart local v19       #aliasIndex:I
    .restart local v23       #step:I
    :cond_b8
    const/4 v5, 0x0

    goto :goto_7f

    .line 775
    .restart local v21       #oldIndex:I
    :cond_ba
    if-eqz v18, :cond_d3

    mul-int v5, p2, v23

    invoke-virtual {v10, v5, v9}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 778
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v17, 0x0

    move v14, v9

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v17}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 786
    :cond_d3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-virtual {v5, v9, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v20

    .restart local v20       #index:I
    goto :goto_a7
.end method

.method public adjustSuggestedStreamVolume(III)V
    .registers 8
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    const/16 v3, -0xc8

    .line 691
    iget v1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2d

    .line 692
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 698
    .local v0, streamType:I
    :goto_9
    if-eq v0, v3, :cond_24

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 702
    :cond_22
    and-int/lit8 p3, p3, -0x5

    .line 705
    :cond_24
    if-ne v0, v3, :cond_32

    .line 707
    and-int/lit8 p3, p3, -0x5

    .line 709
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p3}, Landroid/media/AudioService;->adjustRemoteVolume(III)V

    .line 713
    :goto_2c
    return-void

    .line 694
    .end local v0           #streamType:I
    :cond_2d
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .restart local v0       #streamType:I
    goto :goto_9

    .line 711
    :cond_32
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    goto :goto_2c
.end method

.method public adjustVolume(II)V
    .registers 4
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 673
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 674
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 5
    .parameter "method"

    .prologue
    .line 2318
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 2320
    const/4 v1, 0x1

    .line 2326
    :goto_b
    return v1

    .line 2322
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2325
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public clearAllScoClients(IZ)V
    .registers 9
    .parameter "exceptPid"
    .parameter "stopSco"

    .prologue
    .line 1917
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1918
    const/4 v2, 0x0

    .line 1919
    .local v2, savedClient:Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1920
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v3, :cond_23

    .line 1921
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 1922
    .local v0, cl:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_21

    .line 1923
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 1920
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1925
    :cond_21
    move-object v2, v0

    goto :goto_1e

    .line 1928
    .end local v0           #cl:Landroid/media/AudioService$ScoClient;
    :cond_23
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1929
    if-eqz v2, :cond_2f

    .line 1930
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    :cond_2f
    monitor-exit v5

    .line 1933
    return-void

    .line 1932
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_31
    move-exception v4

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v4
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .parameter "keyEvent"

    .prologue
    .line 3947
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3948
    return-void
.end method

.method public dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .registers 3
    .parameter "keyEvent"

    .prologue
    .line 3951
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3952
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5397
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5399
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 5400
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 5401
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 5402
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 5403
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5404
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5405
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5406
    return-void
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .registers 6
    .parameter "streamType"
    .parameter "cb"

    .prologue
    .line 848
    iget-object v1, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 849
    :try_start_3
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 850
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 851
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_16

    .line 852
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 858
    :cond_16
    :goto_16
    monitor-exit v1

    .line 859
    return-void

    .line 856
    :cond_18
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_16

    .line 858
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getLastAudibleMasterVolume()I
    .registers 3

    .prologue
    .line 1116
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 5
    .parameter "streamType"

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1110
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1111
    .local v0, device:I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .registers 2

    .prologue
    .line 1104
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .registers 2

    .prologue
    .line 1121
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_6

    .line 1122
    const/4 v0, 0x2

    .line 1124
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x3

    goto :goto_5
.end method

.method public getMasterVolume()I
    .registers 2

    .prologue
    .line 1067
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1068
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_7
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 1425
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteStreamMaxVolume()I
    .registers 4

    .prologue
    .line 5240
    iget-object v1, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v1

    .line 5241
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 5242
    const/4 v0, 0x0

    monitor-exit v1

    .line 5244
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_c

    .line 5245
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getRemoteStreamVolume()I
    .registers 4

    .prologue
    .line 5249
    iget-object v1, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v1

    .line 5250
    :try_start_3
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    .line 5251
    const/4 v0, 0x0

    monitor-exit v1

    .line 5253
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v0, v0, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_c

    .line 5254
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getRingerMode()I
    .registers 3

    .prologue
    .line 1130
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1131
    :try_start_3
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 1132
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 2

    .prologue
    .line 5383
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1099
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1100
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 5
    .parameter "streamType"

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1062
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1063
    .local v0, device:I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .parameter "vibrateType"

    .prologue
    .line 1234
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1235
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_5
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .prologue
    .line 1709
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1710
    :try_start_3
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 1711
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .registers 3

    .prologue
    .line 1699
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isMasterMute()Z
    .registers 2

    .prologue
    .line 1056
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1681
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2167
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2159
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isStreamMute(I)Z
    .registers 3
    .parameter "streamType"

    .prologue
    .line 1040
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public loadSoundEffects()Z
    .registers 14

    .prologue
    .line 1448
    iget-object v9, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1449
    :try_start_3
    iget-boolean v8, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v8, :cond_11

    .line 1450
    const-string v8, "AudioService"

    const-string v10, "loadSoundEffects() called before boot complete"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const/4 v8, 0x0

    monitor-exit v9

    .line 1553
    :goto_10
    return v8

    .line 1454
    :cond_11
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v8, :cond_1b

    .line 1455
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_10

    .line 1552
    :catchall_18
    move-exception v8

    monitor-exit v9
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v8

    .line 1457
    :cond_1b
    :try_start_1b
    new-instance v8, Landroid/media/SoundPool;

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v8, v10, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_18

    .line 1460
    const/4 v8, 0x0

    :try_start_26
    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    .line 1461
    new-instance v8, Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-direct {v8, p0}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1462
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 1464
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_39} :catch_5e

    .line 1469
    :goto_39
    :try_start_39
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    if-nez v8, :cond_67

    .line 1470
    const-string v8, "AudioService"

    const-string v10, "loadSoundEffects() could not create SoundPool listener or thread"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_50

    .line 1472
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1473
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1475
    :cond_50
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1476
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1477
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1478
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_10

    .line 1465
    :catch_5e
    move-exception v0

    .line 1466
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool listener thread."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 1486
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_67
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    new-array v5, v8, [I

    .line 1487
    .local v5, poolId:[I
    const/4 v2, 0x0

    .local v2, fileIdx:I
    :goto_6d
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_78

    .line 1488
    const/4 v8, -0x1

    aput v8, v5, v2

    .line 1487
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 1496
    :cond_78
    const/4 v4, 0x0

    .line 1497
    .local v4, lastSample:I
    const/4 v1, 0x0

    .local v1, effect:I
    :goto_7a
    const/16 v8, 0x9

    if-ge v1, v8, :cond_101

    .line 1499
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-nez v8, :cond_8a

    .line 1497
    :goto_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 1502
    :cond_8a
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aget v8, v5, v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_f0

    .line 1503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/media/audio/ui/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1506
    .local v3, filePath:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 1507
    .local v6, sampleId:I
    if-gtz v6, :cond_de

    .line 1508
    const-string v8, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 1510
    :cond_de
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aput v6, v8, v10

    .line 1511
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aput v6, v5, v8

    .line 1512
    move v4, v6

    goto :goto_87

    .line 1515
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #sampleId:I
    :cond_f0
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget v11, v5, v11

    aput v11, v8, v10

    goto :goto_87

    .line 1519
    :cond_101
    if-eqz v4, :cond_16d

    .line 1520
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8, v4}, Landroid/media/AudioService$SoundPoolCallback;->setLastSample(I)V
    :try_end_108
    .catchall {:try_start_39 .. :try_end_108} :catchall_18

    .line 1523
    :try_start_108
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 1524
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_112
    .catchall {:try_start_108 .. :try_end_112} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_108 .. :try_end_112} :catch_163

    move-result v7

    .line 1533
    .local v7, status:I
    :goto_113
    :try_start_113
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_11f

    .line 1534
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1535
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1537
    :cond_11f
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1538
    if-eqz v7, :cond_179

    .line 1539
    const-string v10, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadSoundEffects(), Error "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_16f

    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I

    move-result v8

    :goto_139
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " while loading samples"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v1, 0x0

    :goto_14b
    const/16 v8, 0x9

    if-ge v1, v8, :cond_171

    .line 1544
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-lez v8, :cond_160

    .line 1545
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v8, v10

    .line 1543
    :cond_160
    add-int/lit8 v1, v1, 0x1

    goto :goto_14b

    .line 1525
    .end local v7           #status:I
    :catch_163
    move-exception v0

    .line 1526
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool callback."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const/4 v7, -0x1

    .line 1528
    .restart local v7       #status:I
    goto :goto_113

    .line 1530
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v7           #status:I
    :cond_16d
    const/4 v7, -0x1

    .restart local v7       #status:I
    goto :goto_113

    .line 1539
    :cond_16f
    const/4 v8, -0x1

    goto :goto_139

    .line 1549
    :cond_171
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1550
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1552
    :cond_179
    monitor-exit v9
    :try_end_17a
    .catchall {:try_start_113 .. :try_end_17a} :catchall_18

    .line 1553
    if-nez v7, :cond_17f

    const/4 v8, 0x1

    goto/16 :goto_10

    :cond_17f
    const/4 v8, 0x0

    goto/16 :goto_10
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 4196
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_9

    .line 4197
    iget-object v0, p0, Landroid/media/AudioService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4199
    :cond_9
    return-void
.end method

.method public playSoundEffect(I)V
    .registers 9
    .parameter "effectType"

    .prologue
    .line 1430
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1432
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 10
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1436
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 1437
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/high16 v3, 0x447a

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1439
    return-void
.end method

.method public registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 4784
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4786
    const-string v0, "AudioService"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    :goto_11
    return-void

    .line 4789
    :cond_12
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 4790
    :try_start_15
    iput-object p1, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 4791
    monitor-exit v1

    goto :goto_11

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 6
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 4748
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4751
    :try_start_1b
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_2c

    .line 4752
    :try_start_1e
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4754
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4755
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_29

    .line 4756
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_2c

    .line 4757
    return-void

    .line 4755
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0

    .line 4756
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .registers 15
    .parameter "mediaIntent"
    .parameter "rcClient"
    .parameter "callingPackageName"

    .prologue
    .line 4818
    const/4 v2, -0x1

    .line 4819
    .local v2, rccId:I
    sget-object v7, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4820
    :try_start_4
    iget-object v8, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_69

    .line 4822
    :try_start_7
    iget-object v6, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 4823
    .local v5, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 4824
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4825
    .local v4, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4827
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v6, :cond_28

    .line 4829
    invoke-virtual {v4}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 4832
    :cond_28
    iput-object p2, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 4833
    iput-object p3, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 4834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 4835
    if-nez p2, :cond_45

    .line 4837
    invoke-virtual {v4}, Landroid/media/AudioService$RemoteControlStackEntry;->resetPlaybackInfo()V

    .line 4869
    .end local v4           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_37
    :goto_37
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 4870
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4872
    :cond_42
    monitor-exit v8
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_66

    .line 4873
    :try_start_43
    monitor-exit v7
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_69

    .line 4874
    return v2

    .line 4840
    .restart local v4       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_45
    :try_start_45
    iget v2, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    .line 4844
    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_66

    if-eqz v6, :cond_52

    .line 4846
    :try_start_4b
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v9, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v6, v9}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_66
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_52} :catch_6c

    .line 4853
    :cond_52
    :goto_52
    :try_start_52
    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4854
    .local v0, b:Landroid/os/IBinder;
    new-instance v3, Landroid/media/AudioService$RcClientDeathHandler;

    iget-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v3, p0, v0, v6}, Landroid/media/AudioService$RcClientDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_66

    .line 4857
    .local v3, rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    const/4 v6, 0x0

    :try_start_60
    invoke-interface {v0, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_66
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_63} :catch_89

    .line 4863
    :goto_63
    :try_start_63
    iput-object v3, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    goto :goto_37

    .line 4872
    .end local v0           #b:Landroid/os/IBinder;
    .end local v3           #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    .end local v4           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v5           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_66
    move-exception v6

    monitor-exit v8
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_66

    :try_start_68
    throw v6

    .line 4873
    :catchall_69
    move-exception v6

    monitor-exit v7
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_69

    throw v6

    .line 4847
    .restart local v4       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v5       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catch_6c
    move-exception v1

    .line 4848
    .local v1, e:Landroid/os/RemoteException;
    :try_start_6d
    const-string v6, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error connecting remote control display to client: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_52

    .line 4858
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    :catch_89
    move-exception v1

    .line 4860
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4861
    const/4 v6, 0x0

    iput-object v6, v4, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_a6
    .catchall {:try_start_6d .. :try_end_a6} :catchall_66

    goto :goto_63
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 10
    .parameter "rcd"

    .prologue
    .line 4974
    sget-object v4, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4975
    :try_start_3
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    .line 4976
    :try_start_6
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq v3, p1, :cond_c

    if-nez p1, :cond_f

    .line 4977
    :cond_c
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_52

    :try_start_d
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_55

    .line 5005
    :goto_e
    return-void

    .line 4980
    :cond_f
    :try_start_f
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 4981
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 4983
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_startDeathMonitor_syncRcStack()V

    .line 4988
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4989
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 4990
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4991
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_52

    if-eqz v3, :cond_1d

    .line 4993
    :try_start_2d
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v3, v6}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_52
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_35

    goto :goto_1d

    .line 4994
    :catch_35
    move-exception v0

    .line 4995
    .local v0, e:Landroid/os/RemoteException;
    :try_start_36
    const-string v3, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error connecting remote control display to client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4996
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d

    .line 5003
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_52
    move-exception v3

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_36 .. :try_end_54} :catchall_52

    :try_start_54
    throw v3

    .line 5004
    :catchall_55
    move-exception v3

    monitor-exit v4
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw v3

    .line 5002
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_58
    const/16 v3, 0xf

    :try_start_5a
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5003
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_52

    .line 5004
    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_55

    goto :goto_e
.end method

.method public registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .registers 10
    .parameter "rccId"
    .parameter "rvo"

    .prologue
    const/4 v4, 0x0

    .line 5118
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5120
    return-void
.end method

.method public reloadAudioSettings()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1641
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1644
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1645
    .local v1, numStreamTypes:I
    const/4 v4, 0x0

    .local v4, streamType:I
    :goto_9
    if-ge v4, v1, :cond_50

    .line 1646
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 1648
    .local v3, streamState:Landroid/media/AudioService$VolumeStreamState;
    monitor-enter v3

    .line 1649
    :try_start_10
    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 1652
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1653
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1654
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    if-ge v0, v2, :cond_49

    .line 1655
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2002(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1656
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 1654
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1659
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_49
    monitor-exit v3

    .line 1645
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1659
    :catchall_4d
    move-exception v5

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_10 .. :try_end_4f} :catchall_4d

    throw v5

    .line 1662
    .end local v3           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_50
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 1665
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5, v7}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1666
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .registers 6
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 5042
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5044
    :try_start_3
    iput p2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5045
    iput p3, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5046
    monitor-exit v1

    .line 5047
    return-void

    .line 5046
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"
    .parameter "callingPackageName"

    .prologue
    .line 3846
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_29

    .line 3852
    const-string v1, "AudioService"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    const/4 v1, 0x0

    .line 3913
    :goto_28
    return v1

    .line 3856
    :cond_29
    sget-object v12, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3857
    :try_start_2c
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_38

    .line 3858
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_28

    .line 3911
    :catchall_35
    move-exception v1

    monitor-exit v12
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_35

    throw v1

    .line 3864
    :cond_38
    :try_start_38
    new-instance v7, Landroid/media/AudioService$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    .line 3866
    .local v7, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v1, 0x0

    :try_start_40
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_76

    .line 3873
    :try_start_45
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_a5

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 3876
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_9a

    .line 3879
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3880
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_28

    .line 3867
    :catch_76
    move-exception v10

    .line 3869
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_28

    .line 3884
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_9a
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$FocusStackEntry;

    .line 3885
    .local v11, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v11}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 3889
    .end local v11           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_a5
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_d2

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_b7
    .catchall {:try_start_45 .. :try_end_b7} :catchall_35

    if-eqz v1, :cond_d2

    .line 3891
    :try_start_b9
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v3, p2, -0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_b9 .. :try_end_d2} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_d2} :catch_fe

    .line 3901
    :cond_d2
    :goto_d2
    const/4 v1, 0x0

    :try_start_d3
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 3904
    iget-object v13, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/AudioService$FocusStackEntry;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioService$FocusStackEntry;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/AudioService$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3908
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_f4
    .catchall {:try_start_d3 .. :try_end_f4} :catchall_35

    .line 3909
    const/16 v1, 0xf

    :try_start_f6
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 3910
    monitor-exit v2
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_11b

    .line 3911
    :try_start_fa
    monitor-exit v12

    .line 3913
    const/4 v1, 0x1

    goto/16 :goto_28

    .line 3894
    :catch_fe
    move-exception v10

    .line 3895
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failure to signal loss of focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_11a
    .catchall {:try_start_fa .. :try_end_11a} :catchall_35

    goto :goto_d2

    .line 3910
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_11b
    move-exception v1

    :try_start_11c
    monitor-exit v2
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11b

    :try_start_11d
    throw v1
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_35
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .registers 11
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 2366
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 2367
    const/16 v1, 0x80

    const/4 v2, 0x2

    if-ne p2, v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    :try_start_a
    invoke-direct {p0, v1, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 2369
    .local v6, delay:I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x15

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2375
    monitor-exit v7

    .line 2376
    return v6

    .line 2375
    .end local v6           #delay:I
    :catchall_1b
    move-exception v0

    monitor-exit v7
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 1704
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 1705
    return-void
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .registers 10
    .parameter "on"

    .prologue
    const/4 v4, 0x0

    .line 5366
    iget-object v7, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5367
    :try_start_4
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 5368
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_17

    :goto_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5372
    monitor-exit v7

    .line 5373
    return-void

    .line 5368
    :cond_17
    const/16 v4, 0xa

    goto :goto_10

    .line 5372
    :catchall_1a
    move-exception v0

    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .registers 15
    .parameter "on"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1686
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1695
    :goto_e
    return-void

    .line 1689
    :cond_f
    if-eqz p1, :cond_29

    const/4 v0, 0x3

    :goto_12
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1691
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1693
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v2

    move-object v11, v5

    move v12, v3

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_e

    :cond_29
    move v0, v3

    .line 1689
    goto :goto_12
.end method

.method public setMasterMute(ZILandroid/os/IBinder;)V
    .registers 11
    .parameter "state"
    .parameter "flags"
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    .line 1045
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_1b

    .line 1046
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1048
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    :goto_11
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1050
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 1052
    :cond_1b
    return-void

    :cond_1c
    move v3, v2

    .line 1048
    goto :goto_11
.end method

.method public setMasterVolume(II)V
    .registers 5
    .parameter "volume"
    .parameter "flags"

    .prologue
    .line 1072
    if-gez p1, :cond_b

    .line 1073
    const/4 p1, 0x0

    .line 1077
    :cond_3
    :goto_3
    int-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    .line 1078
    return-void

    .line 1074
    :cond_b
    const/16 v0, 0x64

    if-le p1, v0, :cond_3

    .line 1075
    const/16 p1, 0x64

    goto :goto_3
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .registers 7
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v3, -0x1

    .line 1313
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1333
    :cond_a
    :goto_a
    return-void

    .line 1317
    :cond_b
    if-lt p1, v3, :cond_a

    const/4 v1, 0x4

    if-ge p1, v1, :cond_a

    .line 1321
    const/4 v0, 0x0

    .line 1322
    .local v0, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1323
    if-ne p1, v3, :cond_18

    .line 1324
    :try_start_16
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1326
    :cond_18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 1327
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_27

    .line 1330
    if-eqz v0, :cond_a

    .line 1331
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_a

    .line 1327
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method setModeInt(ILandroid/os/IBinder;I)I
    .registers 21
    .parameter "mode"
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 1339
    const/4 v13, 0x0

    .line 1340
    .local v13, newModeOwnerPid:I
    if-nez p2, :cond_d

    .line 1341
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 1420
    .end local v13           #newModeOwnerPid:I
    .local v14, newModeOwnerPid:I
    :goto_c
    return v14

    .line 1345
    .end local v14           #newModeOwnerPid:I
    .restart local v13       #newModeOwnerPid:I
    :cond_d
    const/4 v11, 0x0

    .line 1346
    .local v11, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1347
    .local v12, iter:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1348
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1349
    .local v10, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v10}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_16

    .line 1350
    move-object v11, v10

    .line 1352
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 1353
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v11, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1357
    .end local v10           #h:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_36
    const/4 v15, 0x0

    .line 1359
    .local v15, status:I
    :cond_37
    if-nez p1, :cond_cb

    .line 1361
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_56

    .line 1362
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v11, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1363
    .restart local v11       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1364
    invoke-virtual {v11}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 1384
    :cond_56
    :goto_56
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_123

    .line 1385
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v15

    .line 1386
    if-nez v15, :cond_110

    .line 1387
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioService;->mMode:I

    .line 1399
    :goto_6a
    if-eqz v15, :cond_76

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1401
    :cond_76
    if-nez v15, :cond_c8

    .line 1402
    if-eqz p1, :cond_8c

    .line 1403
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_126

    .line 1404
    const-string v3, "AudioService"

    const-string/jumbo v4, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_8c
    :goto_8c
    const/high16 v3, -0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v16

    .line 1410
    .local v16, streamType:I
    const/16 v3, -0xc8

    move/from16 v0, v16

    if-ne v0, v3, :cond_9c

    .line 1412
    const/16 v16, 0x3

    .line 1414
    :cond_9c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 1415
    .local v6, device:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v16

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v5

    .line 1416
    .local v5, index:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v16

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 1418
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .end local v5           #index:I
    .end local v6           #device:I
    .end local v16           #streamType:I
    :cond_c8
    move v14, v13

    .line 1420
    .end local v13           #newModeOwnerPid:I
    .restart local v14       #newModeOwnerPid:I
    goto/16 :goto_c

    .line 1367
    .end local v14           #newModeOwnerPid:I
    .restart local v13       #newModeOwnerPid:I
    :cond_cb
    if-nez v11, :cond_d8

    .line 1368
    new-instance v11, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v11           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 1372
    .restart local v11       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_d8
    const/4 v3, 0x0

    :try_start_d9
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_de} :catch_ed

    .line 1380
    :goto_de
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1381
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_56

    .line 1373
    :catch_ed
    move-exception v9

    .line 1375
    .local v9, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode() could not link to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " binder death"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 1389
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_110
    if-eqz v11, :cond_11f

    .line 1390
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1391
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1394
    :cond_11f
    const/16 p1, 0x0

    goto/16 :goto_6a

    .line 1397
    :cond_123
    const/4 v15, 0x0

    goto/16 :goto_6a

    .line 1406
    :cond_126
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v13

    goto/16 :goto_8c
.end method

.method public setPlaybackInfoForRcc(III)V
    .registers 11
    .parameter "rccId"
    .parameter "what"
    .parameter "value"

    .prologue
    .line 5050
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5052
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .registers 10
    .parameter "vol"

    .prologue
    .line 5259
    const/4 v1, -0x1

    .line 5260
    .local v1, rccId:I
    iget-object v6, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    monitor-enter v6

    .line 5261
    :try_start_4
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v5, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_d

    .line 5262
    monitor-exit v6

    .line 5285
    :cond_c
    :goto_c
    return-void

    .line 5264
    :cond_d
    iget-object v5, p0, Landroid/media/AudioService;->mMainRemote:Landroid/media/AudioService$RemotePlaybackState;

    iget v1, v5, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5265
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_3f

    .line 5266
    const/4 v3, 0x0

    .line 5267
    .local v3, rvo:Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    .line 5268
    :try_start_16
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5269
    .local v4, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 5270
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5271
    .local v2, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget v5, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    if-ne v5, v1, :cond_1c

    .line 5273
    iget-object v3, v2, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5277
    .end local v2           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_2e
    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_42

    .line 5278
    if-eqz v3, :cond_c

    .line 5280
    const/4 v5, 0x0

    :try_start_32
    invoke-interface {v3, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_c

    .line 5281
    :catch_36
    move-exception v0

    .line 5282
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "AudioService"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 5265
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #rvo:Landroid/media/IRemoteVolumeObserver;
    .end local v4           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_3f
    move-exception v5

    :try_start_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v5

    .line 5277
    .restart local v3       #rvo:Landroid/media/IRemoteVolumeObserver;
    :catchall_42
    move-exception v5

    :try_start_43
    monitor-exit v6
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v5
.end method

.method public setRingerMode(I)V
    .registers 4
    .parameter "ringerMode"

    .prologue
    const/4 v1, 0x1

    .line 1143
    if-ne p1, v1, :cond_8

    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_8

    .line 1144
    const/4 p1, 0x0

    .line 1146
    :cond_8
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    if-eq p1, v0, :cond_14

    .line 1147
    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1149
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 1151
    :cond_14
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .registers 5
    .parameter "player"

    .prologue
    .line 5377
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5378
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 5379
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 9
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 1670
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1677
    :goto_a
    return-void

    .line 1673
    :cond_b
    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    :goto_e
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1675
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v5, 0x0

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_a

    :cond_1d
    move v0, v3

    .line 1673
    goto :goto_e
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .registers 5
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1033
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1034
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1036
    :cond_d
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .registers 6
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1024
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 1025
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, p1, :cond_11

    .line 1024
    :cond_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1027
    :cond_11
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_e

    .line 1029
    :cond_19
    return-void
.end method

.method public setStreamVolume(III)V
    .registers 13
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 810
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 811
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    aget-object v8, v0, v1

    .line 813
    .local v8, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 815
    .local v3, device:I
    invoke-static {v8}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_66

    move v0, v5

    :goto_18
    invoke-virtual {v8, v3, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result v7

    .line 818
    .local v7, oldIndex:I
    mul-int/lit8 v0, p2, 0xa

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    invoke-direct {p0, v0, p1, v1}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 821
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_34

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v1

    if-ne v0, v1, :cond_47

    .line 824
    :cond_34
    if-nez p2, :cond_6a

    .line 825
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_68

    move v6, v5

    .line 827
    .local v6, newRingerMode:I
    :goto_3b
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 835
    :goto_44
    invoke-virtual {p0, v6}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 838
    .end local v6           #newRingerMode:I
    :cond_47
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v0, p1

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZZ)V

    .line 840
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-eqz v1, :cond_6c

    :goto_5e
    invoke-virtual {v0, v3, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(IZ)I

    move-result p2

    .line 843
    invoke-direct {p0, p1, v7, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 844
    return-void

    .end local v7           #oldIndex:I
    :cond_66
    move v0, v4

    .line 815
    goto :goto_18

    .restart local v7       #oldIndex:I
    :cond_68
    move v6, v4

    .line 825
    goto :goto_3b

    .line 833
    :cond_6a
    const/4 v6, 0x2

    .restart local v6       #newRingerMode:I
    goto :goto_44

    .end local v6           #newRingerMode:I
    :cond_6c
    move v5, v4

    .line 840
    goto :goto_5e
.end method

.method public setVibrateSetting(II)V
    .registers 4
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1241
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_5

    .line 1248
    :goto_4
    return-void

    .line 1243
    :cond_5
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1246
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    goto :goto_4
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .registers 12
    .parameter "device"
    .parameter "state"
    .parameter "name"

    .prologue
    .line 2352
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 2353
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 2354
    .local v6, delay:I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x14

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 2360
    monitor-exit v7

    .line 2361
    return-void

    .line 2360
    .end local v6           #delay:I
    :catchall_14
    move-exception v0

    monitor-exit v7
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public shouldVibrate(I)Z
    .registers 5
    .parameter "vibrateType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1213
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_7

    .line 1228
    :goto_6
    :pswitch_6
    return v1

    .line 1215
    :cond_7
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_24

    goto :goto_6

    .line 1218
    :pswitch_f
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_17

    :goto_15
    move v1, v0

    goto :goto_6

    :cond_17
    move v0, v1

    goto :goto_15

    .line 1221
    :pswitch_19
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-ne v2, v0, :cond_21

    :goto_1f
    move v1, v0

    goto :goto_6

    :cond_21
    move v0, v1

    goto :goto_1f

    .line 1215
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_19
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1716
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_e

    .line 1722
    :cond_d
    :goto_d
    return-void

    .line 1720
    :cond_e
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1721
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_d
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5
    .parameter "observer"

    .prologue
    .line 5388
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5389
    :try_start_3
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5390
    .local v0, routes:Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5391
    monitor-exit v2

    return-object v0

    .line 5392
    .end local v0           #routes:Landroid/media/AudioRoutesInfo;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 4
    .parameter "cb"

    .prologue
    .line 1726
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_e

    .line 1734
    :cond_d
    :goto_d
    return-void

    .line 1730
    :cond_e
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1731
    .local v0, client:Landroid/media/AudioService$ScoClient;
    if-eqz v0, :cond_d

    .line 1732
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_d
.end method

.method public unloadSoundEffects()V
    .registers 8

    .prologue
    .line 1562
    iget-object v4, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1563
    :try_start_3
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_9

    .line 1564
    monitor-exit v4

    .line 1588
    :goto_8
    return-void

    .line 1567
    :cond_9
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1568
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1570
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [I

    .line 1571
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1c
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_27

    .line 1572
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 1571
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1575
    :cond_27
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_28
    const/16 v3, 0x9

    if-ge v0, v3, :cond_65

    .line 1576
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_38

    .line 1575
    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1579
    :cond_38
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_35

    .line 1580
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1581
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 1582
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_35

    .line 1587
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_62
    move-exception v3

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v3

    .line 1585
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_65
    :try_start_65
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 1586
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1587
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_62

    goto :goto_8
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 4
    .parameter "clientId"

    .prologue
    .line 3937
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3938
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 3939
    monitor-exit v1

    .line 3940
    return-void

    .line 3939
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public unregisterMediaButtonEventReceiverForCalls()V
    .registers 3

    .prologue
    .line 4798
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 4800
    const-string v0, "AudioService"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    :goto_11
    return-void

    .line 4803
    :cond_12
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 4804
    const/4 v0, 0x0

    :try_start_16
    iput-object v0, p0, Landroid/media/AudioService;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 4805
    monitor-exit v1

    goto :goto_11

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 7
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 4765
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4768
    :try_start_1b
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_32

    .line 4769
    :try_start_1e
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 4770
    .local v0, topOfStackWillChange:Z
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 4771
    if-eqz v0, :cond_2c

    .line 4773
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4775
    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2f

    .line 4776
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_32

    .line 4777
    return-void

    .line 4775
    .end local v0           #topOfStackWillChange:Z
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1

    .line 4776
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .registers 8
    .parameter "mediaIntent"
    .parameter "rcClient"

    .prologue
    .line 4883
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4884
    :try_start_3
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_35

    .line 4885
    :try_start_6
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4886
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 4887
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 4888
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4892
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 4894
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 4895
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    goto :goto_c

    .line 4898
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_32
    move-exception v2

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    :try_start_34
    throw v2

    .line 4899
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_35

    throw v2

    .line 4898
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_38
    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_32

    .line 4899
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_35

    .line 4900
    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .registers 9
    .parameter "rcd"

    .prologue
    .line 5015
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5017
    if-eqz p1, :cond_9

    :try_start_5
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq p1, v3, :cond_b

    .line 5019
    :cond_9
    monitor-exit v4

    .line 5039
    :goto_a
    return-void

    .line 5022
    :cond_b
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5023
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5026
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5027
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 5028
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5029
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_4a

    if-eqz v3, :cond_17

    .line 5031
    :try_start_27
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_4a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_17

    .line 5032
    :catch_2d
    move-exception v0

    .line 5033
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2e
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error disconnecting remote control display to client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17

    .line 5038
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_4a
    move-exception v3

    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_4a

    throw v3

    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_4d
    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4a

    goto :goto_a
.end method
