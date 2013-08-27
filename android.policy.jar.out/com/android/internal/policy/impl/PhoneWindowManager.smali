.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;
    }
.end annotation


# static fields
.field static final APPLICATION_LAYER:I = 0x2

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field static final BOOT_PROGRESS_LAYER:I = 0x18

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field public static final DISPLAY_MODE_PATH:Ljava/lang/String; = "/sys/class/display/mode"

.field static final DRAG_LAYER:I = 0x16

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field static final HIDDEN_NAV_CONSUMER_LAYER:I = 0x1a

.field static final INPUT_METHOD_DIALOG_LAYER:I = 0xa

.field static final INPUT_METHOD_LAYER:I = 0x9

.field static final KEYGUARD_DIALOG_LAYER:I = 0xc

.field static final KEYGUARD_LAYER:I = 0xb

.field private static final KEY_DOWN_HAPPEN:Ljava/lang/String; = "com.android.internal.policy.impl.KEY_DOWN_HAPPEN"

.field private static final KEY_DOWN_HAPPEN_CHILD_LOCK:Ljava/lang/String; = "com.android.internal.policy.impl.KEY_DOWN_HAPPEN_SHILD_LOCK"

.field private static final KEY_DOWN_HAPPEN_LOCK:Ljava/lang/String; = "com.android.internal.policy.impl.KEY_DOWN_HAPPEN_LOCK"

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_DIALOG:I = 0x1

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x2

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field static final NAVIGATION_BAR_LAYER:I = 0x13

.field static final NAVIGATION_BAR_PANEL_LAYER:I = 0x14

.field static final PHONE_LAYER:I = 0x3

.field static final POINTER_LAYER:I = 0x19

.field static final PRINT_ANIM:Z = false

.field static final PRIORITY_PHONE_LAYER:I = 0x7

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field static final SCREENSAVER_LAYER:I = 0xd

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SEARCH_BAR_LAYER:I = 0x4

.field static final SECURE_SYSTEM_OVERLAY_LAYER:I = 0x17

.field static final SEPARATE_TIMEOUT_FOR_SCREEN_SAVER:Z = false

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field static final STATUS_BAR_LAYER:I = 0xf

.field static final STATUS_BAR_PANEL_LAYER:I = 0x10

.field static final STATUS_BAR_SUB_PANEL_LAYER:I = 0xe

.field static final SYSTEM_ALERT_LAYER:I = 0x8

.field static final SYSTEM_DIALOG_LAYER:I = 0x5

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_ERROR_LAYER:I = 0x15

.field static final SYSTEM_OVERLAY_LAYER:I = 0x12

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = 0x6

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TOAST_LAYER:I = 0x6

.field private static final TV_MENU_STOP:Ljava/lang/String; = "com.amlogic.tv.tvmenu.stop"

.field private static final VFM_CTRL_PATH:Ljava/lang/String; = "/sys/class/vfm/map"

.field private static final VIDEO2_CTRL_PATH:Ljava/lang/String; = "/sys/class/video2/clone"

.field static final VOLUME_OVERLAY_LAYER:I = 0x11

.field static final WALLPAPER_LAYER:I = 0x2

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static hdmi_flag:Z

.field static final localLOGV:Z

.field private static mPreVolume:I

.field private static mStatusBarManager:Landroid/app/StatusBarManager;

.field private static mStatusFlag:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field private static mVolumeMute:Z

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GameDimInfo;",
            ">;"
        }
    .end annotation
.end field

.field private gCustKeyBCTBuf:[I

.field private gKeyMultiplexDstBuf:[I

.field private gKeyMultiplexSrcBuf:[I

.field mAccelerometerDefault:Z

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field final mAllowSystemUiDelay:Ljava/lang/Runnable;

.field mAssistKeyLongPressed:Z

.field public mAudioManager:Landroid/media/AudioManager;

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:Z

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field mExternalDisplayHeight:I

.field mExternalDisplayWidth:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field mForceStatusBar:Z

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHasSystemNavBar:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiHwPlugged:Z

.field mHdmiPlugged:Z

.field mHdmiPluggedReceiver:Landroid/content/BroadcastReceiver;

.field mHdmiRotation:I

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field private mHoldObserver:Landroid/os/UEventObserver;

.field mHomeIntent:Landroid/content/Intent;

.field mHomeLongPressed:Z

.field mHomePressed:Z

.field mIncallPowerBehavior:I

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPendingPowerKeyUpCanceled:Z

.field mPluggedIn:Z

.field mPointerLocationInputChannel:Landroid/view/InputChannel;

.field mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/LocalPowerManager;

.field mPowerReceiver:Landroid/content/BroadcastReceiver;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mResettingSystemUiFlags:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Ljava/lang/Runnable;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenSaverEnabledByUser:Z

.field mScreenSaverFeatureAvailable:Z

.field mScreenSaverMayRun:Z

.field mScreenSaverTimeout:I

.field private mScreenshotChordEnabled:Z

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSystemBooted:Z

.field mSystemBottom:I

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mUiMode:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyTriggered:Z

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 285
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusFlag:Z

    .line 286
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->hdmi_flag:Z

    .line 304
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 305
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x40

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 307
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 309
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xcf

    const-string v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 311
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd0

    const-string v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 317
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v1, 0xd2

    const-string v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 503
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 504
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 505
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 506
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 507
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 1820
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 1825
    sput-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeMute:Z

    .line 1826
    sput v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreVolume:I

    return-void

    .line 1820
    :array_6a
    .array-data 0x4
        0xd3t 0x7t 0x0t 0x0t
        0xdat 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 198
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->GameList:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 333
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 353
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 357
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 360
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 361
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 362
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 363
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 364
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 365
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 366
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 368
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 374
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 375
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 386
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 396
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 402
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 403
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 406
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 412
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 413
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 414
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 415
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 416
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 417
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 419
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 494
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 496
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 499
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 501
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 530
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    .line 531
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverEnabledByUser:Z

    .line 532
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    .line 544
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 545
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 546
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 547
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 550
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 568
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 596
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 602
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldObserver:Landroid/os/UEventObserver;

    .line 620
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPluggedReceiver:Landroid/content/BroadcastReceiver;

    .line 808
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 836
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 2549
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowSystemUiDelay:Ljava/lang/Runnable;

    .line 2618
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 3697
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 3698
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 3700
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 4191
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 4209
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 4626
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 4765
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    .line 5250
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gCustKeyBCTBuf:[I

    .line 5290
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexSrcBuf:[I

    .line 5291
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexDstBuf:[I

    return-void
.end method

.method private SendCustomerKeyBCT(ZI)V
    .registers 9
    .parameter "down"
    .parameter "keyCode"

    .prologue
    .line 5253
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, tmp_val:I
    const/4 v0, 0x0

    .line 5254
    .local v0, find_flag:I
    const-string v2, ""

    .line 5256
    .local v2, tmp_str:Ljava/lang/String;
    if-nez p1, :cond_8

    .line 5288
    :cond_7
    :goto_7
    return-void

    .line 5260
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gCustKeyBCTBuf:[I

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gCustKeyBCTBuf:[I

    array-length v4, v4

    if-gtz v4, :cond_29

    .line 5262
    :cond_11
    const-string v4, "tv.cust.keybct.en"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5263
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5264
    if-eqz v3, :cond_7

    .line 5269
    const-string v4, "tv.cust.keybct.cnt"

    const-string v5, "tv.cust.keybct.buf"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getConfigKeys(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gCustKeyBCTBuf:[I

    .line 5273
    :cond_29
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gCustKeyBCTBuf:[I

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gCustKeyBCTBuf:[I

    array-length v4, v4

    if-lez v4, :cond_7

    .line 5277
    const/4 v0, 0x0

    .line 5278
    const/4 v1, 0x0

    :goto_34
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gCustKeyBCTBuf:[I

    array-length v4, v4

    if-ge v1, v4, :cond_40

    .line 5279
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gCustKeyBCTBuf:[I

    aget v4, v4, v1

    if-ne p2, v4, :cond_48

    .line 5280
    const/4 v0, 0x1

    .line 5285
    :cond_40
    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 5286
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->SendOneKeyBCT(ZIZ)V

    goto :goto_7

    .line 5278
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_34
.end method

.method private SendOneKeyBCT(ZI)V
    .registers 4
    .parameter "down"
    .parameter "keyCode"

    .prologue
    .line 5210
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->SendOneKeyBCT(ZIZ)V

    .line 5211
    return-void
.end method

.method private SendOneKeyBCT(ZIZ)V
    .registers 12
    .parameter "down"
    .parameter "keyCode"
    .parameter "enable_judge"

    .prologue
    const/4 v7, 0x1

    .line 5214
    const/4 v4, 0x0

    .line 5215
    .local v4, tmp_val:I
    const-string v3, ""

    .local v3, tmp_str:Ljava/lang/String;
    const-string v1, ""

    .local v1, bct_name_str:Ljava/lang/String;
    const-string v0, ""

    .line 5217
    .local v0, bct_extra_str:Ljava/lang/String;
    if-eqz p1, :cond_1a

    .line 5218
    if-ne p3, v7, :cond_1b

    .line 5220
    const-string v5, "tv.cust.keybct.en"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5221
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5222
    if-nez v4, :cond_1b

    .line 5248
    :cond_1a
    :goto_1a
    return-void

    .line 5228
    :cond_1b
    const-string v5, "tv.cust.keybct.name"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5229
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v7, :cond_1a

    .line 5234
    const-string v5, "tv.cust.keybct.extra"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5235
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v7, :cond_1a

    .line 5239
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5240
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5241
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5242
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5244
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendOneKeyBCT: bct name["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "],  extra name["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "key code ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method private applyLidSwitchState()V
    .registers 4

    .prologue
    .line 4809
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isBuiltInKeyboardVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/LocalPowerManager;->setKeyboardVisibility(Z)V

    .line 4811
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_1a

    .line 4812
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/os/LocalPowerManager;->goToSleep(J)V

    .line 4814
    :cond_1a
    return-void
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .registers 6
    .parameter "sysui"
    .parameter "fl"
    .parameter "r"

    .prologue
    .line 2929
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_30

    .line 2932
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_31

    .line 2933
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 2934
    :cond_12
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1c

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 2935
    :cond_1c
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 2936
    :cond_26
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_30

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 2944
    :cond_30
    :goto_30
    return-void

    .line 2938
    :cond_31
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_3b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 2939
    :cond_3b
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_45

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 2940
    :cond_45
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_4f

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 2941
    :cond_4f
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_30

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_30
.end method

.method private cancelPendingPowerKeyAction()V
    .registers 3

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_b

    .line 782
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 784
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_12

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 787
    :cond_12
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 806
    return-void
.end method

.method private disablePointerLocation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1295
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    if-eqz v1, :cond_c

    .line 1296
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;->dispose()V

    .line 1297
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 1300
    :cond_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_17

    .line 1301
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 1302
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1305
    :cond_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_2c

    .line 1306
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1308
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1309
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1311
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_2c
    return-void
.end method

.method private enablePointerLocation()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 1267
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_57

    .line 1268
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1269
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1271
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1274
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1275
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1279
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1280
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1281
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1283
    .local v1, wm:Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1284
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-string v3, "PointerLocationView"

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    .line 1288
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationInputEventReceiver:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationInputEventReceiver;

    .line 1292
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_57
    return-void
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .prologue
    .line 1808
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1810
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_13

    .line 1811
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_13
    return-object v0
.end method

.method private getConfigKeys(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 16
    .parameter "key_cnt"
    .parameter "key_item"

    .prologue
    .line 5162
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v0, 0x0

    .local v0, group_count:I
    const/4 v8, 0x0

    .local v8, total_cnt:I
    const/4 v7, 0x0

    .line 5164
    .local v7, tmp_val:I
    const-string v6, ""

    .local v6, tmp_str:Ljava/lang/String;
    const-string v5, ""

    .line 5168
    .local v5, key_str:Ljava/lang/String;
    const-string v9, "0"

    invoke-static {p1, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5169
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5170
    if-gtz v0, :cond_19

    .line 5171
    const/4 v9, 0x0

    new-array v3, v9, [I

    .local v3, key_buf:[I
    move-object v4, v3

    .line 5206
    .end local v3           #key_buf:[I
    .local v4, key_buf:[I
    :goto_18
    return-object v4

    .line 5176
    .end local v4           #key_buf:[I
    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_6e

    .line 5177
    const-string v9, "%s%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 5178
    const-string v9, ""

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5179
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6b

    .line 5180
    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 5181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5184
    :cond_5a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5176
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 5189
    :cond_6e
    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5190
    .local v2, key_array:[Ljava/lang/String;
    array-length v9, v2

    if-gtz v9, :cond_a3

    .line 5191
    const/4 v9, 0x0

    new-array v3, v9, [I

    .line 5196
    .restart local v3       #key_buf:[I
    :goto_7a
    array-length v9, v2

    if-lez v9, :cond_a7

    .line 5197
    const/4 v1, 0x0

    :goto_7e
    array-length v9, v2

    if-ge v1, v9, :cond_a7

    .line 5198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEYCODE_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v7

    .line 5199
    if-eqz v7, :cond_a0

    .line 5200
    aput v7, v3, v8

    .line 5201
    add-int/lit8 v8, v8, 0x1

    .line 5197
    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    .line 5193
    .end local v3           #key_buf:[I
    :cond_a3
    array-length v9, v2

    new-array v3, v9, [I

    .restart local v3       #key_buf:[I
    goto :goto_7a

    :cond_a7
    move-object v4, v3

    .line 5206
    .end local v3           #key_buf:[I
    .restart local v4       #key_buf:[I
    goto/16 :goto_18
.end method

.method public static getCurDisplayMode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3552
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/class/display/mode"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_1f

    .line 3554
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1a

    move-result-object v1

    .line 3556
    .local v1, modeStr:Ljava/lang/String;
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 3558
    if-nez v1, :cond_19

    const-string v1, "panel"

    .line 3562
    .end local v1           #modeStr:Ljava/lang/String;
    :cond_19
    :goto_19
    return-object v1

    .line 3556
    :catchall_1a
    move-exception v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v3
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_1f

    .line 3560
    :catch_1f
    move-exception v0

    .line 3561
    .local v0, e:Ljava/io/IOException;
    const-string v3, "WindowManager"

    const-string v4, "IO Exception when read: /sys/class/display/mode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3562
    const-string v1, "panel"

    goto :goto_19
.end method

.method private getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 4

    .prologue
    .line 4712
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverFeatureAvailable:Z

    if-nez v1, :cond_6

    .line 4713
    const/4 v0, 0x0

    .line 4721
    :cond_5
    :goto_5
    return-object v0

    .line 4716
    :cond_6
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 4718
    .local v0, sandman:Landroid/service/dreams/IDreamManager;
    if-nez v0, :cond_5

    .line 4719
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IDreamManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 4591
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 4592
    .local v0, ar:[I
    if-nez v0, :cond_8

    .line 4593
    const/4 v2, 0x0

    .line 4599
    :cond_7
    return-object v2

    .line 4595
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 4596
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 4597
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 4596
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_10

    .line 2506
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 2508
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 1803
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private handleLongPressOnHome()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 862
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-gez v2, :cond_21

    .line 863
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 865
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v2, :cond_1f

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v2, v6, :cond_21

    .line 867
    :cond_1f
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 871
    :cond_21
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v2, :cond_2f

    .line 872
    invoke-virtual {p0, v7, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 873
    const-string v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 877
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 880
    :cond_2f
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v5, :cond_37

    .line 881
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 894
    :cond_36
    :goto_36
    return-void

    .line 882
    :cond_37
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v2, v6, :cond_36

    .line 884
    :try_start_3b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 885
    .local v1, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_36

    .line 886
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_44} :catch_45

    goto :goto_36

    .line 888
    .end local v1           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :catch_45
    move-exception v0

    .line 889
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_36
.end method

.method private handleMultiplexingKey(ZI)V
    .registers 10
    .parameter "down"
    .parameter "keyCode"

    .prologue
    .line 5294
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, tmp_val:I
    const/4 v0, 0x0

    .line 5295
    .local v0, find_flag:I
    const-string v2, ""

    .line 5297
    .local v2, tmp_str:Ljava/lang/String;
    if-nez p1, :cond_8

    .line 5338
    :cond_7
    :goto_7
    return-void

    .line 5301
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexSrcBuf:[I

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexSrcBuf:[I

    array-length v4, v4

    if-lez v4, :cond_1a

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexDstBuf:[I

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexDstBuf:[I

    array-length v4, v4

    if-gtz v4, :cond_3c

    .line 5304
    :cond_1a
    const-string v4, "tv.keymultiplex.en"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5305
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 5306
    if-eqz v3, :cond_7

    .line 5311
    const-string v4, "tv.keymultiplex.cnt"

    const-string v5, "tv.keymultiplex.srcbuf"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getConfigKeys(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexSrcBuf:[I

    .line 5315
    const-string v4, "tv.keymultiplex.cnt"

    const-string v5, "tv.keymultiplex.dstbuf"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getConfigKeys(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexDstBuf:[I

    .line 5319
    :cond_3c
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexSrcBuf:[I

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexSrcBuf:[I

    array-length v4, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexDstBuf:[I

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexDstBuf:[I

    array-length v4, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexSrcBuf:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexDstBuf:[I

    array-length v5, v5

    if-ne v4, v5, :cond_7

    .line 5325
    const/4 v0, 0x0

    .line 5326
    const/4 v1, 0x0

    :goto_58
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexSrcBuf:[I

    array-length v4, v4

    if-ge v1, v4, :cond_68

    .line 5327
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexSrcBuf:[I

    aget v4, v4, v1

    if-ne p2, v4, :cond_87

    .line 5328
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->gKeyMultiplexDstBuf:[I

    aget v3, v4, v1

    .line 5329
    const/4 v0, 0x1

    .line 5334
    :cond_68
    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 5335
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendKeyEvent(I)V

    .line 5336
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMultiplexingKey: send key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 5326
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_58
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .registers 10
    .parameter "win"
    .parameter "fallbackEvent"
    .parameter "policyFlags"

    .prologue
    const/4 v3, 0x1

    .line 2458
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 2459
    .local v0, actions:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_14

    .line 2460
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 2462
    .local v1, delayMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_14

    .line 2466
    .end local v1           #delayMillis:J
    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method private interceptPowerKeyDown(Z)V
    .registers 6
    .parameter "handled"

    .prologue
    .line 766
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 767
    if-nez p1, :cond_f

    .line 768
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 770
    :cond_f
    return-void
.end method

.method private interceptPowerKeyUp(Z)Z
    .registers 5
    .parameter "canceled"

    .prologue
    const/4 v0, 0x0

    .line 773
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_f

    .line 774
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 775
    if-nez p1, :cond_f

    const/4 v0, 0x1

    .line 777
    :cond_f
    return v0
.end method

.method private interceptScreenshotChord()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x96

    .line 790
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_35

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 793
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    .line 795
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 796
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 798
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 802
    .end local v0           #now:J
    :cond_35
    return-void
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .parameter "rotation"

    .prologue
    .line 4560
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isBuiltInKeyboardVisible()Z
    .registers 2

    .prologue
    .line 1400
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isHidden(I)Z
    .registers 5
    .parameter "accessibilityMode"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1389
    packed-switch p1, :pswitch_data_14

    move v0, v1

    .line 1395
    :cond_6
    :goto_6
    return v0

    .line 1391
    :pswitch_7
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 1393
    :pswitch_d
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_6

    move v0, v1

    goto :goto_6

    .line 1389
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .parameter "rotation"

    .prologue
    .line 4556
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 4315
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 4316
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    goto :goto_5
.end method

.method private launchAssistAction()V
    .registers 5

    .prologue
    .line 2490
    const-string v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2491
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 2492
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_17

    .line 2493
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2497
    :try_start_12
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_17} :catch_18

    .line 2502
    :cond_17
    :goto_17
    return-void

    .line 2498
    :catch_18
    move-exception v0

    .line 2499
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist action."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private launchAssistLongPressAction()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2470
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2471
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2474
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2475
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2479
    :try_start_16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 2480
    .local v2, searchManager:Landroid/app/SearchManager;
    if-eqz v2, :cond_1f

    .line 2481
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 2483
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_24} :catch_25

    .line 2487
    .end local v2           #searchManager:Landroid/app/SearchManager;
    :goto_24
    return-void

    .line 2484
    :catch_25
    move-exception v0

    .line 2485
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 3260
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3261
    .local v0, top:I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3262
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_13

    .line 3263
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 3265
    :cond_13
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 3266
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3267
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_26

    .line 3268
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 3273
    :cond_26
    return-void
.end method

.method private readRotation(I)I
    .registers 4
    .parameter "resID"

    .prologue
    .line 1315
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_17

    move-result v0

    .line 1316
    .local v0, rotation:I
    sparse-switch v0, :sswitch_data_1a

    .line 1329
    .end local v0           #rotation:I
    :goto_d
    const/4 v1, -0x1

    :goto_e
    return v1

    .line 1318
    .restart local v0       #rotation:I
    :sswitch_f
    const/4 v1, 0x0

    goto :goto_e

    .line 1320
    :sswitch_11
    const/4 v1, 0x1

    goto :goto_e

    .line 1322
    :sswitch_13
    const/4 v1, 0x2

    goto :goto_e

    .line 1324
    :sswitch_15
    const/4 v1, 0x3

    goto :goto_e

    .line 1326
    .end local v0           #rotation:I
    :catch_17
    move-exception v1

    goto :goto_d

    .line 1316
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_f
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_15
    .end sparse-switch
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 4358
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4360
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 4364
    :cond_d
    :goto_d
    return-void

    .line 4361
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private sendKeyEvent(I)V
    .registers 18
    .parameter "keyCode"

    .prologue
    .line 4100
    move/from16 v6, p1

    .line 4101
    .local v6, eventCode:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4103
    .local v1, now:J
    :try_start_6
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 4104
    .local v0, down:Landroid/view/KeyEvent;
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-wide v8, v1

    move-wide v10, v1

    move v13, v6

    invoke-direct/range {v7 .. v14}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 4105
    .local v7, up:Landroid/view/KeyEvent;
    const-string v3, "input"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 4108
    const-string v3, "input"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v7, v4}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_34} :catch_35

    .line 4114
    .end local v0           #down:Landroid/view/KeyEvent;
    .end local v7           #up:Landroid/view/KeyEvent;
    :goto_34
    return-void

    .line 4111
    :catch_35
    move-exception v15

    .line 4112
    .local v15, e:Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "DeadOjbectException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private static setDualDisplay(Z)V
    .registers 4
    .parameter "hdmiPlugged"

    .prologue
    .line 3530
    const-string v1, "camera.busy"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3532
    .local v0, isCameraBusy:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 3533
    const-string v1, "WindowManager"

    const-string v2, "setDualDisplay, camera is busy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    :goto_17
    return-void

    .line 3537
    :cond_18
    if-eqz p0, :cond_37

    .line 3538
    const-string v1, "/sys/class/video2/clone"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    const-string v1, "/sys/class/vfm/map"

    const-string v2, "rm default_ext"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    const-string v1, "/sys/class/vfm/map"

    const-string v2, "add default_ext vdin amvideo2"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    const-string v1, "/sys/class/video2/clone"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 3543
    :cond_37
    const-string v1, "/sys/class/video2/clone"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    const-string v1, "/sys/class/vfm/map"

    const-string v2, "rm default_ext"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    const-string v1, "/sys/class/vfm/map"

    const-string v2, "add default_ext vdin vm amvideo"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private takeScreenshot()V
    .registers 9

    .prologue
    .line 3713
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3714
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_9

    .line 3715
    monitor-exit v4

    .line 3763
    :goto_8
    return-void

    .line 3717
    :cond_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3720
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3721
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 3758
    .local v1, conn:Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3759
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 3760
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3762
    :cond_33
    monitor-exit v4

    goto :goto_8

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #conn:Landroid/content/ServiceConnection;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v3
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .prologue
    .line 4784
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v2

    .line 4785
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v0, 0x1

    .line 4787
    .local v0, enable:Z
    :goto_18
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_33

    .line 4788
    if-eqz v0, :cond_3a

    .line 4790
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    if-gez v1, :cond_37

    const v1, 0x7fffffff

    :goto_25
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 4791
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4796
    :goto_31
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 4798
    :cond_33
    monitor-exit v2

    .line 4799
    return-void

    .line 4785
    .end local v0           #enable:Z
    :cond_35
    const/4 v0, 0x0

    goto :goto_18

    .line 4790
    .restart local v0       #enable:Z
    :cond_37
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    goto :goto_25

    .line 4794
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_31

    .line 4798
    .end local v0           #enable:Z
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private updateSystemUiVisibilityLw()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 5022
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_7

    move v0, v3

    .line 5051
    :goto_6
    return v0

    .line 5025
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v5, v5, -0x1

    and-int v2, v4, v5

    .line 5028
    .local v2, visibility:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v2, v4

    .line 5029
    .local v0, diff:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .line 5030
    .local v1, needsMenu:Z
    if-nez v0, :cond_36

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v4, v1, :cond_36

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-ne v4, v5, :cond_36

    move v0, v3

    .line 5032
    goto :goto_6

    .line 5034
    :cond_36
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 5035
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 5036
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 5037
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method private static writeSysfs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "path"
    .parameter "val"

    .prologue
    const/4 v2, 0x1

    .line 3510
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_25

    .line 3511
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    :goto_24
    return v2

    .line 3516
    :cond_25
    :try_start_25
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x40

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_31} :catch_3e

    .line 3518
    .local v1, writer:Ljava/io/BufferedWriter;
    :try_start_31
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_39

    .line 3520
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3522
    const/4 v2, 0x0

    goto :goto_24

    .line 3520
    :catchall_39
    move-exception v3

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v3
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_3e

    .line 3524
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_3e
    move-exception v0

    .line 3525
    .local v0, e:Ljava/io/IOException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Exception when write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    .registers 22
    .parameter "appToken"
    .parameter "packageName"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"

    .prologue
    .line 1573
    if-nez p2, :cond_4

    .line 1574
    const/4 v7, 0x0

    .line 1667
    :cond_3
    :goto_3
    return-object v7

    .line 1578
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1582
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_9} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_d8

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_10

    if-eqz p6, :cond_1a

    .line 1584
    :cond_10
    const/4 v10, 0x0

    :try_start_11
    invoke-virtual {v2, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 1585
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_1a} :catch_f2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_11 .. :try_end_1a} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_1a} :catch_d8

    .line 1591
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 1592
    .local v8, win:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1593
    .local v6, ta:Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_34

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 1597
    :cond_34
    const/4 v7, 0x0

    goto :goto_3

    .line 1600
    :cond_36
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1601
    .local v5, r:Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1603
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 1609
    or-int/lit8 v10, p8, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x2

    or-int/2addr v10, v11

    or-int/lit8 v11, p8, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x2

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 1619
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_65

    .line 1620
    const/high16 v10, 0x2000

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1623
    :cond_65
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 1626
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1627
    .local v4, params:Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1628
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1629
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1631
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1633
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1635
    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1636
    .local v9, wm:Landroid/view/WindowManager;
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 1638
    .local v7, view:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_b0

    .line 1645
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1652
    :cond_b0
    invoke-interface {v9, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1656
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_b6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1a .. :try_end_b6} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_b6} :catch_d8

    move-result-object v10

    if-nez v10, :cond_3

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1657
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #ta:Landroid/content/res/TypedArray;
    .end local v7           #view:Landroid/view/View;
    .end local v8           #win:Landroid/view/Window;
    .end local v9           #wm:Landroid/view/WindowManager;
    :catch_bc
    move-exception v3

    .line 1659
    .local v3, e:Landroid/view/WindowManager$BadTokenException;
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    .end local v3           #e:Landroid/view/WindowManager$BadTokenException;
    :goto_d5
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1660
    :catch_d8
    move-exception v3

    .line 1664
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d5

    .line 1586
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v2       #context:Landroid/content/Context;
    :catch_f2
    move-exception v10

    goto/16 :goto_1a
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7
    .parameter "config"
    .parameter "keyboardPresence"
    .parameter "navigationPresence"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1406
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_36

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 1408
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 1409
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 1411
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_1d

    if-ne p2, v1, :cond_25

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1414
    :cond_1d
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1415
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_25

    .line 1416
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1420
    :cond_25
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_33

    if-ne p3, v1, :cond_35

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1423
    :cond_33
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1425
    :cond_35
    return-void

    .line 1406
    :cond_36
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .registers 4
    .parameter "visibility"

    .prologue
    .line 2631
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 2634
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .parameter "attrs"

    .prologue
    .line 1372
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_16

    .line 1382
    :goto_5
    return-void

    .line 1377
    :sswitch_6
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1379
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 1372
    nop

    :sswitch_data_16
    .sparse-switch
        0x7d5 -> :sswitch_6
        0x7d6 -> :sswitch_6
        0x7df -> :sswitch_6
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .registers 2

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3435
    const/4 v0, 0x0

    .line 3437
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public allowKeyRepeat()Z
    .registers 2

    .prologue
    .line 5016
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 3296
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_50

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-nez v0, :cond_50

    .line 3298
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1a

    .line 3299
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 3301
    :cond_1a
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_50

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_50

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_50

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_50

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v3, :cond_50

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v3, :cond_50

    .line 3307
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3308
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_3f

    .line 3310
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 3312
    :cond_3f
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_48

    .line 3314
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 3316
    :cond_48
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_50

    .line 3317
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 3321
    :cond_50
    return-void
.end method

.method public beginAnimationLw(II)V
    .registers 5
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v1, 0x0

    .line 3283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3284
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 3286
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 3287
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 3288
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    .line 3289
    return-void
.end method

.method public beginLayoutLw(III)V
    .registers 25
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "displayRotation"

    .prologue
    .line 2679
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 2680
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 2681
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 2682
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 2683
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 2684
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 2685
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 2687
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 2689
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 2691
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 2693
    const/high16 v3, 0x1000

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 2694
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 2697
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 2698
    .local v16, pf:Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 2699
    .local v12, df:Landroid/graphics/Rect;
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 2700
    .local v20, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2701
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2702
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2703
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2707
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_325

    const/4 v15, 0x1

    .line 2713
    .local v15, navVisible:Z
    :goto_f6
    if-eqz v15, :cond_328

    .line 2714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v3, :cond_10a

    .line 2715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 2716
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 2728
    :cond_10a
    :goto_10a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-nez v3, :cond_350

    const/4 v3, 0x1

    :goto_111
    or-int/2addr v15, v3

    .line 2729
    const-string v3, "vplayer.hideStatusBar.enable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_136

    .line 2730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_353

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 2733
    .local v14, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_129
    if-eqz v14, :cond_136

    .line 2734
    iget v3, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_356

    const/16 v19, 0x1

    .line 2735
    .local v19, topIsFullscreen:Z
    :goto_133
    if-eqz v19, :cond_136

    .line 2736
    const/4 v15, 0x0

    .line 2740
    .end local v14           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v19           #topIsFullscreen:Z
    :cond_136
    const-string v3, "mbx.hideStatusBar.enable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_140

    .line 2742
    const/4 v15, 0x0

    .line 2745
    :cond_140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_23e

    .line 2750
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v3, :cond_152

    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_35a

    :cond_152
    const/4 v3, 0x1

    :goto_153
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 2751
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v3, :cond_372

    .line 2753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p3

    sub-int v18, p2, v3

    .line 2754
    .local v18, top:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_1a8

    .line 2757
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayHeight:I

    if-lez v3, :cond_364

    if-lez p2, :cond_364

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35d

    const/4 v3, 0x1

    move v4, v3

    :goto_186
    move/from16 v0, p1

    int-to-float v3, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float/2addr v3, v5

    const/high16 v5, 0x3f80

    cmpl-float v3, v3, v5

    if-lez v3, :cond_361

    const/4 v3, 0x1

    :goto_194
    if-ne v4, v3, :cond_364

    const/16 v17, 0x1

    .line 2760
    .local v17, sameAspect:Z
    :goto_198
    if-eqz v17, :cond_1a8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayHeight:I

    move/from16 v0, v18

    if-le v0, v3, :cond_1a8

    .line 2761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayHeight:I

    move/from16 v18, v0

    .line 2764
    .end local v17           #sameAspect:Z
    :cond_1a8
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2765
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 2766
    if-eqz v15, :cond_368

    .line 2767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2768
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 2769
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 2774
    :goto_1df
    if-eqz v15, :cond_1f3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_1f3

    .line 2778
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 2807
    .end local v18           #top:I
    :cond_1f3
    :goto_1f3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 2808
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 2809
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 2810
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 2811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 2813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2821
    :cond_23e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_324

    .line 2823
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2824
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2825
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    sub-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2826
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    sub-int/2addr v3, v4

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2827
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2828
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2829
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2830
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2832
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 2835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    invoke-interface {v3, v0, v12, v1, v2}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2838
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 2842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_303

    .line 2846
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 2848
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 2849
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 2850
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 2851
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 2860
    :cond_303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_324

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_324

    .line 2864
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 2867
    :cond_324
    return-void

    .line 2707
    .end local v15           #navVisible:Z
    :cond_325
    const/4 v15, 0x0

    goto/16 :goto_f6

    .line 2718
    .restart local v15       #navVisible:Z
    :cond_328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v3, :cond_10a

    .line 2719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v6, "hidden nav"

    const/16 v7, 0x7e6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v3 .. v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_10a

    .line 2728
    :cond_350
    const/4 v3, 0x0

    goto/16 :goto_111

    .line 2730
    :cond_353
    const/4 v14, 0x0

    goto/16 :goto_129

    .line 2734
    .restart local v14       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_356
    const/16 v19, 0x0

    goto/16 :goto_133

    .line 2750
    .end local v14           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_35a
    const/4 v3, 0x0

    goto/16 :goto_153

    .line 2757
    .restart local v18       #top:I
    :cond_35d
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_186

    :cond_361
    const/4 v3, 0x0

    goto/16 :goto_194

    :cond_364
    const/16 v17, 0x0

    goto/16 :goto_198

    .line 2772
    :cond_368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto/16 :goto_1df

    .line 2782
    .end local v18           #top:I
    :cond_372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p3

    sub-int v13, p1, v3

    .line 2783
    .local v13, left:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_38a

    .line 2784
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayWidth:I

    if-le v13, v3, :cond_38a

    .line 2785
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayWidth:I

    .line 2788
    :cond_38a
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v13, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2789
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 2790
    if-eqz v15, :cond_3d5

    .line 2791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 2792
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 2793
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 2798
    :goto_3bf
    if-eqz v15, :cond_1f3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_1f3

    .line 2802
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_1f3

    .line 2796
    :cond_3d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_3bf
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1560
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_14

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_14

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I
    .registers 6
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 1334
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1336
    .local v1, type:I
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_b

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_c

    .line 1368
    :cond_b
    :goto_b
    return v2

    .line 1340
    :cond_c
    const/4 v0, 0x0

    .line 1341
    .local v0, permission:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_22

    .line 1360
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1362
    :goto_12
    :sswitch_12
    if-eqz v0, :cond_b

    .line 1363
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_b

    .line 1365
    const/4 v2, -0x8

    goto :goto_b

    .line 1357
    :sswitch_1e
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1358
    goto :goto_12

    .line 1341
    nop

    :sswitch_data_22
    .sparse-switch
        0x7d2 -> :sswitch_1e
        0x7d3 -> :sswitch_1e
        0x7d5 -> :sswitch_12
        0x7d6 -> :sswitch_1e
        0x7d7 -> :sswitch_1e
        0x7da -> :sswitch_1e
        0x7db -> :sswitch_12
        0x7dd -> :sswitch_12
        0x7e7 -> :sswitch_12
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .registers 4
    .parameter "onWallpaper"

    .prologue
    .line 1797
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_c

    const v0, 0x10a002a

    :goto_7
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_c
    const v0, 0x10a0027

    goto :goto_7
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 4848
    const/4 v1, 0x0

    .line 4853
    .local v1, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    .line 4855
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    move-object v2, v1

    .line 4863
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_a
    if-nez v2, :cond_15

    move-object v1, v2

    .line 4879
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_d
    return-object v3

    .line 4857
    :cond_e
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13

    :cond_13
    move-object v2, v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_a

    .line 4867
    :cond_15
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 4869
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_25

    move-object v1, v2

    .line 4870
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_d

    .line 4873
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_25
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_41

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 4874
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4875
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v1

    .line 4876
    goto :goto_d

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_41
    move-object v1, v2

    .line 4879
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_d
.end method

.method public dismissKeyguardLw()V
    .registers 3

    .prologue
    .line 4338
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4339
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4340
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4347
    :cond_1a
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 7
    .parameter "event"

    .prologue
    .line 4166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4174
    .local v0, repeatEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4175
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4176
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 4140
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_13

    .line 4145
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4147
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4150
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 4152
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_38

    .line 4154
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 4156
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4158
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4159
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4163
    .end local v0           #msg:Landroid/os/Message;
    :goto_37
    return-void

    .line 4161
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_37
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 7
    .parameter "event"

    .prologue
    .line 4179
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4180
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4181
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_f

    .line 4183
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 4189
    .end local v0           #audioService:Landroid/media/IAudioService;
    :cond_f
    :goto_f
    return-void

    .line 4184
    .restart local v0       #audioService:Landroid/media/IAudioService;
    :catch_10
    move-exception v1

    .line 4185
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 28
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 2392
    const/16 v18, 0x0

    .line 2393
    .local v18, fallbackEvent:Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_7c

    .line 2394
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 2395
    .local v20, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 2396
    .local v21, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 2397
    .local v22, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_a9

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_a9

    const/16 v19, 0x1

    .line 2402
    .local v19, initialDown:Z
    :goto_24
    if-eqz v19, :cond_ad

    .line 2403
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 2408
    .local v17, fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_2a
    if-eqz v17, :cond_7c

    .line 2414
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 2415
    .local v14, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 2422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 2423
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 2424
    const/16 v18, 0x0

    .line 2427
    :cond_6f
    if-eqz v19, :cond_bb

    .line 2428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2436
    .end local v14           #flags:I
    .end local v17           #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19           #initialDown:Z
    .end local v20           #kcm:Landroid/view/KeyCharacterMap;
    .end local v21           #keyCode:I
    .end local v22           #metaState:I
    :cond_7c
    :goto_7c
    const-string v4, "ro.tv.shortcutkey"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 2439
    .local v23, tmp_shortcutkey_cfg:I
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_98

    .line 2440
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_cf

    const/4 v4, 0x1

    :goto_8f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->SendCustomerKeyBCT(ZI)V

    .line 2444
    :cond_98
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_d1

    const/4 v4, 0x1

    :goto_9f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleMultiplexingKey(ZI)V

    .line 2454
    return-object v18

    .line 2397
    .end local v23           #tmp_shortcutkey_cfg:I
    .restart local v20       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v21       #keyCode:I
    .restart local v22       #metaState:I
    :cond_a9
    const/16 v19, 0x0

    goto/16 :goto_24

    .line 2405
    .restart local v19       #initialDown:Z
    :cond_ad
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17       #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    goto/16 :goto_2a

    .line 2429
    .restart local v14       #flags:I
    :cond_bb
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7c

    .line 2430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 2431
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_7c

    .line 2440
    .end local v14           #flags:I
    .end local v17           #fallbackAction:Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19           #initialDown:Z
    .end local v20           #kcm:Landroid/view/KeyCharacterMap;
    .end local v21           #keyCode:I
    .end local v22           #metaState:I
    .restart local v23       #tmp_shortcutkey_cfg:I
    :cond_cf
    const/4 v4, 0x0

    goto :goto_8f

    .line 2444
    :cond_d1
    const/4 v4, 0x0

    goto :goto_9f
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .parameter "win"
    .parameter "attrs"

    .prologue
    .line 1556
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5067
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5068
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5069
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5070
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5071
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5072
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5073
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_7b

    .line 5075
    :cond_4e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5076
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5077
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5078
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5079
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5080
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5082
    :cond_7b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_8c

    .line 5083
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5084
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5086
    :cond_8c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5087
    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5088
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5089
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5090
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5091
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5092
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5093
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5094
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5095
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5096
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5097
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5098
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5099
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5100
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5101
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5102
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5103
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5104
    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5105
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5106
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5107
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5109
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5110
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5111
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5112
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5113
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5114
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5115
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5116
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5117
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5118
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5119
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5121
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5122
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5123
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5124
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5125
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5126
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5127
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5128
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5129
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5130
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5131
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5133
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5134
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5135
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5137
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5138
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5139
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5140
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5141
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5143
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5145
    const-string v0, " mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5146
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5147
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5148
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5150
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5151
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5152
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5153
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5154
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5156
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5158
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5159
    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 4302
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_9

    .line 4303
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 4305
    :cond_9
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .prologue
    .line 4803
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 4804
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 4805
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 4806
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 4309
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_9

    .line 4310
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4312
    :cond_9
    return-void
.end method

.method public finishAnimationLw()I
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3325
    const/4 v0, 0x0

    .line 3326
    .local v0, changes:I
    const/4 v2, 0x0

    .line 3328
    .local v2, topIsFullscreen:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_66

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3332
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_e
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_2a

    .line 3333
    const-string v5, "sys.statusbar.forcehide"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v3, :cond_6a

    .line 3334
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v4}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 3335
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_2a

    .line 3336
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_68

    move v2, v3

    .line 3384
    :cond_2a
    :goto_2a
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 3388
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_58

    .line 3390
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:Z

    if-eqz v5, :cond_af

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v5

    if-nez v5, :cond_af

    .line 3391
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 3392
    or-int/lit8 v0, v0, 0x7

    .line 3396
    :cond_46
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 3397
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3420
    :cond_58
    :goto_58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v3

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_62

    .line 3423
    or-int/lit8 v0, v0, 0x1

    .line 3427
    :cond_62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 3428
    return v0

    .line 3328
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_66
    const/4 v1, 0x0

    goto :goto_e

    .restart local v1       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_68
    move v2, v4

    .line 3336
    goto :goto_2a

    .line 3341
    :cond_6a
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v5, :cond_79

    .line 3343
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_2a

    or-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 3344
    :cond_79
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_2a

    .line 3351
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_89

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_a1

    :cond_89
    move v2, v3

    .line 3357
    :goto_8a
    if-eqz v2, :cond_a3

    .line 3359
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3360
    or-int/lit8 v0, v0, 0x1

    .line 3362
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    :cond_a1
    move v2, v4

    .line 3351
    goto :goto_8a

    .line 3378
    :cond_a3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v5

    if-eqz v5, :cond_2a

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_2a

    .line 3403
    :cond_af
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v5, :cond_c3

    .line 3404
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 3405
    or-int/lit8 v0, v0, 0x7

    .line 3409
    :cond_bd
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_58

    .line 3411
    :cond_c3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v3}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 3412
    or-int/lit8 v0, v0, 0x7

    .line 3416
    :cond_cd
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->setHidden(Z)V

    goto :goto_58
.end method

.method public finishLayoutLw()V
    .registers 1

    .prologue
    .line 3278
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 4
    .parameter "lastFocus"
    .parameter "newFocus"

    .prologue
    .line 3441
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 3442
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_c

    .line 3445
    const/4 v0, 0x1

    .line 3447
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getConfigDisplayHeight(III)I
    .registers 6
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v0, :cond_c

    .line 1550
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    .line 1552
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    goto :goto_b
.end method

.method public getConfigDisplayWidth(III)I
    .registers 5
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1540
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 11
    .parameter "attrs"
    .parameter "contentInset"

    .prologue
    const v6, 0x10100

    .line 2639
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2640
    .local v2, fl:I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 2642
    .local v3, systemUiVisibility:I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_84

    .line 2645
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v4, :cond_3b

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_3b

    .line 2647
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 2648
    .local v1, availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .line 2653
    .local v0, availBottom:I
    :goto_23
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_58

    .line 2654
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_48

    .line 2655
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2675
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :goto_3a
    return-void

    .line 2650
    :cond_3b
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 2651
    .restart local v1       #availRight:I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0       #availBottom:I
    goto :goto_23

    .line 2659
    :cond_48
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3a

    .line 2662
    :cond_58
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_60

    .line 2663
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3a

    .line 2664
    :cond_60
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_74

    .line 2666
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3a

    .line 2669
    :cond_74
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3a

    .line 2674
    .end local v0           #availBottom:I
    .end local v1           #availRight:I
    :cond_84
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3a
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .prologue
    .line 1506
    const/16 v0, 0xf

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .registers 5
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1525
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v0, :cond_a

    .line 1527
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 1536
    .end local p2
    :cond_9
    :goto_9
    return p2

    .line 1529
    .restart local p2
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_9

    .line 1532
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_14

    if-ge p1, p2, :cond_9

    .line 1533
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    goto :goto_9
.end method

.method public getNonDecorDisplayWidth(III)I
    .registers 5
    .parameter "fullWidth"
    .parameter "fullHeight"
    .parameter "rotation"

    .prologue
    .line 1514
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_f

    .line 1517
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_f

    if-le p1, p2, :cond_f

    .line 1518
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 1521
    .end local p1
    :cond_f
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 681
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 682
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 685
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 686
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getSystemDecorRectLw(Landroid/graphics/Rect;)I
    .registers 3
    .parameter "systemRect"

    .prologue
    .line 2871
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2872
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2873
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2874
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2875
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 2877
    :goto_1a
    return v0

    .line 2876
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_1a

    .line 2877
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method goHome()Z
    .registers 16

    .prologue
    .line 4911
    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 4913
    const-string v0, "WindowManager"

    const-string v1, "UTS-TEST-MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    :cond_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v14

    .line 4936
    .local v14, result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_64

    .line 4937
    const/4 v0, 0x0

    .line 4943
    .end local v14           #result:I
    :goto_33
    return v0

    .line 4915
    :cond_34
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 4916
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 4917
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4918
    .local v2, dock:Landroid/content/Intent;
    if-eqz v2, :cond_11

    .line 4919
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5d} :catch_63

    move-result v14

    .line 4925
    .restart local v14       #result:I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_11

    .line 4926
    const/4 v0, 0x0

    goto :goto_33

    .line 4939
    .end local v2           #dock:Landroid/content/Intent;
    .end local v14           #result:I
    :catch_63
    move-exception v0

    .line 4943
    :cond_64
    const/4 v0, 0x1

    goto :goto_33
.end method

.method handleVolumeKey(II)V
    .registers 8
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 3675
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3676
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_7

    .line 3695
    :goto_6
    return-void

    .line 3684
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3685
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1b

    const/4 v2, 0x1

    :goto_11
    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1d

    .line 3693
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .line 3685
    :cond_1b
    const/4 v2, -0x1

    goto :goto_11

    .line 3690
    :catch_1d
    move-exception v1

    .line 3691
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1e
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_3c

    .line 3693
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_3c
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasNavigationBar()Z
    .registers 2

    .prologue
    .line 5057
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hasSystemNavBar()Z
    .registers 2

    .prologue
    .line 1510
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .registers 3

    .prologue
    .line 4679
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4687
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 4333
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 4334
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    goto :goto_5
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/LocalPowerManager;)V
    .registers 13
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"
    .parameter "powerManager"

    .prologue
    .line 946
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 947
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 948
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 949
    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    .line 950
    const-string v5, "1"

    const-string v6, "ro.config.headless"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    .line 951
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v5, :cond_23

    .line 953
    new-instance v5, Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {v5, p1, p0, p4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 955
    :cond_23
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 956
    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 958
    :try_start_34
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3d} :catch_227

    .line 960
    :goto_3d
    new-instance v4, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    .line 961
    .local v4, settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 962
    new-instance v5, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 963
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 964
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 966
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 967
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 968
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v6, 0x1020

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 970
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 971
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.CAR_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v6, 0x1020

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 974
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 975
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v6, "android.intent.category.DESK_DOCK"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v6, 0x1020

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 979
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 980
    .local v3, pm:Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string v6, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 982
    const-string v5, "1"

    const-string v6, "ro.debuggable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 983
    const v5, 0x10e000e

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 985
    const v5, 0x10e0010

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 987
    const v5, 0x10e000f

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 989
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 991
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 993
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 995
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 997
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1000
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1001
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1002
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1004
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1007
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_15e

    .line 1009
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1014
    :cond_15e
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1015
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1016
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1017
    if-eqz v1, :cond_17c

    .line 1018
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_219

    const/4 v5, 0x1

    :goto_17a
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPluggedIn:Z

    .line 1022
    :cond_17c
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1023
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1024
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPluggedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1025
    if-eqz v1, :cond_1a2

    .line 1027
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1031
    .local v2, plugged:Z
    if-nez v2, :cond_21c

    const/4 v5, 0x1

    :goto_198
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 1032
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v5, :cond_21f

    const/4 v5, 0x1

    :goto_19f
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 1035
    .end local v2           #plugged:Z
    :cond_1a2
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1036
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070021

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1038
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070022

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1040
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070023

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1042
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070024

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1044
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070025

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1047
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1051
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 1052
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializedHoldkeyState(Landroid/view/IWindowManager;)V

    .line 1055
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v5}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_222

    .line 1056
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1060
    :goto_218
    return-void

    .line 1018
    :cond_219
    const/4 v5, 0x0

    goto/16 :goto_17a

    .line 1031
    .restart local v2       #plugged:Z
    :cond_21c
    const/4 v5, 0x0

    goto/16 :goto_198

    .line 1032
    :cond_21f
    const/4 v5, 0x0

    goto/16 :goto_19f

    .line 1058
    .end local v2           #plugged:Z
    :cond_222
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_218

    .line 959
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #pm:Landroid/os/PowerManager;
    .end local v4           #settingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;
    :catch_227
    move-exception v5

    goto/16 :goto_3d
.end method

.method initializeHdmiState()V
    .registers 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3567
    const/4 v5, 0x0

    .line 3569
    .local v5, plugged:Z
    new-instance v10, Ljava/io/File;

    const-string v11, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 3570
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v11, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v10, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 3572
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 3573
    .local v2, filename:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3575
    .local v6, reader:Ljava/io/FileReader;
    :try_start_1a
    new-instance v7, Ljava/io/FileReader;

    const-string v10, "/sys/class/switch/hdmi/state"

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_d4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_90
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_b1

    .line 3576
    .end local v6           #reader:Ljava/io/FileReader;
    .local v7, reader:Ljava/io/FileReader;
    const/16 v10, 0xf

    :try_start_23
    new-array v0, v10, [C

    .line 3577
    .local v0, buf:[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 3578
    .local v4, n:I
    if-le v4, v8, :cond_3a

    .line 3579
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v4, -0x1

    invoke-direct {v10, v0, v11, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_e0
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_36} :catch_e6
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_36} :catch_e3

    move-result v10

    if-eqz v10, :cond_8e

    move v5, v8

    .line 3586
    :cond_3a
    :goto_3a
    if-eqz v7, :cond_3f

    .line 3588
    :try_start_3c
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_db

    .line 3599
    .end local v0           #buf:[C
    .end local v2           #filename:Ljava/lang/String;
    .end local v4           #n:I
    .end local v7           #reader:Ljava/io/FileReader;
    :cond_3f
    :goto_3f
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiHwPlugged:Z

    .line 3600
    const-string v8, "ro.vout.dualdisplay"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_60

    .line 3601
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCurDisplayMode()Ljava/lang/String;

    move-result-object v8

    const-string v10, "panel"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    if-eqz v5, :cond_5f

    const-string v8, "ro.platform.has.mbxuimode"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 3602
    :cond_5f
    const/4 v5, 0x0

    .line 3606
    :cond_60
    const-string v8, "ro.vout.dualdisplay"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 3607
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setDualDisplay(Z)V

    .line 3610
    :cond_6b
    const-string v8, "ro.vout.dualdisplay2"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 3611
    const/4 v5, 0x0

    .line 3612
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setDualDisplay(Z)V

    .line 3615
    :cond_77
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3616
    .local v3, it:Landroid/content/Intent;
    const/high16 v8, 0x800

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3617
    const-string v8, "state"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3618
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3619
    return-void

    .end local v3           #it:Landroid/content/Intent;
    .restart local v0       #buf:[C
    .restart local v2       #filename:Ljava/lang/String;
    .restart local v4       #n:I
    .restart local v7       #reader:Ljava/io/FileReader;
    :cond_8e
    move v5, v9

    .line 3579
    goto :goto_3a

    .line 3581
    .end local v0           #buf:[C
    .end local v4           #n:I
    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_90
    move-exception v1

    .line 3582
    .local v1, ex:Ljava/io/IOException;
    :goto_91
    :try_start_91
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_91 .. :try_end_a9} :catchall_d4

    .line 3586
    if-eqz v6, :cond_3f

    .line 3588
    :try_start_ab
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_3f

    .line 3589
    :catch_af
    move-exception v8

    goto :goto_3f

    .line 3583
    .end local v1           #ex:Ljava/io/IOException;
    :catch_b1
    move-exception v1

    .line 3584
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_b2
    :try_start_b2
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catchall {:try_start_b2 .. :try_end_ca} :catchall_d4

    .line 3586
    if-eqz v6, :cond_3f

    .line 3588
    :try_start_cc
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d1

    goto/16 :goto_3f

    .line 3589
    :catch_d1
    move-exception v8

    goto/16 :goto_3f

    .line 3586
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catchall_d4
    move-exception v8

    :goto_d5
    if-eqz v6, :cond_da

    .line 3588
    :try_start_d7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_de

    .line 3590
    :cond_da
    :goto_da
    throw v8

    .line 3589
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v0       #buf:[C
    .restart local v4       #n:I
    .restart local v7       #reader:Ljava/io/FileReader;
    :catch_db
    move-exception v8

    goto/16 :goto_3f

    .end local v0           #buf:[C
    .end local v4           #n:I
    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_de
    move-exception v9

    goto :goto_da

    .line 3586
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v7       #reader:Ljava/io/FileReader;
    :catchall_e0
    move-exception v8

    move-object v6, v7

    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    goto :goto_d5

    .line 3583
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v7       #reader:Ljava/io/FileReader;
    :catch_e3
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    goto :goto_b2

    .line 3581
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v7       #reader:Ljava/io/FileReader;
    :catch_e6
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    goto :goto_91
.end method

.method initializedHoldkeyState(Landroid/view/IWindowManager;)V
    .registers 15
    .parameter "windowManager"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3622
    const/4 v4, 0x0

    .line 3623
    .local v4, hold:Z
    new-instance v10, Ljava/io/File;

    const-string v11, "/sys/devices/virtual/switch/hold_key/state"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 3624
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldObserver:Landroid/os/UEventObserver;

    const-string v11, "DEVPATH=/devices/virtual/switch/hold_key"

    invoke-virtual {v10, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 3625
    const-string v3, "/sys/class/switch/hold_key/state"

    .line 3626
    .local v3, filename:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3628
    .local v6, reader:Ljava/io/FileReader;
    :try_start_1a
    new-instance v7, Ljava/io/FileReader;

    const-string v10, "/sys/class/switch/hold_key/state"

    invoke-direct {v7, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_ad
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_c1
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_7c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_9d

    .line 3629
    .end local v6           #reader:Ljava/io/FileReader;
    .local v7, reader:Ljava/io/FileReader;
    const/16 v10, 0xf

    :try_start_23
    new-array v0, v10, [C

    .line 3630
    .local v0, buf:[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v5

    .line 3631
    .local v5, n:I
    if-le v5, v8, :cond_3a

    .line 3632
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v5, -0x1

    invoke-direct {v10, v0, v11, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_4c

    move v4, v8

    .line 3635
    :cond_3a
    :goto_3a
    if-eqz v4, :cond_4e

    .line 3636
    const-string v8, "TabletStatusBar"

    const-string v9, "rotateStatus = 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    invoke-interface {p1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_46} :catch_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_46} :catch_be
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_46} :catch_bb

    .line 3649
    :goto_46
    if-eqz v7, :cond_4b

    .line 3651
    :try_start_48
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_b4

    .line 3657
    .end local v0           #buf:[C
    .end local v3           #filename:Ljava/lang/String;
    .end local v5           #n:I
    .end local v7           #reader:Ljava/io/FileReader;
    :cond_4b
    :goto_4b
    return-void

    .restart local v0       #buf:[C
    .restart local v3       #filename:Ljava/lang/String;
    .restart local v5       #n:I
    .restart local v7       #reader:Ljava/io/FileReader;
    :cond_4c
    move v4, v9

    .line 3632
    goto :goto_3a

    .line 3639
    :cond_4e
    :try_start_4e
    const-string v8, "TabletStatusBar"

    const-string v9, "rotateStatus = 0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_59} :catch_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_59} :catch_be
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_59} :catch_bb

    goto :goto_46

    .line 3642
    .end local v0           #buf:[C
    .end local v5           #n:I
    :catch_5a
    move-exception v1

    move-object v6, v7

    .line 3643
    .end local v7           #reader:Ljava/io/FileReader;
    .local v1, ex:Ljava/io/IOException;
    .restart local v6       #reader:Ljava/io/FileReader;
    :goto_5c
    :try_start_5c
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t read hold_key state from /sys/class/switch/hold_key/state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_ad

    .line 3649
    if-eqz v6, :cond_4b

    .line 3651
    :try_start_76
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_4b

    .line 3652
    :catch_7a
    move-exception v8

    goto :goto_4b

    .line 3644
    .end local v1           #ex:Ljava/io/IOException;
    :catch_7c
    move-exception v1

    .line 3645
    .local v1, ex:Ljava/lang/NumberFormatException;
    :goto_7d
    :try_start_7d
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t read hold_key state from /sys/class/switch/hold_key/state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_7d .. :try_end_95} :catchall_ad

    .line 3649
    if-eqz v6, :cond_4b

    .line 3651
    :try_start_97
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_4b

    .line 3652
    :catch_9b
    move-exception v8

    goto :goto_4b

    .line 3646
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catch_9d
    move-exception v2

    .line 3647
    .local v2, exc:Landroid/os/RemoteException;
    :goto_9e
    :try_start_9e
    const-string v8, "WindowManager"

    const-string v9, "Unable to save auto-rotate setting"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_ad

    .line 3649
    if-eqz v6, :cond_4b

    .line 3651
    :try_start_a7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_4b

    .line 3652
    :catch_ab
    move-exception v8

    goto :goto_4b

    .line 3649
    .end local v2           #exc:Landroid/os/RemoteException;
    :catchall_ad
    move-exception v8

    :goto_ae
    if-eqz v6, :cond_b3

    .line 3651
    :try_start_b0
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b6

    .line 3653
    :cond_b3
    :goto_b3
    throw v8

    .line 3652
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v0       #buf:[C
    .restart local v5       #n:I
    .restart local v7       #reader:Ljava/io/FileReader;
    :catch_b4
    move-exception v8

    goto :goto_4b

    .end local v0           #buf:[C
    .end local v5           #n:I
    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    :catch_b6
    move-exception v9

    goto :goto_b3

    .line 3649
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v7       #reader:Ljava/io/FileReader;
    :catchall_b8
    move-exception v8

    move-object v6, v7

    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    goto :goto_ae

    .line 3646
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v7       #reader:Ljava/io/FileReader;
    :catch_bb
    move-exception v2

    move-object v6, v7

    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    goto :goto_9e

    .line 3644
    .end local v6           #reader:Ljava/io/FileReader;
    .restart local v7       #reader:Ljava/io/FileReader;
    :catch_be
    move-exception v1

    move-object v6, v7

    .end local v7           #reader:Ljava/io/FileReader;
    .restart local v6       #reader:Ljava/io/FileReader;
    goto :goto_7d

    .line 3642
    :catch_c1
    move-exception v1

    goto :goto_5c
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 48
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 1835
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v24

    .line 1836
    .local v24, keyguardOn:Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v23

    .line 1837
    .local v23, keyCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v29

    .line 1838
    .local v29, repeatCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v26

    .line 1839
    .local v26, metaState:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v16

    .line 1840
    .local v16, flags:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v40

    if-nez v40, :cond_e4

    const/4 v12, 0x1

    .line 1841
    .local v12, down:Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    .line 1847
    .local v7, canceled:Z
    const/16 v40, 0x3

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_3b

    .line 1848
    new-instance v13, Landroid/content/Intent;

    const-string v40, "com.amlogic.dvbplayer.homekey"

    move-object/from16 v0, v40

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v13, dvbplayer_homekey:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1852
    .end local v13           #dvbplayer_homekey:Landroid/content/Intent;
    :cond_3b
    const/16 v40, 0xe9

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_6b

    .line 1853
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 1854
    .local v25, mIntent:Landroid/content/Intent;
    const-string v40, "cn.com.wasu.main"

    const-string v41, "cn.com.wasu.main.WelcomeActivity"

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1855
    const/high16 v40, 0x1000

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1858
    .end local v25           #mIntent:Landroid/content/Intent;
    :cond_6b
    const/16 v40, 0xea

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_9b

    .line 1859
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 1860
    .restart local v25       #mIntent:Landroid/content/Intent;
    const-string v40, "cn.vtion.vmarkettv.tv.vstoresubclient"

    const-string v41, "cn.vtion.vmarkettv.tv.vstoresubclient.MainActivity"

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1861
    const/high16 v40, 0x1000

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1864
    .end local v25           #mIntent:Landroid/content/Intent;
    :cond_9b
    const/16 v40, 0xeb

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_d1

    .line 1865
    new-instance v25, Landroid/content/Intent;

    const-string v40, "android.intent.action.VIEW"

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1866
    .restart local v25       #mIntent:Landroid/content/Intent;
    const-string v40, "com.android.browser"

    const-string v41, "com.android.browser.BrowserActivity"

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1867
    const/high16 v40, 0x1000

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1871
    .end local v25           #mIntent:Landroid/content/Intent;
    :cond_d1
    const-string v40, "ro.tv.shortcutkey"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 1880
    .local v37, tmp_shortcutkey_cfg:I
    const/16 v40, 0x2

    move/from16 v0, v37

    move/from16 v1, v40

    if-ne v0, v1, :cond_e7

    .line 1883
    const-wide/16 v40, 0x0

    .line 2375
    :goto_e3
    return-wide v40

    .line 1840
    .end local v7           #canceled:Z
    .end local v12           #down:Z
    .end local v37           #tmp_shortcutkey_cfg:I
    :cond_e4
    const/4 v12, 0x0

    goto/16 :goto_1b

    .line 1889
    .restart local v7       #canceled:Z
    .restart local v12       #down:Z
    .restart local v37       #tmp_shortcutkey_cfg:I
    :cond_e7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    move/from16 v40, v0

    if-eqz v40, :cond_139

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x400

    move/from16 v40, v0

    if-nez v40, :cond_139

    .line 1890
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v40, v0

    if-eqz v40, :cond_11c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v40, v0

    if-nez v40, :cond_11c

    .line 1891
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    .line 1892
    .local v27, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x96

    add-long v35, v40, v42

    .line 1893
    .local v35, timeoutTime:J
    cmp-long v40, v27, v35

    if-gez v40, :cond_11c

    .line 1894
    sub-long v40, v35, v27

    goto :goto_e3

    .line 1897
    .end local v27           #now:J
    .end local v35           #timeoutTime:J
    :cond_11c
    const/16 v40, 0x19

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_139

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    move/from16 v40, v0

    if-eqz v40, :cond_139

    .line 1899
    if-nez v12, :cond_136

    .line 1900
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1902
    :cond_136
    const-wide/16 v40, -0x1

    goto :goto_e3

    .line 1906
    :cond_139
    const-string v40, "tv.TvMenu_Runing_Flag"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1907
    .local v4, Tvmenu_flag:Ljava/lang/String;
    const/16 v40, 0x3

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_15b

    const-string v40, "true"

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_15b

    .line 1908
    const-string v40, "WindowManager"

    const-string v41, " TV Source filter HOME Key !"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const-wide/16 v40, -0x1

    goto :goto_e3

    .line 1912
    :cond_15b
    const-string v40, "tv.tvstart_status"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-nez v40, :cond_183

    .line 1913
    const/16 v40, 0x1c

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_183

    .line 1914
    if-eqz v12, :cond_178

    .line 1915
    const/16 v40, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendKeyEvent(I)V

    .line 1916
    :cond_178
    const-string v40, "WindowManager"

    const-string v41, " KEYCODE_CLEAR to KEYCODE_BACK!!!"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 1921
    :cond_183
    const/16 v40, 0x1

    move/from16 v0, v37

    move/from16 v1, v40

    if-ne v0, v1, :cond_2f1

    .line 1922
    const-string v40, "tv.tvstart_status"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_1b5

    const/16 v40, 0x3

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_1b5

    .line 1924
    new-instance v33, Landroid/content/Intent;

    const-string v40, "com.amlogic.tv.tvmenu.stop"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1925
    .local v33, stoptv:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1928
    .end local v33           #stoptv:Landroid/content/Intent;
    :cond_1b5
    const/16 v40, 0xe2

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_1e2

    .line 1929
    if-eqz v12, :cond_1e2

    .line 1930
    new-instance v21, Landroid/content/Intent;

    const-string v40, "com.android.internal.policy.impl.KEY_DOWN_HAPPEN"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1931
    .local v21, intent1:Landroid/content/Intent;
    const-string v40, "keyNum"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1936
    .end local v21           #intent1:Landroid/content/Intent;
    :cond_1e2
    const-string v40, "tv.globalsetup_show_status"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_1f4

    const/16 v40, 0xe2

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_254

    :cond_1f4
    const/16 v40, 0xdd

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0xe4

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0x18

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0x19

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0xde

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0xdf

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0xe0

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0xe1

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0x5b

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0xe3

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0xcd

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_254

    const/16 v40, 0xb0

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_27d

    .line 1950
    :cond_254
    if-eqz v12, :cond_279

    .line 1951
    new-instance v21, Landroid/content/Intent;

    const-string v40, "com.android.internal.policy.impl.KEY_DOWN_HAPPEN"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1952
    .restart local v21       #intent1:Landroid/content/Intent;
    const-string v40, "keyNum"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1955
    .end local v21           #intent1:Landroid/content/Intent;
    :cond_279
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 1958
    :cond_27d
    const/16 v40, 0x15

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_28d

    const/16 v40, 0x16

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_2b2

    .line 1960
    :cond_28d
    if-eqz v12, :cond_2b2

    .line 1961
    new-instance v21, Landroid/content/Intent;

    const-string v40, "com.android.internal.policy.impl.KEY_DOWN_HAPPEN"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1962
    .restart local v21       #intent1:Landroid/content/Intent;
    const-string v40, "keyNum"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1966
    .end local v21           #intent1:Landroid/content/Intent;
    :cond_2b2
    const/16 v40, 0x4

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_2c2

    const/16 v40, 0x1c

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_2f1

    .line 1968
    :cond_2c2
    const-string v40, "tv.shortcutkey_show"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_2f1

    .line 1969
    if-eqz v12, :cond_2f1

    .line 1970
    new-instance v21, Landroid/content/Intent;

    const-string v40, "com.android.internal.policy.impl.KEY_DOWN_HAPPEN"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1971
    .restart local v21       #intent1:Landroid/content/Intent;
    const-string v40, "keyNum"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1982
    .end local v21           #intent1:Landroid/content/Intent;
    :cond_2f1
    const/16 v40, 0x3

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_405

    .line 1986
    if-nez v12, :cond_36d

    .line 1987
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    move/from16 v17, v0

    .line 1988
    .local v17, homeWasLongPressed:Z
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 1989
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPressed:Z

    .line 1990
    if-nez v17, :cond_36d

    .line 1992
    :try_start_313
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v32

    .line 1993
    .local v32, statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v32, :cond_31c

    .line 1994
    invoke-interface/range {v32 .. v32}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_31c
    .catch Landroid/os/RemoteException; {:try_start_313 .. :try_end_31c} :catch_33f

    .line 2002
    .end local v32           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_31c
    :goto_31c
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2003
    if-nez v7, :cond_365

    .line 2007
    const/16 v19, 0x0

    .line 2009
    .local v19, incomingRinging:Z
    :try_start_328
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v34

    .line 2010
    .local v34, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v34, :cond_332

    .line 2011
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_331
    .catch Landroid/os/RemoteException; {:try_start_328 .. :try_end_331} :catch_354

    move-result v19

    .line 2017
    .end local v34           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_332
    :goto_332
    if-eqz v19, :cond_361

    .line 2018
    const-string v40, "WindowManager"

    const-string v41, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    .end local v19           #incomingRinging:Z
    :goto_33b
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 1996
    :catch_33f
    move-exception v14

    .line 1997
    .local v14, e:Landroid/os/RemoteException;
    const-string v40, "WindowManager"

    const-string v41, "RemoteException when showing recent apps"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1999
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_31c

    .line 2013
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v19       #incomingRinging:Z
    :catch_354
    move-exception v15

    .line 2014
    .local v15, ex:Landroid/os/RemoteException;
    const-string v40, "WindowManager"

    const-string v41, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_332

    .line 2020
    .end local v15           #ex:Landroid/os/RemoteException;
    :cond_361
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_33b

    .line 2023
    .end local v19           #incomingRinging:Z
    :cond_365
    const-string v40, "WindowManager"

    const-string v41, "Ignoring HOME; event canceled."

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33b

    .line 2031
    .end local v17           #homeWasLongPressed:Z
    :cond_36d
    if-eqz p1, :cond_38d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 2032
    .local v5, attrs:Landroid/view/WindowManager$LayoutParams;
    :goto_373
    if-eqz v5, :cond_3af

    .line 2033
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    .line 2034
    .local v38, type:I
    const/16 v40, 0x7d4

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_389

    const/16 v40, 0x7d9

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_38f

    .line 2037
    :cond_389
    const-wide/16 v40, 0x0

    goto/16 :goto_e3

    .line 2031
    .end local v5           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v38           #type:I
    :cond_38d
    const/4 v5, 0x0

    goto :goto_373

    .line 2039
    .restart local v5       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v38       #type:I
    :cond_38f
    sget-object v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v39, v0

    .line 2040
    .local v39, typeCount:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_398
    move/from16 v0, v18

    move/from16 v1, v39

    if-ge v0, v1, :cond_3af

    .line 2041
    sget-object v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v40, v40, v18

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_3ac

    .line 2043
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2040
    :cond_3ac
    add-int/lit8 v18, v18, 0x1

    goto :goto_398

    .line 2047
    .end local v18           #i:I
    .end local v38           #type:I
    .end local v39           #typeCount:I
    :cond_3af
    if-eqz v12, :cond_3da

    .line 2048
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    move/from16 v40, v0

    if-nez v40, :cond_3d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v40, v0

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_3d0

    .line 2050
    :try_start_3c7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v32

    .line 2051
    .restart local v32       #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v32, :cond_3d0

    .line 2052
    invoke-interface/range {v32 .. v32}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_3d0
    .catch Landroid/os/RemoteException; {:try_start_3c7 .. :try_end_3d0} :catch_3de

    .line 2060
    .end local v32           #statusbar:Lcom/android/internal/statusbar/IStatusBarService;
    :cond_3d0
    :goto_3d0
    if-nez v29, :cond_3f3

    .line 2061
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 2068
    :cond_3da
    :goto_3da
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2054
    :catch_3de
    move-exception v14

    .line 2055
    .restart local v14       #e:Landroid/os/RemoteException;
    const-string v40, "WindowManager"

    const-string v41, "RemoteException when preloading recent apps"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2057
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_3d0

    .line 2062
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_3f3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v40

    move/from16 v0, v40

    and-int/lit16 v0, v0, 0x80

    move/from16 v40, v0

    if-eqz v40, :cond_3da

    .line 2063
    if-nez v24, :cond_3da

    .line 2064
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    goto :goto_3da

    .line 2069
    .end local v5           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_405
    const/16 v40, 0x52

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_444

    .line 2071
    const/4 v9, 0x1

    .line 2073
    .local v9, chordBug:I
    if-eqz v12, :cond_573

    if-nez v29, :cond_573

    .line 2074
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    move/from16 v40, v0

    if-eqz v40, :cond_573

    and-int/lit8 v40, v26, 0x1

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_573

    .line 2075
    new-instance v20, Landroid/content/Intent;

    const-string v40, "android.intent.action.BUG_REPORT"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2076
    .local v20, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2077
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2095
    .end local v9           #chordBug:I
    .end local v20           #intent:Landroid/content/Intent;
    :cond_444
    const/16 v40, 0x54

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_480

    .line 2096
    if-eqz v12, :cond_464

    .line 2097
    if-nez v29, :cond_460

    .line 2098
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2099
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2108
    :cond_460
    const-wide/16 v40, 0x0

    goto/16 :goto_e3

    .line 2102
    :cond_464
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2103
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    move/from16 v40, v0

    if-eqz v40, :cond_460

    .line 2104
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2105
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2109
    :cond_480
    const/16 v40, 0xbb

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_4ab

    .line 2110
    if-eqz v12, :cond_49d

    if-nez v29, :cond_49d

    if-nez v24, :cond_49d

    .line 2114
    const-string v40, "ro.custom.benq"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_4a1

    .line 2115
    if-nez v24, :cond_49d

    .line 2116
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    .line 2123
    :cond_49d
    :goto_49d
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2119
    :cond_4a1
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    goto :goto_49d

    .line 2124
    :cond_4ab
    const/16 v40, 0xdb

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_4f0

    .line 2125
    if-eqz v12, :cond_4d9

    .line 2126
    if-nez v29, :cond_4c3

    .line 2127
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2143
    :cond_4bf
    :goto_4bf
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2128
    :cond_4c3
    const/16 v40, 0x1

    move/from16 v0, v29

    move/from16 v1, v40

    if-ne v0, v1, :cond_4bf

    .line 2129
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2130
    if-nez v24, :cond_4bf

    .line 2131
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_4bf

    .line 2135
    :cond_4d9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    move/from16 v40, v0

    if-eqz v40, :cond_4ea

    .line 2136
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_4bf

    .line 2138
    :cond_4ea
    if-nez v24, :cond_4bf

    .line 2139
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_4bf

    .line 2145
    :cond_4f0
    const/16 v40, 0xa4

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_541

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    const-string v41, "audio"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 2150
    .local v6, audioManager:Landroid/media/AudioManager;
    if-eqz v12, :cond_51f

    .line 2152
    sget-boolean v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeMute:Z

    if-eqz v40, :cond_523

    .line 2156
    const/16 v40, 0x3

    sget v41, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreVolume:I

    const/16 v42, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v6, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2158
    const/16 v40, 0x0

    sput-boolean v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeMute:Z

    .line 2170
    :cond_51f
    :goto_51f
    const-wide/16 v40, 0x0

    goto/16 :goto_e3

    .line 2163
    :cond_523
    const/16 v40, 0x3

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v40

    sput v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreVolume:I

    .line 2164
    const/16 v40, 0x3

    const/16 v41, 0x0

    const/16 v42, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v6, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2166
    const/16 v40, 0x1

    sput-boolean v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeMute:Z

    goto :goto_51f

    .line 2173
    .end local v6           #audioManager:Landroid/media/AudioManager;
    :cond_541
    const/16 v40, 0x53

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_5d2

    if-eqz v12, :cond_5d2

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    const-string v41, "statusbar"

    invoke-virtual/range {v40 .. v41}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/StatusBarManager;

    sput-object v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 2176
    sget-boolean v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusFlag:Z

    if-eqz v40, :cond_5c9

    .line 2177
    sget-object v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual/range {v40 .. v40}, Landroid/app/StatusBarManager;->expand()V

    .line 2181
    :goto_564
    sget-boolean v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusFlag:Z

    if-nez v40, :cond_5cf

    const/16 v40, 0x1

    :goto_56a
    sput-boolean v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusFlag:Z

    .line 2182
    const-string v40, "clei"

    const-string v41, "KEYCODE_NOTIFICATION"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_573
    :goto_573
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    move/from16 v40, v0

    if-eqz v40, :cond_7bd

    .line 2238
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v22

    .line 2239
    .local v22, kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v22 .. v23}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v40

    if-eqz v40, :cond_7bd

    .line 2240
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2241
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2242
    if-eqz v12, :cond_5c5

    if-nez v29, :cond_5c5

    if-nez v24, :cond_5c5

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v31

    .line 2244
    .local v31, shortcutIntent:Landroid/content/Intent;
    if-eqz v31, :cond_79f

    .line 2245
    const/high16 v40, 0x1000

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2247
    :try_start_5b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5c5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5b8 .. :try_end_5c5} :catch_77c

    .line 2258
    .end local v31           #shortcutIntent:Landroid/content/Intent;
    :cond_5c5
    :goto_5c5
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2179
    .end local v22           #kcm:Landroid/view/KeyCharacterMap;
    :cond_5c9
    sget-object v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual/range {v40 .. v40}, Landroid/app/StatusBarManager;->collapse()V

    goto :goto_564

    .line 2181
    :cond_5cf
    const/16 v40, 0x0

    goto :goto_56a

    .line 2185
    :cond_5d2
    const/16 v40, 0xb0

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_60d

    if-eqz v12, :cond_60d

    .line 2186
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2187
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "com.android.settings"

    const-string v41, "com.android.settings.Settings"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2188
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2190
    const-string v40, "many"

    const-string v41, "KEYCODE_SETTINGS"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_573

    .line 2191
    .end local v20           #intent:Landroid/content/Intent;
    :cond_60d
    const/16 v40, 0x103

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_656

    if-eqz v12, :cond_656

    .line 2192
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2193
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "android.settings.APPLICATION_SETTINGS"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2194
    const-string v40, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2195
    const-string v40, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2196
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2198
    const-string v40, "many"

    const-string v41, "KEYCODE_APPMANAGER"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_573

    .line 2199
    .end local v20           #intent:Landroid/content/Intent;
    :cond_656
    const/16 v40, 0xae

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_69a

    if-eqz v12, :cond_69a

    .line 2200
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2201
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "com.android.browser"

    const-string v41, "com.android.browser.BrowserActivity"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2202
    const-string v40, "show_bookmarks"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2203
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2205
    const-string v40, "many"

    const-string v41, "KEYCODE_STORE"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_573

    .line 2206
    .end local v20           #intent:Landroid/content/Intent;
    :cond_69a
    const/16 v40, 0x101

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_6e2

    if-eqz v12, :cond_6e2

    .line 2207
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2208
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "com.android.launcher"

    const-string v41, "com.android.launcher2.Launcher"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2209
    const-string v40, "SHOW_APP"

    const-string v41, "com.geniatech.IR_KEY_USE"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2210
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2212
    const-string v40, "many"

    const-string v41, "KEYCODE_APP"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_573

    .line 2213
    .end local v20           #intent:Landroid/content/Intent;
    :cond_6e2
    const/16 v40, 0x78

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_710

    if-eqz v12, :cond_710

    .line 2214
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2215
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "com.geniatech.SCREENSHOT"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2217
    const-string v40, "many"

    const-string v41, "KEYCODE_SCREEN"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_573

    .line 2218
    .end local v20           #intent:Landroid/content/Intent;
    :cond_710
    const/16 v40, 0x102

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_74e

    if-eqz v12, :cond_74e

    .line 2219
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2220
    .restart local v20       #intent:Landroid/content/Intent;
    new-instance v40, Landroid/content/ComponentName;

    const-string v41, "com.amlogic.DVBPlayer"

    const-string v42, "com.amlogic.DVBPlayer.DVBPlayer"

    invoke-direct/range {v40 .. v42}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2221
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2223
    const-string v40, "many"

    const-string v41, "KEYCODE_TV_GENIATECH"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_573

    .line 2224
    .end local v20           #intent:Landroid/content/Intent;
    :cond_74e
    const/16 v40, 0x100

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_573

    if-eqz v12, :cond_573

    .line 2225
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2226
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "com.geniatech.IR_KEY_USE"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2228
    const-string v40, "many"

    const-string v41, "KEYCODE_STORE"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_573

    .line 2248
    .end local v20           #intent:Landroid/content/Intent;
    .restart local v22       #kcm:Landroid/view/KeyCharacterMap;
    .restart local v31       #shortcutIntent:Landroid/content/Intent;
    :catch_77c
    move-exception v15

    .line 2249
    .local v15, ex:Landroid/content/ActivityNotFoundException;
    const-string v40, "WindowManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v23 .. v23}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c5

    .line 2254
    .end local v15           #ex:Landroid/content/ActivityNotFoundException;
    :cond_79f
    const-string v40, "WindowManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v23 .. v23}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c5

    .line 2263
    .end local v22           #kcm:Landroid/view/KeyCharacterMap;
    .end local v31           #shortcutIntent:Landroid/content/Intent;
    :cond_7bd
    if-eqz v12, :cond_828

    if-nez v29, :cond_828

    if-nez v24, :cond_828

    const/high16 v40, 0x1

    and-int v40, v40, v26

    if-eqz v40, :cond_828

    .line 2265
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v22

    .line 2266
    .restart local v22       #kcm:Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v22 .. v23}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v40

    if-eqz v40, :cond_828

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v40, v0

    const v41, -0x70001

    and-int v41, v41, v26

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v31

    .line 2270
    .restart local v31       #shortcutIntent:Landroid/content/Intent;
    if-eqz v31, :cond_828

    .line 2271
    const/high16 v40, 0x1000

    move-object/from16 v0, v31

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2273
    :try_start_7f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_802
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7f5 .. :try_end_802} :catch_806

    .line 2279
    :goto_802
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2274
    :catch_806
    move-exception v15

    .line 2275
    .restart local v15       #ex:Landroid/content/ActivityNotFoundException;
    const-string v40, "WindowManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v23 .. v23}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_802

    .line 2284
    .end local v15           #ex:Landroid/content/ActivityNotFoundException;
    .end local v22           #kcm:Landroid/view/KeyCharacterMap;
    .end local v31           #shortcutIntent:Landroid/content/Intent;
    :cond_828
    if-eqz v12, :cond_85e

    if-nez v29, :cond_85e

    if-nez v24, :cond_85e

    .line 2285
    const/16 v40, 0xd1

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_894

    .line 2286
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2287
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "org.geometerplus.zlibrary.ui.android"

    const-string v41, "org.geometerplus.android.fbreader.FBReader"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2288
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2323
    .end local v20           #intent:Landroid/content/Intent;
    :cond_85e
    :goto_85e
    if-eqz v12, :cond_9a9

    if-nez v29, :cond_9a9

    if-nez v24, :cond_9a9

    .line 2324
    sget-object v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2325
    .local v8, category:Ljava/lang/String;
    if-eqz v8, :cond_9a9

    .line 2326
    const-string v40, "android.intent.action.MAIN"

    move-object/from16 v0, v40

    invoke-static {v0, v8}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .line 2327
    .restart local v20       #intent:Landroid/content/Intent;
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2329
    :try_start_883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_890
    .catch Landroid/content/ActivityNotFoundException; {:try_start_883 .. :try_end_890} :catch_97a

    .line 2335
    :goto_890
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2292
    .end local v8           #category:Ljava/lang/String;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_894
    const/16 v40, 0xaa

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_8c5

    .line 2293
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2294
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "com.MyGicaTV.tvapp"

    const-string v41, "com.MyGicaTV.tvapp.tvapp"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2295
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_85e

    .line 2299
    .end local v20           #intent:Landroid/content/Intent;
    :cond_8c5
    const/16 v40, 0x104

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_8f7

    .line 2300
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2301
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "com.hoteligence.core.launcher"

    const-string v41, "com.hoteligence.core.launcher.HomeActivity"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2302
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_85e

    .line 2306
    .end local v20           #intent:Landroid/content/Intent;
    :cond_8f7
    const/16 v40, 0x105

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_93d

    .line 2307
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 2308
    .restart local v20       #intent:Landroid/content/Intent;
    const-string v40, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2309
    const/high16 v40, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2310
    const-string v40, "http://globalfilmonline.com/"

    invoke-static/range {v40 .. v40}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2311
    .local v10, content_url:Landroid/net/Uri;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2312
    const-string v40, "com.android.browser"

    const-string v41, "com.android.browser.BrowserActivity"

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_85e

    .line 2316
    .end local v10           #content_url:Landroid/net/Uri;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_93d
    const/16 v40, 0xb7

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_85e

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    sget-boolean v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->hdmi_flag:Z

    if-eqz v40, :cond_96b

    new-instance v40, Landroid/content/Intent;

    const-string v42, "com.geniatech.hdmi_in"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_95a
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2318
    sget-boolean v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->hdmi_flag:Z

    if-nez v40, :cond_977

    const/16 v40, 0x1

    :goto_967
    sput-boolean v40, Lcom/android/internal/policy/impl/PhoneWindowManager;->hdmi_flag:Z

    goto/16 :goto_85e

    .line 2317
    :cond_96b
    new-instance v40, Landroid/content/Intent;

    const-string v42, "com.geniatech.hdmi_out"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_95a

    .line 2318
    :cond_977
    const/16 v40, 0x0

    goto :goto_967

    .line 2330
    .restart local v8       #category:Ljava/lang/String;
    .restart local v20       #intent:Landroid/content/Intent;
    :catch_97a
    move-exception v15

    .line 2331
    .restart local v15       #ex:Landroid/content/ActivityNotFoundException;
    const-string v40, "WindowManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", category="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_890

    .line 2340
    .end local v8           #category:Ljava/lang/String;
    .end local v15           #ex:Landroid/content/ActivityNotFoundException;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_9a9
    if-eqz v12, :cond_9f4

    if-nez v29, :cond_9f4

    const/16 v40, 0x3d

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_9f4

    .line 2341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v40, v0

    if-nez v40, :cond_a1b

    if-nez v24, :cond_a1b

    .line 2342
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v40

    move/from16 v0, v40

    and-int/lit16 v0, v0, -0xc2

    move/from16 v30, v0

    .line 2343
    .local v30, shiftlessModifiers:I
    const/16 v40, 0x2

    move/from16 v0, v30

    move/from16 v1, v40

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v40

    if-nez v40, :cond_9e1

    const/high16 v40, 0x1

    move/from16 v0, v30

    move/from16 v1, v40

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v40

    if-eqz v40, :cond_a1b

    .line 2346
    :cond_9e1
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 2347
    const/16 v40, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 2348
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2351
    .end local v30           #shiftlessModifiers:I
    :cond_9f4
    if-nez v12, :cond_a1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v40, v0

    if-eqz v40, :cond_a1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    move/from16 v40, v0

    and-int v40, v40, v26

    if-nez v40, :cond_a1b

    .line 2353
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 2354
    if-eqz v24, :cond_a55

    const/16 v40, 0x2

    :goto_a14
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 2359
    :cond_a1b
    if-eqz v12, :cond_a5a

    if-nez v29, :cond_a5a

    const/16 v40, 0xcc

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_a37

    const/16 v40, 0x3e

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_a5a

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x7000

    move/from16 v40, v0

    if-eqz v40, :cond_a5a

    .line 2363
    :cond_a37
    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xc1

    move/from16 v40, v0

    if-eqz v40, :cond_a58

    const/4 v11, -0x1

    .line 2364
    .local v11, direction:I
    :goto_a40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v40, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v41

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-interface {v0, v1, v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 2365
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2354
    .end local v11           #direction:I
    :cond_a55
    const/16 v40, 0x3

    goto :goto_a14

    .line 2363
    :cond_a58
    const/4 v11, 0x1

    goto :goto_a40

    .line 2367
    :cond_a5a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    move/from16 v40, v0

    if-eqz v40, :cond_a80

    if-nez v12, :cond_a80

    const/16 v40, 0xcc

    move/from16 v0, v23

    move/from16 v1, v40

    if-eq v0, v1, :cond_a74

    const/16 v40, 0x3e

    move/from16 v0, v23

    move/from16 v1, v40

    if-ne v0, v1, :cond_a80

    .line 2370
    :cond_a74
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 2371
    const-wide/16 v40, -0x1

    goto/16 :goto_e3

    .line 2375
    :cond_a80
    const-wide/16 v40, 0x0

    goto/16 :goto_e3
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 26
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 3768
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_29

    const/4 v5, 0x1

    .line 3769
    .local v5, down:Z
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 3770
    .local v4, canceled:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 3772
    .local v10, keyCode:I
    const/high16 v19, 0x100

    and-int v19, v19, p2

    if-eqz v19, :cond_2b

    const/4 v8, 0x1

    .line 3778
    .local v8, isInjected:Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    if-nez v19, :cond_2d

    const/4 v11, 0x0

    .line 3783
    .local v11, keyguardActive:Z
    :goto_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v19, v0

    if-nez v19, :cond_45

    .line 3785
    const/4 v15, 0x0

    .line 4090
    :cond_28
    :goto_28
    return v15

    .line 3768
    .end local v4           #canceled:Z
    .end local v5           #down:Z
    .end local v8           #isInjected:Z
    .end local v10           #keyCode:I
    .end local v11           #keyguardActive:Z
    :cond_29
    const/4 v5, 0x0

    goto :goto_7

    .line 3772
    .restart local v4       #canceled:Z
    .restart local v5       #down:Z
    .restart local v10       #keyCode:I
    :cond_2b
    const/4 v8, 0x0

    goto :goto_16

    .line 3778
    .restart local v8       #isInjected:Z
    :cond_2d
    if-eqz p3, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v11

    goto :goto_1f

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v11

    goto :goto_1f

    .line 3793
    .restart local v11       #keyguardActive:Z
    :cond_45
    if-eqz v5, :cond_66

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_66

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    if-nez v19, :cond_66

    .line 3795
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3798
    :cond_66
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v19

    if-eqz v19, :cond_9c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCapsLockOn()Z

    move-result v19

    if-eqz v19, :cond_9c

    if-eqz v5, :cond_9c

    .line 3800
    const/16 v19, 0x24

    move/from16 v0, v19

    if-ne v10, v0, :cond_9c

    .line 3801
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 3802
    .local v12, mIntent:Landroid/content/Intent;
    const-string v19, "com.android.launcher"

    const-string v20, "com.android.launcher2.Launcher"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3803
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3807
    .end local v12           #mIntent:Landroid/content/Intent;
    :cond_9c
    const/16 v19, 0xff

    move/from16 v0, v19

    if-ne v10, v0, :cond_c6

    if-eqz v5, :cond_c6

    .line 3808
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 3809
    .restart local v12       #mIntent:Landroid/content/Intent;
    const-string v19, "com.goldengate.settopbox"

    const-string v20, "com.goldengate.settopbox.FrontPageActivity"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3810
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3813
    .end local v12           #mIntent:Landroid/content/Intent;
    :cond_c6
    const/16 v19, 0xfe

    move/from16 v0, v19

    if-ne v10, v0, :cond_f0

    if-eqz v5, :cond_f0

    .line 3814
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 3815
    .restart local v12       #mIntent:Landroid/content/Intent;
    const-string v19, "com.playjam.console"

    const-string v20, "com.playjam.console.Main"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3816
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3819
    .end local v12           #mIntent:Landroid/content/Intent;
    :cond_f0
    const/16 v19, 0x1a

    move/from16 v0, v19

    if-ne v10, v0, :cond_f8

    .line 3820
    or-int/lit8 p2, p2, 0x1

    .line 3822
    :cond_f8
    and-int/lit8 v19, p2, 0x3

    if-eqz v19, :cond_12d

    const/4 v9, 0x1

    .line 3834
    .local v9, isWakeKey:Z
    :goto_fd
    if-eqz p3, :cond_107

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10b

    :cond_107
    if-eqz v8, :cond_12f

    if-nez v9, :cond_12f

    .line 3836
    :cond_10b
    const/4 v15, 0x1

    .line 3854
    .local v15, result:I
    :cond_10c
    :goto_10c
    sparse-switch v10, :sswitch_data_40a

    goto/16 :goto_28

    .line 4059
    :sswitch_111
    if-eqz v5, :cond_28

    .line 4060
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 4061
    .local v16, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v16, :cond_28

    .line 4063
    :try_start_119
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_28

    .line 4064
    const-string v19, "WindowManager"

    const-string v20, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_129} :catch_3c6

    .line 4070
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_28

    .line 3822
    .end local v9           #isWakeKey:Z
    .end local v15           #result:I
    .end local v16           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_12d
    const/4 v9, 0x0

    goto :goto_fd

    .line 3840
    .restart local v9       #isWakeKey:Z
    :cond_12f
    const/4 v15, 0x0

    .line 3841
    .restart local v15       #result:I
    if-eqz v5, :cond_10c

    if-eqz v9, :cond_10c

    .line 3842
    if-eqz v11, :cond_151

    .line 3844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_14e

    const/16 v19, 0x1

    :goto_146
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    goto :goto_10c

    :cond_14e
    const/16 v19, 0x0

    goto :goto_146

    .line 3848
    :cond_151
    or-int/lit8 v15, v15, 0x2

    goto :goto_10c

    .line 3858
    :sswitch_154
    const-string v19, "ro.tv.shortcutkey"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 3861
    .local v17, tmp_shortcutkey_cfg:I
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_167

    .line 3862
    const/4 v15, 0x1

    .line 3863
    goto/16 :goto_28

    .line 3866
    :cond_167
    const/16 v19, 0x19

    move/from16 v0, v19

    if-ne v10, v0, :cond_1cd

    .line 3867
    if-eqz v5, :cond_1c1

    .line 3868
    if-eqz p3, :cond_1a5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-nez v19, :cond_1a5

    .line 3870
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 3871
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    .line 3872
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 3873
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 3874
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 3893
    :cond_1a5
    :goto_1a5
    if-eqz v5, :cond_28

    .line 3894
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 3895
    .restart local v16       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v16, :cond_227

    .line 3897
    :try_start_1ad
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_206

    .line 3904
    const-string v19, "WindowManager"

    const-string v20, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_1bd
    .catch Landroid/os/RemoteException; {:try_start_1ad .. :try_end_1bd} :catch_21b

    .line 3913
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_28

    .line 3877
    .end local v16           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1c1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 3878
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_1a5

    .line 3880
    :cond_1cd
    const/16 v19, 0x18

    move/from16 v0, v19

    if-ne v10, v0, :cond_1a5

    .line 3881
    if-eqz v5, :cond_1fa

    .line 3882
    if-eqz p3, :cond_1a5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-nez v19, :cond_1a5

    .line 3884
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 3885
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 3886
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_1a5

    .line 3889
    :cond_1fa
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 3890
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_1a5

    .line 3916
    .restart local v16       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_206
    :try_start_206
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v19

    if-eqz v19, :cond_227

    and-int/lit8 v19, v15, 0x1

    if-nez v19, :cond_227

    .line 3920
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_219
    .catch Landroid/os/RemoteException; {:try_start_206 .. :try_end_219} :catch_21b

    goto/16 :goto_28

    .line 3923
    :catch_21b
    move-exception v6

    .line 3924
    .local v6, ex:Landroid/os/RemoteException;
    const-string v19, "WindowManager"

    const-string v20, "ITelephony threw RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3928
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_227
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v19

    if-eqz v19, :cond_28

    and-int/lit8 v19, v15, 0x1

    if-nez v19, :cond_28

    .line 3931
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    goto/16 :goto_28

    .line 3939
    .end local v16           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    .end local v17           #tmp_shortcutkey_cfg:I
    :sswitch_23c
    and-int/lit8 v15, v15, -0x2

    .line 3940
    if-eqz v5, :cond_26a

    .line 3941
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 3942
    .restart local v16       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v7, 0x0

    .line 3943
    .local v7, hungUp:Z
    if-eqz v16, :cond_24b

    .line 3945
    :try_start_247
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_24a
    .catch Landroid/os/RemoteException; {:try_start_247 .. :try_end_24a} :catch_25a

    move-result v7

    .line 3950
    :cond_24b
    :goto_24b
    if-eqz p3, :cond_24f

    if-eqz v7, :cond_267

    :cond_24f
    const/16 v19, 0x1

    :goto_251
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_28

    .line 3946
    :catch_25a
    move-exception v6

    .line 3947
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v19, "WindowManager"

    const-string v20, "ITelephony threw RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24b

    .line 3950
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_267
    const/16 v19, 0x0

    goto :goto_251

    .line 3952
    .end local v7           #hungUp:Z
    .end local v16           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_26a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 3953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_282

    .line 3955
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v19

    if-nez v19, :cond_28

    .line 3959
    :cond_282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_28

    .line 3961
    and-int/lit8 v19, v15, -0x3

    or-int/lit8 v15, v19, 0x4

    goto/16 :goto_28

    .line 3969
    :sswitch_292
    and-int/lit8 v15, v15, -0x2

    .line 3970
    if-eqz v5, :cond_315

    .line 3971
    if-eqz p3, :cond_2c1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v19, v0

    if-nez v19, :cond_2c1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-nez v19, :cond_2c1

    .line 3973
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 3974
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 3975
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptScreenshotChord()V

    .line 3978
    :cond_2c1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 3979
    .restart local v16       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    const/4 v7, 0x0

    .line 3980
    .restart local v7       #hungUp:Z
    if-eqz v16, :cond_2d1

    .line 3982
    :try_start_2c8
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_2f0

    .line 3985
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_2d1
    .catch Landroid/os/RemoteException; {:try_start_2c8 .. :try_end_2d1} :catch_305

    .line 3997
    :cond_2d1
    :goto_2d1
    if-eqz p3, :cond_2e5

    if-nez v7, :cond_2e5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    move/from16 v19, v0

    if-nez v19, :cond_2e5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    move/from16 v19, v0

    if-eqz v19, :cond_312

    :cond_2e5
    const/16 v19, 0x1

    :goto_2e7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_28

    .line 3986
    :cond_2f0
    :try_start_2f0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_2d1

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v19

    if-eqz v19, :cond_2d1

    .line 3991
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_303
    .catch Landroid/os/RemoteException; {:try_start_2f0 .. :try_end_303} :catch_305

    move-result v7

    goto :goto_2d1

    .line 3993
    :catch_305
    move-exception v6

    .line 3994
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v19, "WindowManager"

    const-string v20, "ITelephony threw RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d1

    .line 3997
    .end local v6           #ex:Landroid/os/RemoteException;
    :cond_312
    const/16 v19, 0x0

    goto :goto_2e7

    .line 4000
    .end local v7           #hungUp:Z
    .end local v16           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_315
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 4001
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 4002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    move/from16 v19, v0

    if-nez v19, :cond_332

    if-nez v4, :cond_332

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_360

    :cond_332
    const/16 v19, 0x1

    :goto_334
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v19

    if-eqz v19, :cond_363

    .line 4003
    and-int/lit8 v19, v15, -0x3

    or-int/lit8 v15, v19, 0x4

    .line 4005
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.amlogic.vplayer.powerkey"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4006
    .local v18, vPlayerPowerKey:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4013
    .end local v18           #vPlayerPowerKey:Landroid/content/Intent;
    :cond_356
    :goto_356
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_28

    .line 4002
    :cond_360
    const/16 v19, 0x0

    goto :goto_334

    .line 4008
    :cond_363
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_356

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move/from16 v19, v0

    if-nez v19, :cond_356

    .line 4009
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendKeyEvent(I)V

    goto :goto_356

    .line 4021
    :sswitch_37d
    if-eqz v5, :cond_38b

    .line 4022
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 4023
    .restart local v16       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v16, :cond_38b

    .line 4025
    :try_start_385
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_388
    .catch Landroid/os/RemoteException; {:try_start_385 .. :try_end_388} :catch_3b9

    move-result v19

    if-eqz v19, :cond_28

    .line 4043
    .end local v16           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_38b
    :goto_38b
    :sswitch_38b
    and-int/lit8 v19, v15, 0x1

    if-nez v19, :cond_28

    .line 4049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    new-instance v21, Landroid/view/KeyEvent;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v19 .. v21}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 4052
    .local v13, msg:Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4053
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_28

    .line 4030
    .end local v13           #msg:Landroid/os/Message;
    .restart local v16       #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :catch_3b9
    move-exception v6

    .line 4031
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v19, "WindowManager"

    const-string v20, "ITelephony threw RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38b

    .line 4072
    .end local v6           #ex:Landroid/os/RemoteException;
    :catch_3c6
    move-exception v6

    .line 4073
    .restart local v6       #ex:Landroid/os/RemoteException;
    const-string v19, "WindowManager"

    const-string v20, "ITelephony threw RemoteException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 4081
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v16           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :sswitch_3d4
    const-string v19, "sys.cold-reboot.enable"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 4082
    const-string v19, "ubootenv.var.suspend"

    const-string v20, "on"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4083
    const-string v19, "WindowManager"

    const-string v20, "reboot system for cool reboot"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v20, "power"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 4085
    .local v14, pm:Landroid/os/PowerManager;
    const-string v19, "cool_reboot"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 3854
    nop

    :sswitch_data_40a
    .sparse-switch
        0x5 -> :sswitch_111
        0x6 -> :sswitch_23c
        0x18 -> :sswitch_154
        0x19 -> :sswitch_154
        0x1a -> :sswitch_292
        0x4f -> :sswitch_38b
        0x55 -> :sswitch_37d
        0x56 -> :sswitch_38b
        0x57 -> :sswitch_38b
        0x58 -> :sswitch_38b
        0x59 -> :sswitch_38b
        0x5a -> :sswitch_38b
        0x5b -> :sswitch_38b
        0x7e -> :sswitch_37d
        0x7f -> :sswitch_37d
        0x82 -> :sswitch_38b
        0xa4 -> :sswitch_154
        0xe3 -> :sswitch_3d4
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .registers 5
    .parameter "policyFlags"

    .prologue
    .line 4119
    const/4 v1, 0x0

    .line 4121
    .local v1, result:I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    .line 4123
    .local v0, isWakeMotion:Z
    :goto_6
    if-eqz v0, :cond_19

    .line 4124
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4126
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeMotionWhenKeyguardShowingTq()Z

    .line 4132
    :cond_19
    :goto_19
    return v1

    .line 4121
    .end local v0           #isWakeMotion:Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6

    .line 4129
    .restart local v0       #isWakeMotion:Z
    :cond_1c
    or-int/lit8 v1, v1, 0x2

    goto :goto_19
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 856
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 4322
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 4327
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 4328
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    goto :goto_5
.end method

.method isMusicActive()Z
    .registers 4

    .prologue
    .line 3662
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3663
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_15

    .line 3664
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    const/4 v1, 0x0

    .line 3667
    :goto_14
    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_14
.end method

.method public isScreenOnEarly()Z
    .registers 2

    .prologue
    .line 4292
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .registers 2

    .prologue
    .line 4297
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isScreenSaverEnabled()Z
    .registers 2

    .prologue
    .line 4726
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverFeatureAvailable:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverEnabledByUser:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPluggedIn:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method keyguardOn()Z
    .registers 2

    .prologue
    .line 1817
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method launchHomeFromHotKey()V
    .registers 3

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2542
    :goto_c
    return-void

    .line 2518
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2521
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_c

    .line 2536
    :cond_24
    :try_start_24
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_34

    .line 2539
    :goto_2b
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2540
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_c

    .line 2537
    :catch_34
    move-exception v0

    goto :goto_2b
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 38
    .parameter "win"
    .parameter "attrs"
    .parameter "attached"

    .prologue
    .line 2950
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 3257
    :cond_10
    :goto_10
    return-void

    .line 2953
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1f3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1f3

    const/16 v31, 0x1

    .line 2955
    .local v31, needsToOffsetInputMethodTarget:Z
    :goto_21
    if-eqz v31, :cond_2c

    .line 2959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2962
    :cond_2c
    move-object/from16 v0, p2

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2963
    .local v5, fl:I
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2964
    .local v6, sim:I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v32

    .line 2966
    .local v32, sysUiFl:I
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 2967
    .local v9, pf:Landroid/graphics/Rect;
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 2968
    .local v10, df:Landroid/graphics/Rect;
    sget-object v11, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 2969
    .local v11, cf:Landroid/graphics/Rect;
    sget-object v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 2971
    .local v12, vf:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_1f7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_1f7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1f7

    const/16 v27, 0x1

    .line 2974
    .local v27, hasNavBar:Z
    :goto_58
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_1fb

    .line 2975
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 2976
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 2977
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 2978
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 2980
    const/16 v3, 0x50

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2981
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 3192
    :goto_9e
    and-int/lit16 v3, v5, 0x200

    if-eqz v3, :cond_be

    .line 3193
    const/16 v3, -0x2710

    iput v3, v12, Landroid/graphics/Rect;->top:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 3194
    const/16 v3, 0x2710

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 3197
    :cond_be
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->GameList:Ljava/util/ArrayList;

    if-nez v3, :cond_135

    .line 3199
    const-string v3, "WindowManager"

    const-string v4, "/system/etc/game_dimension_list.txt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->GameList:Ljava/util/ArrayList;

    .line 3202
    :try_start_d4
    new-instance v23, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v7, "/system/etc/game_dimension_list.txt"

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3204
    .local v23, br:Ljava/io/BufferedReader;
    const-string v30, ""

    .line 3205
    .local v30, line:Ljava/lang/String;
    const/16 v29, 0x0

    .line 3206
    .local v29, item:Lcom/android/internal/policy/impl/GameDimInfo;
    :goto_eb
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_5f3

    .line 3209
    const-string v3, ":"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 3210
    .local v25, game:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v25, v3

    const-string v4, "X"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 3211
    .local v24, dim:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v24, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 3212
    .local v33, w:I
    const/4 v3, 0x1

    aget-object v3, v24, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 3213
    .local v26, h:I
    new-instance v29, Lcom/android/internal/policy/impl/GameDimInfo;

    .end local v29           #item:Lcom/android/internal/policy/impl/GameDimInfo;
    const/4 v3, 0x0

    aget-object v3, v25, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    move/from16 v1, v33

    move/from16 v2, v26

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/policy/impl/GameDimInfo;-><init>(Ljava/lang/String;II)V

    .line 3214
    .restart local v29       #item:Lcom/android/internal/policy/impl/GameDimInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->GameList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_133
    .catch Ljava/io/FileNotFoundException; {:try_start_d4 .. :try_end_133} :catch_134
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_133} :catch_5f8

    goto :goto_eb

    .line 3217
    .end local v23           #br:Ljava/io/BufferedReader;
    .end local v24           #dim:[Ljava/lang/String;
    .end local v25           #game:[Ljava/lang/String;
    .end local v26           #h:I
    .end local v29           #item:Lcom/android/internal/policy/impl/GameDimInfo;
    .end local v30           #line:Ljava/lang/String;
    .end local v33           #w:I
    :catch_134
    move-exception v3

    .line 3223
    :cond_135
    :goto_135
    const/16 v28, 0x0

    .local v28, i:I
    :goto_137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->GameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_5fb

    .line 3229
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->GameList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/GameDimInfo;

    iget-object v3, v3, Lcom/android/internal/policy/impl/GameDimInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ef

    .line 3232
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->GameList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/GameDimInfo;

    iget v3, v3, Lcom/android/internal/policy/impl/GameDimInfo;->width:I

    sub-int v3, v4, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3233
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->GameList:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/GameDimInfo;

    iget v3, v3, Lcom/android/internal/policy/impl/GameDimInfo;->height:I

    sub-int v3, v4, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3234
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget v4, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3235
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    iget v4, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 3236
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dim: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    :cond_1ef
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_137

    .line 2953
    .end local v5           #fl:I
    .end local v6           #sim:I
    .end local v9           #pf:Landroid/graphics/Rect;
    .end local v10           #df:Landroid/graphics/Rect;
    .end local v11           #cf:Landroid/graphics/Rect;
    .end local v12           #vf:Landroid/graphics/Rect;
    .end local v27           #hasNavBar:Z
    .end local v28           #i:I
    .end local v31           #needsToOffsetInputMethodTarget:Z
    .end local v32           #sysUiFl:I
    :cond_1f3
    const/16 v31, 0x0

    goto/16 :goto_21

    .line 2971
    .restart local v5       #fl:I
    .restart local v6       #sim:I
    .restart local v9       #pf:Landroid/graphics/Rect;
    .restart local v10       #df:Landroid/graphics/Rect;
    .restart local v11       #cf:Landroid/graphics/Rect;
    .restart local v12       #vf:Landroid/graphics/Rect;
    .restart local v31       #needsToOffsetInputMethodTarget:Z
    .restart local v32       #sysUiFl:I
    :cond_1f7
    const/16 v27, 0x0

    goto/16 :goto_58

    .line 2983
    .restart local v27       #hasNavBar:Z
    :cond_1fb
    and-int/lit16 v0, v6, 0xf0

    move/from16 v16, v0

    .line 2985
    .local v16, adjust:I
    const v3, 0x10500

    and-int/2addr v3, v5

    const v4, 0x10100

    if-ne v3, v4, :cond_34a

    and-int/lit8 v3, v32, 0x4

    if-nez v3, :cond_34a

    .line 2995
    if-eqz p3, :cond_21a

    .line 2998
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v3 .. v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_9e

    .line 3000
    :cond_21a
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_22a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e1

    if-ne v3, v4, :cond_2b8

    .line 3009
    :cond_22a
    if-eqz v27, :cond_29f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_230
    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3010
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3011
    if-eqz v27, :cond_2a4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    :goto_247
    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3014
    if-eqz v27, :cond_2ae

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    :goto_256
    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 3041
    :goto_25a
    const/16 v3, 0x10

    move/from16 v0, v16

    if-eq v0, v3, :cond_32b

    .line 3042
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    .line 3043
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    .line 3044
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    .line 3045
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    .line 3052
    :goto_278
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v5, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 3053
    const/16 v3, 0x30

    move/from16 v0, v16

    if-eq v0, v3, :cond_345

    .line 3054
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    .line 3055
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    .line 3056
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    .line 3057
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9e

    .line 3009
    :cond_29f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_230

    .line 3011
    :cond_2a4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    goto :goto_247

    .line 3014
    :cond_2ae
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    goto :goto_256

    .line 3023
    :cond_2b8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v3, :cond_2ff

    move/from16 v0, v32

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_2ff

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2ff

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_2ff

    .line 3031
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3032
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3033
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3034
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_25a

    .line 3036
    :cond_2ff
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3037
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3038
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3039
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_25a

    .line 3047
    :cond_32b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    .line 3048
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    .line 3049
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    .line 3050
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_278

    .line 3059
    :cond_345
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_9e

    .line 3062
    :cond_34a
    and-int/lit16 v3, v5, 0x100

    if-nez v3, :cond_354

    move/from16 v0, v32

    and-int/lit16 v3, v0, 0x600

    if-eqz v3, :cond_51b

    .line 3069
    :cond_354
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_364

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e1

    if-ne v3, v4, :cond_3dc

    .line 3071
    :cond_364
    if-eqz v27, :cond_3c3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_36a
    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3072
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3073
    if-eqz v27, :cond_3c8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    :goto_385
    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3076
    if-eqz v27, :cond_3d2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    :goto_396
    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 3134
    :goto_39c
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v5, v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 3135
    const/16 v3, 0x30

    move/from16 v0, v16

    if-eq v0, v3, :cond_516

    .line 3136
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    .line 3137
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    .line 3138
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    .line 3139
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9e

    .line 3071
    :cond_3c3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_36a

    .line 3073
    :cond_3c8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    goto :goto_385

    .line 3076
    :cond_3d2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    goto :goto_396

    .line 3084
    :cond_3dc
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e3

    if-eq v3, v4, :cond_3ec

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e8

    if-ne v3, v4, :cond_417

    .line 3087
    :cond_3ec
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3088
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3089
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3090
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_39c

    .line 3096
    :cond_417
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7df

    if-eq v3, v4, :cond_427

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-ne v3, v4, :cond_457

    :cond_427
    and-int/lit16 v3, v5, 0x400

    if-eqz v3, :cond_457

    .line 3100
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3101
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3102
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3103
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_39c

    .line 3104
    :cond_457
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-ne v3, v4, :cond_493

    .line 3106
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3107
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3108
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3109
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_39c

    .line 3111
    :cond_493
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v3, :cond_4e2

    move/from16 v0, v32

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_4e2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_4e2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_4e2

    .line 3122
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3123
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3124
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3125
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_39c

    .line 3128
    :cond_4e2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3129
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3130
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3131
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_39c

    .line 3141
    :cond_516
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_9e

    .line 3143
    :cond_51b
    if-eqz p3, :cond_533

    .line 3148
    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move v15, v5

    move-object/from16 v17, p3

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-virtual/range {v13 .. v22}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_9e

    .line 3154
    :cond_533
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-ne v3, v4, :cond_56f

    .line 3159
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3160
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3161
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3162
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9e

    .line 3165
    :cond_56f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 3166
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 3167
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 3168
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 3169
    const/16 v3, 0x10

    move/from16 v0, v16

    if-eq v0, v3, :cond_5cd

    .line 3170
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 3171
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3172
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 3173
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 3180
    :goto_5ad
    const/16 v3, 0x30

    move/from16 v0, v16

    if-eq v0, v3, :cond_5ee

    .line 3181
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iput v3, v12, Landroid/graphics/Rect;->left:I

    .line 3182
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iput v3, v12, Landroid/graphics/Rect;->top:I

    .line 3183
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    iput v3, v12, Landroid/graphics/Rect;->right:I

    .line 3184
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    iput v3, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9e

    .line 3175
    :cond_5cd
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v3, v11, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    .line 3176
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v3, v11, Landroid/graphics/Rect;->top:I

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3177
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v3, v11, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 3178
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v3, v11, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_5ad

    .line 3186
    :cond_5ee
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_9e

    .line 3216
    .end local v16           #adjust:I
    .restart local v23       #br:Ljava/io/BufferedReader;
    .restart local v29       #item:Lcom/android/internal/policy/impl/GameDimInfo;
    .restart local v30       #line:Ljava/lang/String;
    :cond_5f3
    :try_start_5f3
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V
    :try_end_5f6
    .catch Ljava/io/FileNotFoundException; {:try_start_5f3 .. :try_end_5f6} :catch_134
    .catch Ljava/io/IOException; {:try_start_5f3 .. :try_end_5f6} :catch_5f8

    goto/16 :goto_135

    .line 3219
    .end local v23           #br:Ljava/io/BufferedReader;
    .end local v29           #item:Lcom/android/internal/policy/impl/GameDimInfo;
    .end local v30           #line:Ljava/lang/String;
    :catch_5f8
    move-exception v3

    goto/16 :goto_135

    .line 3249
    .restart local v28       #i:I
    :cond_5fb
    move-object/from16 v0, p1

    invoke-interface {v0, v9, v10, v11, v12}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3253
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_10

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v3

    if-nez v3, :cond_10

    .line 3254
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3255
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_10
.end method

.method public lockNow()V
    .registers 4

    .prologue
    .line 4778
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4779
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4780
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4781
    return-void
.end method

.method needSensorRunningLp()Z
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 695
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_17

    .line 722
    :cond_16
    :goto_16
    return v0

    .line 703
    :cond_17
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    :cond_20
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_16

    .line 711
    :cond_31
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v0, :cond_16

    .line 720
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 10
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3453
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_7

    .line 3477
    :cond_6
    :goto_6
    return-void

    .line 3456
    :cond_7
    if-eqz p3, :cond_2a

    move v0, v1

    .line 3457
    .local v0, newLidState:I
    :goto_a
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_6

    .line 3461
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 3462
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 3463
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 3465
    if-eqz p3, :cond_38

    .line 3466
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 3467
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/16 v4, 0x1a

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eqz v5, :cond_2c

    :goto_26
    invoke-virtual {v3, v4, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    goto :goto_6

    .end local v0           #newLidState:I
    :cond_2a
    move v0, v2

    .line 3456
    goto :goto_a

    .restart local v0       #newLidState:I
    :cond_2c
    move v1, v2

    .line 3467
    goto :goto_26

    .line 3470
    :cond_2e
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v2, v1}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_6

    .line 3473
    :cond_38
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_6

    .line 3474
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v3, v4, v2, v2}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    goto :goto_6
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 11
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4956
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1e

    move v0, v3

    .line 4958
    .local v0, hapticsDisabled:Z
    :goto_11
    if-nez p3, :cond_20

    if-nez v0, :cond_1d

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 4988
    :cond_1d
    :goto_1d
    return v2

    .end local v0           #hapticsDisabled:Z
    :cond_1e
    move v0, v2

    .line 4956
    goto :goto_11

    .line 4961
    .restart local v0       #hapticsDisabled:Z
    :cond_20
    const/4 v1, 0x0

    .line 4962
    .local v1, pattern:[J
    sparse-switch p2, :sswitch_data_46

    goto :goto_1d

    .line 4964
    :sswitch_25
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 4981
    :goto_27
    array-length v4, v1

    if-ne v4, v3, :cond_3f

    .line 4983
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v5, v1, v2

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_31
    move v2, v3

    .line 4988
    goto :goto_1d

    .line 4967
    :sswitch_33
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 4968
    goto :goto_27

    .line 4970
    :sswitch_36
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 4971
    goto :goto_27

    .line 4973
    :sswitch_39
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 4974
    goto :goto_27

    .line 4976
    :sswitch_3c
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 4977
    goto :goto_27

    .line 4986
    :cond_3f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_31

    .line 4962
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_25
        0x1 -> :sswitch_33
        0x3 -> :sswitch_36
        0x2710 -> :sswitch_39
        0x2711 -> :sswitch_3c
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 7
    .parameter "win"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x7

    .line 1699
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_5e

    .line 1745
    :goto_6
    const/4 v0, 0x0

    :cond_7
    return v0

    .line 1701
    :sswitch_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1d

    .line 1705
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1709
    :cond_1d
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 1712
    :sswitch_20
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_35

    .line 1716
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1720
    :cond_35
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 1724
    :sswitch_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1729
    :sswitch_42
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1734
    :sswitch_4c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1739
    :sswitch_56
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_7

    .line 1742
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 1699
    nop

    :sswitch_data_5e
    .sparse-switch
        0x7d0 -> :sswitch_8
        0x7d4 -> :sswitch_56
        0x7de -> :sswitch_42
        0x7e1 -> :sswitch_4c
        0x7e3 -> :sswitch_20
        0x7e8 -> :sswitch_38
    .end sparse-switch
.end method

.method readLidState()V
    .registers 2

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 1386
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .registers 6
    .parameter "appToken"
    .parameter "window"

    .prologue
    .line 1678
    if-eqz p2, :cond_f

    .line 1679
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1680
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1682
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_f
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    const/4 v1, 0x0

    .line 1750
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 1751
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1757
    :cond_7
    :goto_7
    return-void

    .line 1752
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 1753
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 1754
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    .line 1755
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7
.end method

.method public rotationForOrientationLw(II)I
    .registers 13
    .parameter "orientation"
    .parameter "lastRotation"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 4377
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4378
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 4379
    .local v1, sensorRotation:I
    if-gez v1, :cond_11

    .line 4380
    move v1, p2

    .line 4384
    :cond_11
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v3, v4, :cond_35

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v3, :cond_35

    .line 4386
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 4444
    .local v0, preferredRotation:I
    :goto_1b
    const-string v3, "ubootenv.var.has.accelerometer"

    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_c7

    .line 4447
    :cond_28
    if-ne v4, p1, :cond_bb

    .line 4448
    const-string v2, "app.froce.landscape"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4460
    :goto_31
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    .line 4521
    :goto_34
    return v0

    .line 4387
    :cond_35
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v7, :cond_4a

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v3, :cond_41

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v3, :cond_4a

    .line 4392
    :cond_41
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_47

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_46
    goto :goto_1b

    .end local v0           #preferredRotation:I
    :cond_47
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_46

    .line 4394
    :cond_4a
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v3, v4, :cond_57

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_57

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v3, v8, :cond_68

    :cond_57
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v3, :cond_5f

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v3, :cond_68

    .line 4401
    :cond_5f
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_65

    move v0, v1

    .restart local v0       #preferredRotation:I
    :goto_64
    goto :goto_1b

    .end local v0           #preferredRotation:I
    :cond_65
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_64

    .line 4403
    :cond_68
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v3, :cond_6f

    .line 4406
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .restart local v0       #preferredRotation:I
    goto :goto_1b

    .line 4407
    .end local v0           #preferredRotation:I
    :cond_6f
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v3, :cond_78

    if-eq p1, v7, :cond_86

    const/4 v3, -0x1

    if-eq p1, v3, :cond_86

    :cond_78
    if-eq p1, v8, :cond_86

    const/16 v3, 0xa

    if-eq p1, v3, :cond_86

    const/4 v3, 0x6

    if-eq p1, v3, :cond_86

    const/4 v3, 0x7

    if-eq p1, v3, :cond_86

    if-ne p1, v9, :cond_ae

    .line 4417
    :cond_86
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v3, :cond_9c

    .line 4421
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110016

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a9

    move v3, v4

    :goto_9a
    iput v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 4424
    :cond_9c
    if-ne v1, v7, :cond_a6

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v4, :cond_a6

    const/16 v3, 0xa

    if-ne p1, v3, :cond_ab

    .line 4427
    :cond_a6
    move v0, v1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1b

    .end local v0           #preferredRotation:I
    :cond_a9
    move v3, v2

    .line 4421
    goto :goto_9a

    .line 4429
    :cond_ab
    move v0, p2

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1b

    .line 4431
    .end local v0           #preferredRotation:I
    :cond_ae
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v4, :cond_b8

    if-eq p1, v9, :cond_b8

    .line 4437
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1b

    .line 4441
    .end local v0           #preferredRotation:I
    :cond_b8
    const/4 v0, -0x1

    .restart local v0       #preferredRotation:I
    goto/16 :goto_1b

    .line 4450
    :cond_bb
    const-string v2, "app.froce.landscape"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 4523
    .end local v0           #preferredRotation:I
    .end local v1           #sensorRotation:I
    :catchall_c4
    move-exception v2

    monitor-exit v5
    :try_end_c6
    .catchall {:try_start_8 .. :try_end_c6} :catchall_c4

    throw v2

    .line 4463
    .restart local v0       #preferredRotation:I
    .restart local v1       #sensorRotation:I
    :cond_c7
    :try_start_c7
    const-string v3, "app.froce.landscape"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4466
    packed-switch p1, :pswitch_data_142

    .line 4518
    :pswitch_d1
    if-ltz v0, :cond_13e

    .line 4519
    monitor-exit v5

    goto/16 :goto_34

    .line 4469
    :pswitch_d6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 4470
    monitor-exit v5

    goto/16 :goto_34

    .line 4472
    :cond_df
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_34

    .line 4476
    .restart local v0       #preferredRotation:I
    :pswitch_e4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 4477
    monitor-exit v5

    goto/16 :goto_34

    .line 4479
    :cond_ed
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_34

    .line 4483
    .restart local v0       #preferredRotation:I
    :pswitch_f2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 4484
    monitor-exit v5

    goto/16 :goto_34

    .line 4486
    :cond_fb
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_34

    .line 4490
    .restart local v0       #preferredRotation:I
    :pswitch_100
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 4491
    monitor-exit v5

    goto/16 :goto_34

    .line 4493
    :cond_109
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_34

    .line 4497
    .restart local v0       #preferredRotation:I
    :pswitch_10e
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 4498
    monitor-exit v5

    goto/16 :goto_34

    .line 4500
    :cond_117
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 4501
    monitor-exit v5

    move v0, p2

    goto/16 :goto_34

    .line 4503
    :cond_121
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_34

    .line 4507
    .restart local v0       #preferredRotation:I
    :pswitch_126
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 4508
    monitor-exit v5

    goto/16 :goto_34

    .line 4510
    :cond_12f
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_139

    .line 4511
    monitor-exit v5

    move v0, p2

    goto/16 :goto_34

    .line 4513
    :cond_139
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0           #preferredRotation:I
    monitor-exit v5

    goto/16 :goto_34

    .line 4521
    .restart local v0       #preferredRotation:I
    :cond_13e
    monitor-exit v5
    :try_end_13f
    .catchall {:try_start_c7 .. :try_end_13f} :catchall_c4

    move v0, v2

    goto/16 :goto_34

    .line 4466
    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_d6
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_10e
        :pswitch_126
        :pswitch_100
        :pswitch_f2
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .registers 5
    .parameter "orientation"
    .parameter "rotation"

    .prologue
    const/4 v0, 0x1

    .line 4529
    const-string v1, "ubootenv.var.has.accelerometer"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v1, :cond_e

    .line 4546
    :cond_d
    :goto_d
    return v0

    .line 4534
    :cond_e
    packed-switch p1, :pswitch_data_1c

    :pswitch_11
    goto :goto_d

    .line 4543
    :pswitch_12
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_d

    .line 4538
    :pswitch_17
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_d

    .line 4534
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_17
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_12
        :pswitch_17
    .end packed-switch
.end method

.method public screenOnStartedLw()V
    .registers 3

    .prologue
    .line 4994
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4995
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    .line 4996
    monitor-exit v1

    .line 4997
    return-void

    .line 4996
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public screenOnStoppedLw()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 5000
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 5001
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 5002
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5003
    .local v0, curTime:J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v2, v0, v1, v3, v3}, Landroid/os/LocalPowerManager;->userActivity(JZI)V

    .line 5006
    .end local v0           #curTime:J
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5009
    const/4 v2, 0x1

    :try_start_22
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverMayRun:Z

    .line 5010
    monitor-exit v3

    .line 5012
    :cond_25
    return-void

    .line 5010
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public screenTurnedOff(I)V
    .registers 4
    .parameter "why"

    .prologue
    const/4 v1, 0x0

    .line 4220
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4221
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4222
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 4223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 4224
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_25

    .line 4225
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_1a

    .line 4226
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 4228
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4229
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 4230
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4231
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_28

    .line 4232
    return-void

    .line 4224
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0

    .line 4231
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .parameter "screenOnListener"

    .prologue
    const/4 v1, 0x1

    .line 4236
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4242
    if-eqz p1, :cond_2b

    .line 4243
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_1d

    .line 4245
    :try_start_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_43

    .line 4248
    :goto_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 4283
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4284
    const/4 v0, 0x1

    :try_start_21
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 4285
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 4286
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4287
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_40

    .line 4288
    return-void

    .line 4275
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_35

    .line 4277
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 4279
    :cond_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4280
    const/4 v0, 0x1

    :try_start_39
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 4281
    monitor-exit v1

    goto :goto_1d

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3d

    throw v0

    .line 4287
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0

    .line 4246
    :catch_43
    move-exception v0

    goto :goto_13
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 8
    .parameter "win"
    .parameter "transit"

    .prologue
    const/16 v4, 0x2004

    const/16 v3, 0x2002

    const/16 v2, 0x1003

    const/16 v1, 0x1001

    .line 1765
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_1c

    .line 1766
    if-eq p2, v3, :cond_10

    if-ne p2, v4, :cond_14

    .line 1767
    :cond_10
    const v0, 0x10a001b

    .line 1793
    :goto_13
    return v0

    .line 1768
    :cond_14
    if-eq p2, v1, :cond_18

    if-ne p2, v2, :cond_44

    .line 1769
    :cond_18
    const v0, 0x10a001a

    goto :goto_13

    .line 1771
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_44

    .line 1773
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_34

    .line 1774
    if-eq p2, v3, :cond_28

    if-ne p2, v4, :cond_2c

    .line 1775
    :cond_28
    const v0, 0x10a0015

    goto :goto_13

    .line 1776
    :cond_2c
    if-eq p2, v1, :cond_30

    if-ne p2, v2, :cond_44

    .line 1777
    :cond_30
    const v0, 0x10a0014

    goto :goto_13

    .line 1780
    :cond_34
    if-eq p2, v3, :cond_38

    if-ne p2, v4, :cond_3c

    .line 1781
    :cond_38
    const v0, 0x10a0019

    goto :goto_13

    .line 1782
    :cond_3c
    if-eq p2, v1, :cond_40

    if-ne p2, v2, :cond_44

    .line 1783
    :cond_40
    const v0, 0x10a0018

    goto :goto_13

    .line 1786
    :cond_44
    const/4 v0, 0x5

    if-ne p2, v0, :cond_51

    .line 1787
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1789
    const v0, 0x10a0011

    goto :goto_13

    .line 1793
    :cond_51
    const/4 v0, 0x0

    goto :goto_13
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 4350
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4351
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 4354
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4355
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .parameter "win"
    .parameter "fl"
    .parameter "adjust"
    .parameter "attached"
    .parameter "insetDecors"
    .parameter "pf"
    .parameter "df"
    .parameter "cf"
    .parameter "vf"

    .prologue
    .line 2882
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_3c

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_3c

    .line 2890
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 2891
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 2892
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 2893
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 2924
    .end local p8
    :goto_30
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_38

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .end local p7
    :cond_38
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2926
    return-void

    .line 2901
    .restart local p7
    .restart local p8
    :cond_3c
    const/16 v0, 0x10

    if-eq p3, v0, :cond_58

    .line 2902
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2918
    :cond_47
    :goto_47
    if-eqz p5, :cond_4d

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p8

    .end local p8
    :cond_4d
    invoke-virtual {p7, p8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2919
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_30

    .line 2910
    .restart local p8
    :cond_58
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2911
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_47

    .line 2912
    iget v0, p8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_71

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    .line 2913
    :cond_71
    iget v0, p8, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_7b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    .line 2914
    :cond_7b
    iget v0, p8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_85

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    .line 2915
    :cond_85
    iget v0, p8, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_47

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    goto :goto_47
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .parameter "newOrientation"

    .prologue
    .line 4947
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4948
    :try_start_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_c

    .line 4949
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 4950
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 4952
    :cond_c
    monitor-exit v1

    .line 4953
    return-void

    .line 4952
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method setHdmiHwPlugged(Z)V
    .registers 8
    .parameter "plugged"

    .prologue
    const/high16 v5, 0x800

    .line 3480
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiHwPlugged:Z

    if-eq v2, p1, :cond_54

    .line 3481
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHdmiHwPlugged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiHwPlugged:Z

    .line 3483
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HDMI_HW_PLUGGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3484
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3485
    const-string v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3486
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3488
    const-string v2, "ro.vout.dualdisplay"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3489
    invoke-static {p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setDualDisplay(Z)V

    .line 3491
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3492
    .local v1, it:Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3493
    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3494
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3497
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #it:Landroid/content/Intent;
    :cond_54
    return-void
.end method

.method setHdmiPlugged(Z)V
    .registers 4
    .parameter "plugged"

    .prologue
    .line 3500
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_15

    .line 3501
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 3502
    const-string v1, "vout.hdmi.plugged"

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v0, :cond_16

    const-string v0, "true"

    :goto_e
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 3505
    :cond_15
    return-void

    .line 3502
    :cond_16
    const-string v0, "false"

    goto :goto_e
.end method

.method public setInitialDisplaySize(Landroid/view/Display;II)V
    .registers 23
    .parameter "display"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1063
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1066
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1a2

    .line 1067
    move/from16 v7, p3

    .line 1068
    .local v7, shortSize:I
    move/from16 v4, p2

    .line 1069
    .local v4, longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1070
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 1071
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_196

    .line 1073
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1074
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1094
    :goto_35
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawExternalWidth()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayWidth:I

    .line 1095
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRawExternalHeight()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mExternalDisplayHeight:I

    .line 1097
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1101
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1105
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105000c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    aput v13, v11, v12

    aput v13, v9, v10

    .line 1111
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x105000d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    aput v17, v15, v16

    aput v17, v13, v14

    aput v17, v11, v12

    aput v17, v9, v10

    .line 1119
    mul-int/lit16 v9, v7, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v8, v9, v10

    .line 1123
    .local v8, shortSizeDp:I
    const/16 v9, 0x258

    if-ge v8, v9, :cond_1d9

    .line 1125
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1126
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1137
    :goto_f5
    const-string v9, "ro.ui.tabletui"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_108

    .line 1138
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1139
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1142
    :cond_108
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-nez v9, :cond_204

    .line 1143
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110034

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1147
    const-string v9, "qemu.hw.mainkeys"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1148
    .local v6, navBarOverride:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13c

    .line 1149
    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f5

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1156
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_13c
    :goto_13c
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    if-eqz v9, :cond_20e

    .line 1160
    mul-int/lit16 v9, v4, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v5, v9, v10

    .line 1163
    .local v5, longSizeDp:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    aget v9, v9, v10

    mul-int/lit16 v9, v9, 0xa0

    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v3, v9, v10

    .line 1166
    .local v3, barHeightDp:I
    sub-int v9, v8, v3

    mul-int/lit8 v9, v9, 0x10

    div-int v2, v9, v5

    .line 1171
    .local v2, aspect:I
    const/16 v9, 0x9

    if-ge v2, v9, :cond_20b

    const/4 v9, 0x1

    :goto_163
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 1180
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :goto_167
    const-string v9, "ro.platform.has.mbxuimode"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_17f

    .line 1181
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1182
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1183
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 1186
    :cond_17f
    const-string v9, "portrait"

    const-string v10, "persist.demo.hdmirotation"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_222

    .line 1187
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    .line 1191
    :goto_195
    return-void

    .line 1076
    .end local v8           #shortSizeDp:I
    :cond_196
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1077
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_35

    .line 1080
    .end local v4           #longSize:I
    .end local v7           #shortSize:I
    :cond_1a2
    move/from16 v7, p2

    .line 1081
    .restart local v7       #shortSize:I
    move/from16 v4, p3

    .line 1082
    .restart local v4       #longSize:I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1083
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1084
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_1cd

    .line 1086
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1087
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_35

    .line 1089
    :cond_1cd
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1090
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_35

    .line 1127
    .restart local v8       #shortSizeDp:I
    :cond_1d9
    const/16 v9, 0x2d0

    if-ge v8, v9, :cond_1e9

    .line 1129
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1130
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_f5

    .line 1133
    :cond_1e9
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    .line 1134
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    goto/16 :goto_f5

    .line 1150
    .restart local v6       #navBarOverride:Ljava/lang/String;
    :cond_1f5
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13c

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_13c

    .line 1153
    .end local v6           #navBarOverride:Ljava/lang/String;
    :cond_204
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_13c

    .line 1171
    .restart local v2       #aspect:I
    .restart local v3       #barHeightDp:I
    .restart local v5       #longSizeDp:I
    :cond_20b
    const/4 v9, 0x0

    goto/16 :goto_163

    .line 1172
    .end local v2           #aspect:I
    .end local v3           #barHeightDp:I
    .end local v5           #longSizeDp:I
    :cond_20e
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v9, :cond_21b

    .line 1175
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_167

    .line 1177
    :cond_21b
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    goto/16 :goto_167

    .line 1189
    :cond_222
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiRotation:I

    goto/16 :goto_195
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .parameter "ime"
    .parameter "target"

    .prologue
    .line 5062
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5063
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5064
    return-void
.end method

.method public setRotationLw(I)V
    .registers 3
    .parameter "rotation"

    .prologue
    .line 4552
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 4553
    return-void
.end method

.method public setSafeMode(Z)V
    .registers 5
    .parameter "safeMode"

    .prologue
    .line 4584
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 4585
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const/16 v0, 0x2711

    :goto_7
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4588
    return-void

    .line 4585
    :cond_c
    const/16 v0, 0x2710

    goto :goto_7
.end method

.method public setUserRotationMode(II)V
    .registers 6
    .parameter "mode"
    .parameter "rot"

    .prologue
    const/4 v2, 0x1

    .line 4566
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4569
    .local v0, res:Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_15

    .line 4570
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4573
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4581
    :goto_14
    return-void

    .line 4577
    :cond_15
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_14
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 5
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 4630
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 4675
    :goto_4
    return-void

    .line 4631
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method showGlobalActionsDialog()V
    .registers 5

    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_f

    .line 844
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 846
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 847
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 848
    if-eqz v0, :cond_23

    .line 851
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 853
    :cond_23
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .registers 4
    .parameter "behavior"

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 940
    return-void
.end method

.method startDockOrHome()V
    .registers 4

    .prologue
    .line 4883
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4884
    .local v0, dock:Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 4886
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_b} :catch_c

    .line 4892
    :goto_b
    return-void

    .line 4888
    :catch_c
    move-exception v1

    .line 4891
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method public startScreenSaver()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 4732
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4733
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenSaverEnabled()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4734
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 4735
    .local v0, dm:Landroid/service/dreams/IDreamManager;
    if-nez v0, :cond_12

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_18

    .line 4747
    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :goto_11
    return v1

    .line 4740
    .restart local v0       #dm:Landroid/service/dreams/IDreamManager;
    :cond_12
    :try_start_12
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1b

    .line 4741
    const/4 v1, 0x1

    :try_start_16
    monitor-exit v2

    goto :goto_11

    .line 4746
    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1

    .line 4742
    .restart local v0       #dm:Landroid/service/dreams/IDreamManager;
    :catch_1b
    move-exception v3

    .line 4746
    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_18

    goto :goto_11
.end method

.method public stopScreenSaver()V
    .registers 4

    .prologue
    .line 4752
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4753
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 4754
    .local v0, dm:Landroid/service/dreams/IDreamManager;
    if-nez v0, :cond_b

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    .line 4763
    :goto_a
    return-void

    .line 4759
    :cond_b
    :try_start_b
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_13

    .line 4762
    :goto_e
    :try_start_e
    monitor-exit v2

    goto :goto_a

    .end local v0           #dm:Landroid/service/dreams/IDreamManager;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v1

    .line 4760
    .restart local v0       #dm:Landroid/service/dreams/IDreamManager;
    :catch_13
    move-exception v1

    goto :goto_e
.end method

.method public subWindowTypeToLayerLw(I)I
    .registers 5
    .parameter "type"

    .prologue
    .line 1490
    packed-switch p1, :pswitch_data_26

    .line 1501
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 1493
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 1495
    :pswitch_1f
    const/4 v0, -0x2

    goto :goto_1c

    .line 1497
    :pswitch_21
    const/4 v0, -0x1

    goto :goto_1c

    .line 1499
    :pswitch_23
    const/4 v0, 0x2

    goto :goto_1c

    .line 1490
    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public systemBooted()V
    .registers 3

    .prologue
    .line 4621
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4622
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 4623
    monitor-exit v1

    .line 4624
    return-void

    .line 4623
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 4604
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    if-eqz v0, :cond_9

    .line 4606
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onSystemReady()V

    .line 4608
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4609
    :try_start_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 4610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 4611
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4616
    monitor-exit v1

    .line 4617
    return-void

    .line 4616
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw v0
.end method

.method updateOrientationListenerLp()V
    .registers 3

    .prologue
    .line 736
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_9

    .line 763
    :cond_8
    :goto_8
    return-void

    .line 745
    :cond_9
    const/4 v0, 0x1

    .line 746
    .local v0, disable:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_21

    .line 747
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 748
    const/4 v0, 0x0

    .line 750
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_21

    .line 751
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 753
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 758
    :cond_21
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_8

    .line 759
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 761
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_8
.end method

.method updateRotation(Z)V
    .registers 4
    .parameter "alwaysSendConfiguration"

    .prologue
    .line 4819
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 4823
    :goto_6
    return-void

    .line 4820
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method updateRotation(ZZ)V
    .registers 4
    .parameter "alwaysSendConfiguration"
    .parameter "forceRelayout"

    .prologue
    .line 4828
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4832
    :goto_5
    return-void

    .line 4829
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public updateSettings()V
    .registers 14

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1194
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1195
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1196
    .local v4, updateRotation:Z
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1197
    :try_start_d
    const-string v11, "end_button_behavior"

    const/4 v12, 0x2

    invoke-static {v3, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 1200
    const-string v11, "incall_power_button_behavior"

    const/4 v12, 0x1

    invoke-static {v3, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1205
    const-string v11, "user_rotation"

    const/4 v12, 0x0

    invoke-static {v3, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1207
    .local v5, userRotation:I
    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    if-eq v11, v5, :cond_2d

    .line 1208
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1209
    const/4 v4, 0x1

    .line 1211
    :cond_2d
    const-string v11, "accelerometer_rotation"

    const/4 v12, 0x0

    invoke-static {v3, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_ae

    move v6, v7

    .line 1215
    .local v6, userRotationMode:I
    :goto_37
    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-eq v11, v6, :cond_41

    .line 1216
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 1217
    const/4 v4, 0x1

    .line 1218
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1221
    :cond_41
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v11, :cond_5a

    .line 1222
    const-string v11, "pointer_location"

    const/4 v12, 0x0

    invoke-static {v3, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1224
    .local v2, pointerLocation:I
    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v11, v2, :cond_5a

    .line 1225
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 1226
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_57

    move v9, v8

    :cond_57
    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1231
    .end local v2           #pointerLocation:I
    :cond_5a
    const-string v9, "screen_off_timeout"

    const/4 v11, 0x0

    invoke-static {v3, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1233
    const-string v9, "default_input_method"

    invoke-static {v3, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, imId:Ljava/lang/String;
    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b0

    move v0, v8

    .line 1236
    .local v0, hasSoftInput:Z
    :goto_72
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v9, v0, :cond_79

    .line 1237
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 1238
    const/4 v4, 0x1

    .line 1242
    :cond_79
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x1110038

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverFeatureAvailable:Z

    .line 1245
    const-string v9, "screensaver_enabled"

    const/4 v11, 0x1

    invoke-static {v3, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_92

    move v7, v8

    :cond_92
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverEnabledByUser:Z

    .line 1252
    const-string v7, "screen_off_timeout"

    const/4 v9, 0x0

    invoke-static {v3, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    .line 1254
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    if-lez v7, :cond_a7

    .line 1257
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    add-int/lit16 v7, v7, -0x1388

    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverTimeout:I

    .line 1260
    :cond_a7
    monitor-exit v10
    :try_end_a8
    .catchall {:try_start_d .. :try_end_a8} :catchall_b2

    .line 1261
    if-eqz v4, :cond_ad

    .line 1262
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 1264
    :cond_ad
    return-void

    .end local v0           #hasSoftInput:Z
    .end local v1           #imId:Ljava/lang/String;
    .end local v6           #userRotationMode:I
    :cond_ae
    move v6, v8

    .line 1211
    goto :goto_37

    .restart local v1       #imId:Ljava/lang/String;
    .restart local v6       #userRotationMode:I
    :cond_b0
    move v0, v7

    .line 1235
    goto :goto_72

    .line 1260
    .end local v1           #imId:Ljava/lang/String;
    .end local v5           #userRotation:I
    .end local v6           #userRotationMode:I
    :catchall_b2
    move-exception v7

    :try_start_b3
    monitor-exit v10
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v7
.end method

.method public userActivity()V
    .registers 6

    .prologue
    .line 4702
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    monitor-enter v1

    .line 4703
    :try_start_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_18

    .line 4705
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4706
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4708
    :cond_18
    monitor-exit v1

    .line 4709
    return-void

    .line 4708
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public windowTypeToLayerLw(I)I
    .registers 6
    .parameter "type"

    .prologue
    const/4 v0, 0x2

    .line 1429
    const/4 v1, 0x1

    if-lt p1, v1, :cond_9

    const/16 v1, 0x63

    if-gt p1, v1, :cond_9

    .line 1485
    :goto_8
    :pswitch_8
    return v0

    .line 1432
    :cond_9
    packed-switch p1, :pswitch_data_68

    .line 1484
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1434
    :pswitch_25
    const/16 v0, 0xf

    goto :goto_8

    .line 1436
    :pswitch_28
    const/16 v0, 0x10

    goto :goto_8

    .line 1438
    :pswitch_2b
    const/16 v0, 0xe

    goto :goto_8

    .line 1440
    :pswitch_2e
    const/4 v0, 0x5

    goto :goto_8

    .line 1442
    :pswitch_30
    const/4 v0, 0x4

    goto :goto_8

    .line 1444
    :pswitch_32
    const/4 v0, 0x3

    goto :goto_8

    .line 1446
    :pswitch_34
    const/16 v0, 0xb

    goto :goto_8

    .line 1448
    :pswitch_37
    const/16 v0, 0xc

    goto :goto_8

    .line 1450
    :pswitch_3a
    const/16 v0, 0x8

    goto :goto_8

    .line 1452
    :pswitch_3d
    const/16 v0, 0x15

    goto :goto_8

    .line 1454
    :pswitch_40
    const/16 v0, 0x9

    goto :goto_8

    .line 1456
    :pswitch_43
    const/16 v0, 0xa

    goto :goto_8

    .line 1458
    :pswitch_46
    const/16 v0, 0x11

    goto :goto_8

    .line 1460
    :pswitch_49
    const/16 v0, 0x12

    goto :goto_8

    .line 1462
    :pswitch_4c
    const/16 v0, 0x17

    goto :goto_8

    .line 1464
    :pswitch_4f
    const/4 v0, 0x7

    goto :goto_8

    .line 1466
    :pswitch_51
    const/4 v0, 0x6

    goto :goto_8

    .line 1470
    :pswitch_53
    const/16 v0, 0x16

    goto :goto_8

    .line 1472
    :pswitch_56
    const/16 v0, 0x19

    goto :goto_8

    .line 1474
    :pswitch_59
    const/16 v0, 0x13

    goto :goto_8

    .line 1476
    :pswitch_5c
    const/16 v0, 0x14

    goto :goto_8

    .line 1478
    :pswitch_5f
    const/16 v0, 0x18

    goto :goto_8

    .line 1480
    :pswitch_62
    const/16 v0, 0x1a

    goto :goto_8

    .line 1482
    :pswitch_65
    const/16 v0, 0xd

    goto :goto_8

    .line 1432
    :pswitch_data_68
    .packed-switch 0x7d0
        :pswitch_25
        :pswitch_30
        :pswitch_32
        :pswitch_3a
        :pswitch_34
        :pswitch_51
        :pswitch_49
        :pswitch_4f
        :pswitch_2e
        :pswitch_37
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_8
        :pswitch_28
        :pswitch_4c
        :pswitch_53
        :pswitch_2b
        :pswitch_56
        :pswitch_59
        :pswitch_46
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_5c
    .end packed-switch
.end method
