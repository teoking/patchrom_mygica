.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISBILITY:Z = false

.field static final DESTROY_ACTIVITIES_MSG:I = 0x6d

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x69

.field private static final FINISH_AFTER_PAUSE:I = 0x1

.field private static final FINISH_AFTER_VISIBLE:I = 0x2

.field private static final FINISH_IMMEDIATELY:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x67

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x66

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x6b

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x6a

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x64

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x6c

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_TOKENS:Z

.field static final localLOGV:Z


# instance fields
.field mConfigWillChange:Z

.field final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field mDismissKeyguardOnNextActivity:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mInitialStartTime:J

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mMainStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailHeight:I

.field mThumbnailWidth:I

.field mUserLeaving:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Z)V
    .locals 6
    .parameter "service"
    .parameter "context"
    .parameter "mainStack"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 412
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 236
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 243
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 248
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 255
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 267
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 269
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 274
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 279
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 281
    iput v4, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 282
    iput v4, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 308
    new-instance v1, Lcom/android/server/am/ActivityStack$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStack$1;-><init>(Lcom/android/server/am/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 413
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 414
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    .line 415
    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    .line 416
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 418
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 419
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 420
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 421
    return-void
.end method

.method private final completePauseLocked()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    const/4 v7, 0x0

    .line 1089
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1092
    .local v3, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 1093
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_5

    .line 1095
    const/4 v5, 0x2

    invoke-direct {p0, v3, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1128
    :goto_0
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1131
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1132
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1142
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 1143
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1146
    :cond_2
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    iget-wide v5, v3, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v5, v5, v11

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1148
    const-wide/16 v1, 0x0

    .line 1149
    .local v1, diff:J
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v6

    .line 1150
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v7}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v7

    iget-wide v9, v3, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v1, v7, v9

    .line 1152
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    cmp-long v5, v1, v11

    if-lez v5, :cond_4

    .line 1154
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1155
    .local v0, bsi:Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1156
    :try_start_1
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .line 1159
    .local v4, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_3

    .line 1160
    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1162
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1165
    .end local v0           #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1           #diff:J
    .end local v4           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    iput-wide v11, v3, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1166
    return-void

    .line 1096
    :cond_5
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_9

    .line 1098
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_6

    .line 1099
    iput-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1100
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1104
    :cond_6
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v5, :cond_7

    .line 1111
    const/4 v5, 0x1

    const-string v6, "pause-config"

    invoke-virtual {p0, v3, v5, v8, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto :goto_0

    .line 1113
    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_8

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto/16 :goto_0

    .line 1121
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    .line 1126
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1134
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 1135
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1138
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_1

    .line 1152
    .restart local v1       #diff:J
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1162
    .restart local v0       #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private final completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .parameter "next"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1176
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1177
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1178
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1181
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1182
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1183
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1195
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1199
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearThumbnail()V

    .line 1200
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_1

    .line 1201
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1203
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1204
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1205
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1206
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1211
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    .line 1212
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v2

    .line 1213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1214
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    :goto_0
    const-string v1, "ro.app.optimization"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1221
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->nativeOptimization(Lcom/android/server/am/ActivityRecord;)V

    .line 1223
    :cond_2
    return-void

    .line 1214
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1216
    :cond_3
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_0
.end method

.method private final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I
    .locals 4
    .parameter "r"
    .parameter "task"

    .prologue
    .line 2360
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2361
    .local v1, i:I
    :cond_0
    if-lez v1, :cond_1

    .line 2362
    add-int/lit8 v1, v1, -0x1

    .line 2363
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 2364
    .local v0, candidate:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    .line 2367
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p2, :cond_2

    .line 2375
    .end local v0           #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 2370
    .restart local v0       #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 2371
    goto :goto_0
.end method

.method private findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 546
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 547
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 548
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserId;->getUserId(I)I

    move-result v4

    .line 552
    .local v4, userId:I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 553
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 554
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 555
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_1

    .line 556
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v4, :cond_1

    .line 565
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v3

    .line 553
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 565
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 8
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 499
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 500
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 501
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v6, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .line 506
    .local v2, cp:Lcom/android/server/am/TaskRecord;
    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserId;->getUserId(I)I

    move-result v5

    .line 507
    .local v5, userId:I
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 508
    .local v0, N:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 509
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 510
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v6, v2, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, v5, :cond_4

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    .line 512
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 516
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 517
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 537
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_1
    return-object v4

    .line 521
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 527
    :cond_3
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 508
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 537
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "r"
    .parameter "mode"

    .prologue
    .line 3776
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 3777
    .local v0, index:I
    if-gez v0, :cond_0

    .line 3778
    const/4 v1, 0x0

    .line 3781
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .parameter "r"
    .parameter "index"
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3789
    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_3

    .line 3790
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3791
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3792
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 3796
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    .line 3803
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3804
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3836
    .end local p1
    :cond_1
    :goto_1
    return-object p1

    .line 3798
    .restart local p1
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto :goto_0

    .line 3809
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3810
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3811
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3812
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_4

    .line 3813
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3815
    :cond_4
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3817
    .local v1, prevState:Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3819
    if-eqz p3, :cond_5

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v3, :cond_5

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v3, :cond_7

    .line 3824
    :cond_5
    const-string v3, "finish-imm"

    invoke-virtual {p0, p1, v4, v4, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v0

    .line 3825
    .local v0, activityRemoved:Z
    if-eqz v0, :cond_6

    .line 3826
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3828
    :cond_6
    if-eqz v0, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 3833
    .end local v0           #activityRemoved:Z
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3834
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_1
.end method

.method private final finishTaskMoveLocked(I)V
    .locals 1
    .parameter "task"

    .prologue
    .line 4232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4233
    return-void
.end method

.method private final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .parameter "tag"
    .parameter "r"
    .parameter "task"

    .prologue
    .line 4430
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4435
    return-void
.end method

.method private final moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .parameter "where"

    .prologue
    .line 2383
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 2384
    .local v0, newTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2385
    .local v2, top:I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2392
    .local v1, oldTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2393
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2394
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2395
    return-object v0
.end method

.method private native nativeOptimization(Lcom/android/server/am/ActivityRecord;)V
.end method

.method private final performClearTaskAtIndexLocked(II)V
    .locals 6
    .parameter "taskId"
    .parameter "i"

    .prologue
    .line 2307
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2308
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2309
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_2

    .line 2322
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void

    .line 2313
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 2314
    add-int/lit8 p2, p2, 0x1

    .line 2315
    goto :goto_0

    .line 2317
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2319
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private final performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .parameter "taskId"
    .parameter "newR"
    .parameter "launchFlags"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2240
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2243
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 2244
    add-int/lit8 v2, v2, -0x1

    .line 2245
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2246
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_0

    .line 2247
    add-int/lit8 v2, v2, 0x1

    .line 2253
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v2, :cond_2

    .line 2254
    add-int/lit8 v2, v2, -0x1

    .line 2255
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2256
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 2259
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_3

    .line 2299
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-object v4

    .line 2262
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2264
    move-object v6, v1

    .line 2265
    .local v6, ret:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    .line 2266
    add-int/lit8 v2, v2, 0x1

    .line 2267
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2268
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_6

    .line 2283
    :cond_5
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_7

    const/high16 v0, 0x2000

    and-int/2addr v0, p3

    if-nez v0, :cond_7

    .line 2285
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7

    .line 2286
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v7

    .line 2287
    .local v7, index:I
    if-ltz v7, :cond_2

    .line 2288
    const-string v10, "clear"

    move-object v5, p0

    move v8, v3

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 2271
    .end local v7           #index:I
    :cond_6
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_4

    .line 2274
    const-string v5, "clear"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2276
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    move-object v4, v6

    .line 2295
    goto :goto_0
.end method

.method private final performClearTaskLocked(I)V
    .locals 3
    .parameter "taskId"

    .prologue
    .line 2328
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2331
    .local v0, i:I
    :cond_0
    if-lez v0, :cond_1

    .line 2332
    add-int/lit8 v0, v0, -0x1

    .line 2333
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2334
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 2335
    add-int/lit8 v0, v0, 0x1

    .line 2341
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v0, :cond_2

    .line 2342
    add-int/lit8 v0, v0, -0x1

    .line 2343
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2344
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 2347
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p1, :cond_1

    .line 2349
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 2353
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method private final relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 9
    .parameter "r"
    .parameter "changes"
    .parameter "andResume"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 4563
    const/4 v2, 0x0

    .line 4564
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 4565
    .local v3, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_0

    .line 4566
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4567
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4572
    :cond_0
    if-eqz p3, :cond_3

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    const/4 v4, 0x2

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4576
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4582
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4583
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_1

    move v5, v7

    :cond_1
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4592
    :goto_1
    if-eqz p3, :cond_4

    .line 4593
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4594
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4595
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_2

    .line 4596
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4598
    :cond_2
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4604
    :goto_2
    return v7

    .line 4572
    :cond_3
    const/16 v0, 0x7544

    goto :goto_0

    .line 4600
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4601
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 4588
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .parameter "list"
    .parameter "app"

    .prologue
    .line 4107
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4111
    .local v0, i:I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 4112
    add-int/lit8 v0, v0, -0x1

    .line 4113
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4116
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    .line 4118
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4119
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 4122
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3896
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3897
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3898
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3899
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3900
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 3901
    return-void
.end method

.method private final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 26
    .parameter "taskTop"
    .parameter "newActivity"

    .prologue
    .line 1921
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/16 v18, 0x1

    .line 1931
    .local v18, forceReset:Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    .line 1936
    .local v24, task:Lcom/android/server/am/TaskRecord;
    const/16 v22, 0x0

    .line 1937
    .local v22, target:Lcom/android/server/am/ActivityRecord;
    const/16 v23, 0x0

    .line 1938
    .local v23, targetI:I
    const/16 v25, -0x1

    .line 1939
    .local v25, taskTopI:I
    const/16 v21, -0x1

    .line 1940
    .local v21, replyChainEnd:I
    const/16 v20, -0x1

    .line 1941
    .local v20, lastReparentPos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, i:I
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_3

    .line 1942
    if-ltz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v12, v2

    .line 1944
    .local v12, below:Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v12, :cond_2

    iget-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2

    .line 1941
    :goto_3
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 1921
    .end local v12           #below:Lcom/android/server/am/ActivityRecord;
    .end local v18           #forceReset:Z
    .end local v19           #i:I
    .end local v20           #lastReparentPos:I
    .end local v21           #replyChainEnd:I
    .end local v22           #target:Lcom/android/server/am/ActivityRecord;
    .end local v23           #targetI:I
    .end local v24           #task:Lcom/android/server/am/TaskRecord;
    .end local v25           #taskTopI:I
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 1942
    .restart local v18       #forceReset:Z
    .restart local v19       #i:I
    .restart local v20       #lastReparentPos:I
    .restart local v21       #replyChainEnd:I
    .restart local v22       #target:Lcom/android/server/am/ActivityRecord;
    .restart local v23       #targetI:I
    .restart local v24       #task:Lcom/android/server/am/TaskRecord;
    .restart local v25       #taskTopI:I
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 1948
    .restart local v12       #below:Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-eqz v12, :cond_4

    iget v2, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, v5, :cond_4

    .line 2224
    .end local v12           #below:Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-object p1

    .line 1951
    .restart local v12       #below:Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-nez v22, :cond_5

    .line 1952
    move-object/from16 v22, v12

    .line 1953
    move/from16 v23, v19

    .line 1957
    const/16 v21, -0x1

    .line 1958
    goto :goto_3

    .line 1961
    :cond_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    .line 1963
    .local v17, flags:I
    and-int/lit8 v2, v17, 0x2

    if-eqz v2, :cond_8

    const/16 v16, 0x1

    .line 1965
    .local v16, finishOnTaskLaunch:Z
    :goto_4
    and-int/lit8 v2, v17, 0x40

    if-eqz v2, :cond_9

    const/4 v11, 0x1

    .line 1968
    .local v11, allowTaskReparenting:Z
    :goto_5
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_1f

    .line 1974
    if-gez v25, :cond_6

    .line 1975
    move/from16 v25, v23

    .line 1977
    :cond_6
    if-eqz v12, :cond_1e

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_1e

    .line 1978
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v5, 0x8

    and-int/2addr v2, v5

    if-eqz v2, :cond_a

    const/4 v13, 0x1

    .line 1981
    .local v13, clearWhenTaskReset:Z
    :goto_6
    if-nez v16, :cond_b

    if-nez v13, :cond_b

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_b

    .line 1988
    if-gez v21, :cond_7

    .line 1989
    move/from16 v21, v23

    .line 2220
    .end local v13           #clearWhenTaskReset:Z
    :cond_7
    :goto_7
    move-object/from16 v22, v12

    .line 2221
    move/from16 v23, v19

    goto :goto_3

    .line 1963
    .end local v11           #allowTaskReparenting:Z
    .end local v16           #finishOnTaskLaunch:Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    .line 1965
    .restart local v16       #finishOnTaskLaunch:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 1978
    .restart local v11       #allowTaskReparenting:Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    .line 1991
    .restart local v13       #clearWhenTaskReset:Z
    :cond_b
    if-nez v16, :cond_13

    if-nez v13, :cond_13

    if-eqz v11, :cond_13

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2001
    .local v3, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2006
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2020
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2021
    if-gez v21, :cond_c

    .line 2022
    move/from16 v21, v23

    .line 2024
    :cond_c
    const/4 v15, 0x0

    .line 2025
    .local v15, dstPos:I
    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 2026
    .local v14, curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    move/from16 v4, v23

    .local v4, srcPos:I
    :goto_9
    move/from16 v0, v21

    if-gt v4, v0, :cond_10

    .line 2027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2028
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_f

    .line 2026
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 2010
    .end local v4           #srcPos:I
    .end local v14           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v15           #dstPos:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v2, :cond_e

    .line 2012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2014
    :cond_e
    new-instance v2, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    invoke-direct {v2, v5, v6, v8}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2016
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v5, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_8

    .line 2033
    .restart local v4       #srcPos:I
    .restart local v14       #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .restart local v15       #dstPos:I
    :cond_f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v14, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2034
    iget-object v14, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 2041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v15, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v15, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 2044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2045
    add-int/lit8 v15, v15, 0x1

    .line 2049
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 2051
    :cond_10
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_11

    .line 2052
    move-object/from16 p1, v12

    .line 2054
    :cond_11
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 2055
    const/16 v25, -0x1

    .line 2057
    :cond_12
    const/16 v21, -0x1

    .line 2058
    goto/16 :goto_7

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v14           #curThumbHolder:Lcom/android/server/am/ThumbnailHolder;
    .end local v15           #dstPos:I
    :cond_13
    if-nez v18, :cond_14

    if-nez v16, :cond_14

    if-eqz v13, :cond_1d

    .line 2064
    :cond_14
    if-eqz v13, :cond_18

    .line 2068
    add-int/lit8 v21, v23, 0x1

    .line 2071
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    if-ne v2, v0, :cond_15

    .line 2072
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 2074
    :cond_15
    add-int/lit8 v21, v21, -0x1

    .line 2078
    :cond_16
    :goto_c
    const/4 v3, 0x0

    .line 2079
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v4, v23

    .restart local v4       #srcPos:I
    :goto_d
    move/from16 v0, v21

    if-gt v4, v0, :cond_1a

    .line 2080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2081
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_19

    .line 2079
    :cond_17
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2075
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_18
    if-gez v21, :cond_16

    .line 2076
    move/from16 v21, v23

    goto :goto_c

    .line 2084
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v4       #srcPos:I
    :cond_19
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2086
    add-int/lit8 v21, v21, -0x1

    .line 2087
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 2090
    :cond_1a
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1b

    .line 2091
    move-object/from16 p1, v12

    .line 2093
    :cond_1b
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 2094
    const/16 v25, -0x1

    .line 2096
    :cond_1c
    const/16 v21, -0x1

    .line 2097
    goto/16 :goto_7

    .line 2101
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_1d
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 2106
    .end local v13           #clearWhenTaskReset:Z
    :cond_1e
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 2109
    :cond_1f
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_21

    if-eqz v12, :cond_20

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_21

    .line 2117
    :cond_20
    if-gez v21, :cond_7

    .line 2118
    move/from16 v21, v23

    goto/16 :goto_7

    .line 2121
    :cond_21
    if-ltz v25, :cond_2e

    if-eqz v11, :cond_2e

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_2e

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2135
    if-nez v18, :cond_22

    if-eqz v16, :cond_27

    .line 2136
    :cond_22
    if-gez v21, :cond_23

    .line 2137
    move/from16 v21, v23

    .line 2139
    :cond_23
    const/4 v3, 0x0

    .line 2142
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v4, v23

    .restart local v4       #srcPos:I
    :goto_f
    move/from16 v0, v21

    if-gt v4, v0, :cond_26

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2144
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_25

    .line 2142
    :cond_24
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 2147
    :cond_25
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2149
    add-int/lit8 v25, v25, -0x1

    .line 2150
    add-int/lit8 v20, v20, -0x1

    .line 2151
    add-int/lit8 v21, v21, -0x1

    .line 2152
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 2155
    :cond_26
    const/16 v21, -0x1

    .line 2156
    goto/16 :goto_7

    .line 2157
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    :cond_27
    if-gez v21, :cond_28

    .line 2158
    move/from16 v21, v23

    .line 2162
    :cond_28
    move/from16 v4, v21

    .restart local v4       #srcPos:I
    :goto_11
    move/from16 v0, v23

    if-lt v4, v0, :cond_2b

    .line 2163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2164
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_29

    .line 2162
    :goto_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 2167
    :cond_29
    if-gez v20, :cond_2a

    .line 2168
    move/from16 v20, v25

    .line 2169
    move-object/from16 p1, v3

    .line 2179
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2180
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v20

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 2186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_12

    .line 2171
    :cond_2a
    add-int/lit8 v20, v20, -0x1

    goto :goto_13

    .line 2191
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    :cond_2b
    const/16 v21, -0x1

    .line 2197
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    .line 2198
    add-int/lit8 v7, v20, -0x1

    .local v7, j:I
    :goto_14
    if-ltz v7, :cond_7

    .line 2199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2200
    .restart local v3       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2d

    .line 2198
    :cond_2c
    :goto_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 2203
    :cond_2d
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2204
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "replace"

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2206
    add-int/lit8 v25, v25, -0x1

    .line 2207
    add-int/lit8 v20, v20, -0x1

    goto :goto_15

    .line 2214
    .end local v3           #p:Lcom/android/server/am/ActivityRecord;
    .end local v4           #srcPos:I
    .end local v7           #j:I
    :cond_2e
    if-eqz v12, :cond_7

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v5, :cond_7

    .line 2217
    const/16 v21, -0x1

    goto/16 :goto_7
.end method

.method private final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 23
    .parameter "r"
    .parameter "newTask"
    .parameter "doResume"
    .parameter "keepCurTransition"
    .parameter "options"

    .prologue
    .line 1765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1767
    .local v16, NH:I
    const/4 v4, -0x1

    .line 1769
    .local v4, addPos:I
    if-nez p2, :cond_4

    .line 1771
    const/16 v22, 0x1

    .line 1772
    .local v22, startIt:Z
    add-int/lit8 v18, v16, -0x1

    .local v18, i:I
    :goto_0
    if-ltz v18, :cond_4

    .line 1773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActivityRecord;

    .line 1774
    .local v19, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 1772
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 1777
    :cond_1
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_3

    .line 1781
    add-int/lit8 v4, v18, 0x1

    .line 1782
    if-nez v22, :cond_4

    .line 1789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1790
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 1791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 1796
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1904
    .end local v18           #i:I
    .end local v19           #p:Lcom/android/server/am/ActivityRecord;
    .end local v22           #startIt:Z
    :cond_2
    :goto_2
    return-void

    .line 1801
    .restart local v18       #i:I
    .restart local v19       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #startIt:Z
    :cond_3
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_0

    .line 1802
    const/16 v22, 0x0

    goto :goto_1

    .line 1809
    .end local v18           #i:I
    .end local v19           #p:Lcom/android/server/am/ActivityRecord;
    .end local v22           #startIt:Z
    :cond_4
    if-gez v4, :cond_5

    .line 1810
    move/from16 v4, v16

    .line 1816
    :cond_5
    move/from16 v0, v16

    if-ge v4, v0, :cond_6

    .line 1817
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 1827
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1828
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 1829
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1830
    if-lez v16, :cond_12

    .line 1834
    move/from16 v15, p2

    .line 1835
    .local v15, showStartingIcon:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    .line 1836
    .local v21, proc:Lcom/android/server/am/ProcessRecord;
    if-nez v21, :cond_7

    .line 1837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/server/ProcessMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #proc:Lcom/android/server/am/ProcessRecord;
    check-cast v21, Lcom/android/server/am/ProcessRecord;

    .line 1839
    .restart local v21       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_7
    if-eqz v21, :cond_8

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_9

    .line 1840
    :cond_8
    const/4 v15, 0x1

    .line 1844
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_d

    .line 1845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v5, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1847
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 1857
    const/16 v17, 0x1

    .line 1858
    .local v17, doShow:Z
    if-eqz p2, :cond_a

    .line 1864
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x20

    and-int/2addr v3, v5

    if-eqz v3, :cond_a

    .line 1866
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 1867
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_f

    const/16 v17, 0x1

    .line 1870
    :cond_a
    :goto_4
    if-eqz v17, :cond_c

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v20, v0

    .line 1876
    .local v20, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v20, :cond_b

    .line 1879
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v5, :cond_10

    const/16 v20, 0x0

    .line 1883
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v20, :cond_11

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_6
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 1901
    .end local v15           #showStartingIcon:Z
    .end local v17           #doShow:Z
    .end local v20           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v21           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_c
    :goto_7
    if-eqz p3, :cond_2

    .line 1902
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_2

    .line 1849
    .restart local v15       #showStartingIcon:Z
    .restart local v21       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_e

    const/16 v3, 0x1008

    :goto_8
    move/from16 v0, p4

    invoke-virtual {v5, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1849
    :cond_e
    const/16 v3, 0x1006

    goto :goto_8

    .line 1867
    .restart local v17       #doShow:Z
    :cond_f
    const/16 v17, 0x0

    goto :goto_4

    .line 1881
    .restart local v20       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_10
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_b

    const/16 v20, 0x0

    goto :goto_5

    .line 1883
    :cond_11
    const/4 v14, 0x0

    goto :goto_6

    .line 1893
    .end local v15           #showStartingIcon:Z
    .end local v17           #doShow:Z
    .end local v20           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v21           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 1895
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_7
.end method

.method private final startPausingLocked(ZZ)V
    .locals 9
    .parameter "userLeaving"
    .parameter "uiSleeping"

    .prologue
    const/16 v8, 0x68

    const/4 v7, 0x0

    .line 931
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    .line 932
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 933
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to pause when pause is already pending for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 937
    .local v2, prev:Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    .line 938
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 939
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    const-string v4, "Trying to pause when nothing is resumed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1013
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 945
    :cond_1
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 946
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 947
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 948
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 949
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 950
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 952
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 954
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_5

    .line 957
    const/16 v3, 0x753d

    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 960
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v6, v2, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v3, v4, v5, p1, v6}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 962
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_2

    .line 963
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_3

    .line 979
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 980
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 982
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 983
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 988
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_6

    .line 993
    if-nez p2, :cond_4

    .line 994
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1002
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1003
    .restart local v1       #msg:Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1004
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1005
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 965
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Exception thrown during pause"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 969
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 972
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 973
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 1011
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_0
.end method

.method private final startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 11
    .parameter "r"
    .parameter "andResume"
    .parameter "checkConfig"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 787
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 790
    .local v9, app:Lcom/android/server/am/ProcessRecord;
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 792
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 793
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 799
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 801
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;)Z

    .line 802
    invoke-virtual {p0, p1, v9, p2, p3}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_1
    return-void

    .line 795
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    goto :goto_0

    .line 804
    :catch_0
    move-exception v10

    .line 805
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x1

    const-string v5, "activity"

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZ)Lcom/android/server/am/ProcessRecord;

    goto :goto_1
.end method

.method private final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3332
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 3334
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 3335
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v2, :cond_1

    .line 3339
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v3, "no-history"

    invoke-virtual {p0, v2, v6, v4, v3}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 3348
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_5

    .line 3349
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_2

    .line 3350
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_2

    .line 3351
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3354
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3356
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3359
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3362
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_3

    .line 3363
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3365
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 3366
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3367
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 3369
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3370
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3371
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3386
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    :goto_0
    return-void

    .line 3372
    :catch_0
    move-exception v0

    .line 3376
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3378
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3380
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3381
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v2, :cond_5

    .line 3382
    const-string v2, "stop-except"

    invoke-virtual {p0, p1, v7, v6, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto :goto_0
.end method

.method private final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 490
    .local v0, hadit:Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    return v0
.end method


# virtual methods
.method final activityDestroyed(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 4084
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 4085
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 4087
    .local v1, origId:J
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4088
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 4089
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4092
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 4093
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 4094
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v6, :cond_1

    .line 4095
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4096
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4099
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4101
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4103
    monitor-exit v5

    .line 4104
    return-void

    .line 4101
    .end local v0           #index:I
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4103
    .end local v1           #origId:J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method final activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 29
    .parameter "token"
    .parameter "fromTimeout"
    .parameter "config"

    .prologue
    .line 3441
    const/16 v23, 0x0

    .line 3443
    .local v23, res:Lcom/android/server/am/ActivityRecord;
    const/16 v25, 0x0

    .line 3444
    .local v25, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v19, 0x0

    .line 3445
    .local v19, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v26, 0x0

    .line 3446
    .local v26, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v13, 0x0

    .line 3447
    .local v13, NS:I
    const/4 v12, 0x0

    .line 3448
    .local v12, NF:I
    const/4 v14, 0x0

    .line 3449
    .local v14, NT:I
    const/16 v24, 0x0

    .line 3450
    .local v24, sendThumbnail:Landroid/app/IApplicationThread;
    const/16 v16, 0x0

    .line 3451
    .local v16, booting:Z
    const/16 v18, 0x0

    .line 3452
    .local v18, enableScreen:Z
    const/4 v15, 0x0

    .line 3454
    .local v15, activityRemoved:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 3455
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3456
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_0

    .line 3457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3458
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 3462
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 3463
    .local v22, index:I
    if-ltz v22, :cond_a

    .line 3464
    move-object/from16 v23, v4

    .line 3466
    if-eqz p2, :cond_1

    .line 3467
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 3475
    :cond_1
    if-eqz p3, :cond_2

    .line 3476
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 3480
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3487
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 3488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 3489
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_4

    .line 3490
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    .line 3491
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 3497
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3500
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_5

    .line 3501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_5

    .line 3502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 3503
    const/16 v18, 0x1

    .line 3512
    :cond_5
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v25

    .line 3513
    if-eqz v25, :cond_b

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3514
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 3515
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3516
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v19, v20

    .line 3518
    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_7

    .line 3519
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3520
    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v27, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v26, v27

    .line 3523
    .end local v27           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_8

    .line 3524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v16, v0

    .line 3525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 3527
    :cond_8
    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3532
    if-eqz v24, :cond_9

    .line 3534
    :try_start_5
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 3543
    :cond_9
    :goto_2
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v13, :cond_d

    .line 3544
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3545
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3546
    :try_start_6
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_c

    .line 3547
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    .line 3551
    :goto_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3543
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 3507
    .end local v21           #i:I
    :cond_a
    if-eqz p2, :cond_5

    .line 3508
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v5, p0

    move/from16 v6, p2

    :try_start_7
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto/16 :goto_0

    .line 3527
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    .end local v22           #index:I
    :catchall_0
    move-exception v2

    :goto_5
    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 3513
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #index:I
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 3535
    :catch_0
    move-exception v17

    .line 3536
    .local v17, e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown when requesting thumbnail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3537
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 3549
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v21       #i:I
    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_4

    .line 3551
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 3556
    :cond_d
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    if-ge v0, v12, :cond_e

    .line 3557
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3558
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 3559
    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_9
    const-string v6, "finish-idle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v15

    .line 3560
    monitor-exit v3

    .line 3556
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 3560
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v2

    .line 3564
    :cond_e
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v0, v14, :cond_f

    .line 3565
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3566
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    .line 3564
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 3569
    :cond_f
    if-eqz v16, :cond_10

    .line 3570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 3573
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 3577
    if-eqz v18, :cond_11

    .line 3578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 3581
    :cond_11
    if-eqz v15, :cond_12

    .line 3582
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3585
    :cond_12
    return-object v23

    .line 3527
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v21           #i:I
    .restart local v20       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_3
    move-exception v2

    move-object/from16 v19, v20

    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_5

    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v27       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_4
    move-exception v2

    move-object/from16 v26, v27

    .end local v27           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_5
.end method

.method final activityPaused(Landroid/os/IBinder;Z)V
    .locals 8
    .parameter "token"
    .parameter "timeout"

    .prologue
    .line 1019
    const/4 v2, 0x0

    .line 1021
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1022
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 1023
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 1024
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    .line 1025
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1026
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_1

    .line 1029
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1030
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->completePauseLocked()V

    .line 1038
    :cond_0
    :goto_0
    monitor-exit v4

    .line 1039
    return-void

    .line 1032
    :cond_1
    const/16 v5, 0x753c

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_1
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1038
    .end local v1           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1032
    .restart local v1       #index:I
    :cond_2
    :try_start_1
    const-string v3, "(none)"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 850
    return-void
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "r"
    .parameter "icicle"
    .parameter "thumbnail"
    .parameter "description"

    .prologue
    const/16 v4, 0x6c

    const/4 v3, 0x1

    .line 1043
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 1044
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    if-eqz p2, :cond_2

    .line 1052
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1053
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1054
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1056
    :cond_2
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1059
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1060
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1061
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_3

    .line 1062
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_0

    .line 1064
    :cond_3
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v1, :cond_4

    .line 1065
    const/4 v1, 0x0

    const-string v2, "stop-config"

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    .line 1066
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_0

    .line 1071
    :cond_4
    const/4 v0, 0x0

    .line 1072
    .local v0, fgApp:Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_6

    .line 1073
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1077
    :cond_5
    :goto_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v0, :cond_0

    iget-wide v1, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v2, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 1081
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    goto :goto_0

    .line 1074
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_5

    .line 1075
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 834
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 836
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 840
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 841
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 842
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 840
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 844
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 845
    return-void
.end method

.method checkReadyForSleepLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 853
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v2

    if-nez v2, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    if-nez v2, :cond_7

    .line 859
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2

    .line 863
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto :goto_0

    .line 866
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 876
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto :goto_0

    .line 880
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 884
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_6

    .line 885
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 886
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_5

    .line 887
    :cond_4
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 884
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 891
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 899
    .end local v0           #i:I
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 901
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 902
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 904
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_0

    .line 905
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 6
    .parameter "r"
    .parameter "cleanServices"
    .parameter "setState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3848
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    .line 3849
    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3851
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 3852
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3855
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 3856
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 3858
    if-eqz p3, :cond_2

    .line 3860
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3866
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3867
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3870
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_5

    .line 3871
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3872
    .local v0, apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 3873
    .local v2, rec:Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_3

    .line 3874
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .line 3877
    .end local v0           #apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2           #rec:Lcom/android/server/am/PendingIntentRecord;
    :cond_4
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3880
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_6

    .line 3881
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3884
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 3888
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3892
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3893
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 3931
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 3932
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3933
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3934
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 3935
    .local v0, c:Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 3937
    .end local v0           #c:Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 3939
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 6
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 3948
    const/4 v2, 0x0

    .line 3949
    .local v2, lastIsOpaque:Z
    const/4 v0, 0x0

    .line 3950
    .local v0, activityRemoved:Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 3951
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3952
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 3950
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3955
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_2

    .line 3956
    const/4 v2, 0x1

    .line 3958
    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_0

    .line 3961
    :cond_3
    if-eqz v2, :cond_0

    .line 3966
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    .line 3973
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3974
    const/4 v0, 0x1

    goto :goto_1

    .line 3978
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eqz v0, :cond_5

    .line 3979
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3981
    :cond_5
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
    .locals 10
    .parameter "r"
    .parameter "removeFromApp"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 3994
    const/16 v6, 0x7542

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3998
    const/4 v4, 0x0

    .line 4000
    .local v4, removedFromHistory:Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4002
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    .line 4004
    .local v1, hadApp:Z
    :goto_0
    if-eqz v1, :cond_7

    .line 4005
    if-eqz p2, :cond_2

    .line 4006
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4007
    .local v2, idx:I
    if-ltz v2, :cond_0

    .line 4008
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4010
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 4011
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 4012
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4015
    :cond_1
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 4018
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 4022
    .end local v2           #idx:I
    :cond_2
    const/4 v5, 0x0

    .line 4026
    .local v5, skipDestroy:Z
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4040
    :cond_3
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4041
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4050
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_6

    if-nez v5, :cond_6

    .line 4053
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4054
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4055
    .local v3, msg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4056
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4074
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #skipDestroy:Z
    :goto_2
    const/4 v6, 0x0

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4076
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_4

    .line 4077
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " being finished, but not in LRU list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    :cond_4
    return v4

    .line 4002
    .end local v1           #hadApp:Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 4028
    .restart local v1       #hadApp:Z
    .restart local v5       #skipDestroy:Z
    :catch_0
    move-exception v0

    .line 4033
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_3

    .line 4034
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4035
    const/4 v4, 0x1

    .line 4036
    const/4 v5, 0x1

    goto :goto_1

    .line 4060
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 4064
    .end local v5           #skipDestroy:Z
    :cond_7
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_8

    .line 4065
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4066
    const/4 v4, 0x1

    goto :goto_2

    .line 4070
    :cond_8
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2
.end method

.method public dismissKeyguardOnNextActivityLocked()V
    .locals 1

    .prologue
    .line 4608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 4609
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2
    .parameter "starting"
    .parameter "configChanges"

    .prologue
    const/4 v1, 0x0

    .line 1375
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1376
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1379
    :cond_0
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 11
    .parameter "top"
    .parameter "starting"
    .parameter "onlyThisProcess"
    .parameter "configChanges"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1237
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1238
    .local v1, count:I
    add-int/lit8 v4, v1, -0x1

    .line 1239
    .local v4, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 1240
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1243
    :cond_0
    const/4 v0, 0x0

    .line 1244
    .local v0, behindFullscreen:Z
    :goto_1
    if-ltz v4, :cond_a

    .line 1245
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1249
    .local v5, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_2

    .line 1244
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1253
    :cond_2
    if-eqz p3, :cond_3

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_3
    move v2, v7

    .line 1258
    .local v2, doThisProcess:Z
    :goto_2
    if-eq v5, p2, :cond_4

    if-eqz v2, :cond_4

    .line 1259
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 1262
    :cond_4
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_5

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v8, :cond_e

    .line 1263
    :cond_5
    if-eqz p3, :cond_6

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1270
    :cond_6
    if-eq v5, p2, :cond_7

    .line 1271
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v8, p4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1273
    :cond_7
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v8, :cond_8

    .line 1276
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1278
    :cond_8
    if-eq v5, p2, :cond_9

    .line 1279
    invoke-direct {p0, v5, v6, v6}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1315
    :cond_9
    :goto_3
    iget v8, v5, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr p4, v8

    .line 1317
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v8, :cond_1

    .line 1321
    const/4 v0, 0x1

    .line 1322
    add-int/lit8 v4, v4, -0x1

    .line 1329
    .end local v2           #doThisProcess:Z
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_a
    :goto_4
    if-ltz v4, :cond_11

    .line 1330
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1335
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_c

    .line 1336
    if-eqz v0, :cond_10

    .line 1337
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_c

    .line 1340
    iput-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1342
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1343
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_b

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_c

    :cond_b
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_c

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v7, :cond_c

    .line 1348
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1366
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_d
    move v2, v6

    .line 1253
    goto/16 :goto_2

    .line 1283
    .restart local v2       #doThisProcess:Z
    :cond_e
    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v8, :cond_f

    .line 1288
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_3

    .line 1290
    :cond_f
    if-nez p3, :cond_9

    .line 1293
    iput-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1294
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v8, v9, :cond_9

    if-eq v5, p2, :cond_9

    .line 1300
    :try_start_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1301
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1302
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1303
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 1304
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1305
    :catch_0
    move-exception v3

    .line 1308
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception thrown making visibile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1350
    .end local v2           #doThisProcess:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1353
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception thrown making hidden: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1360
    .end local v3           #e:Ljava/lang/Exception;
    :cond_10
    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_c

    .line 1363
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 1368
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_11
    return-void
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 7
    .parameter "r"
    .parameter "globalChanges"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4446
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v5, :cond_1

    .line 4558
    :cond_0
    :goto_0
    return v3

    .line 4457
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 4458
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v5, v1, :cond_2

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_0

    .line 4465
    :cond_2
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_3

    .line 4468
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 4474
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4475
    .local v2, oldConfig:Landroid/content/res/Configuration;
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4481
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 4482
    .local v0, changes:I
    if-nez v0, :cond_4

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_0

    .line 4490
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_6

    .line 4493
    :cond_5
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 4494
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    goto :goto_0

    .line 4505
    :cond_6
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    if-nez v5, :cond_7

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_c

    .line 4507
    :cond_7
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v5, v0

    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4508
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v5, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4509
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4510
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_9

    .line 4513
    :cond_8
    const-string v5, "config"

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    :goto_1
    move v3, v4

    .line 4540
    goto :goto_0

    .line 4514
    :cond_9
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_a

    .line 4520
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    goto :goto_0

    .line 4522
    :cond_a
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_b

    .line 4529
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 4530
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 4534
    :cond_b
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 4535
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 4548
    :cond_c
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_d

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_d

    .line 4551
    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4556
    :cond_d
    :goto_2
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_0

    .line 4552
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method final finishActivityAffinityLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "token"

    .prologue
    const/4 v3, 0x0

    .line 3628
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 3631
    .local v2, index:I
    if-gez v2, :cond_0

    .line 3650
    :goto_0
    return v3

    .line 3634
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 3636
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-ltz v2, :cond_1

    .line 3637
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3638
    .local v1, cur:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v4, :cond_2

    .line 3650
    .end local v1           #cur:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 3641
    .restart local v1       #cur:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3644
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3647
    :cond_4
    const/4 v4, 0x0

    const-string v5, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 3648
    add-int/lit8 v2, v2, -0x1

    .line 3649
    goto :goto_1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 7
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 3686
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 9
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"
    .parameter "immediate"

    .prologue
    const/high16 v8, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3695
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1

    .line 3696
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate finish request for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    :cond_0
    :goto_0
    return v4

    .line 3700
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 3701
    const/16 v2, 0x7531

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p5, v5, v6

    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3704
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_3

    .line 3705
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3706
    .local v1, next:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_3

    .line 3707
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_2

    .line 3709
    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 3711
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v8

    if-eqz v2, :cond_3

    .line 3715
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3720
    .end local v1           #next:Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 3721
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_4

    .line 3722
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_4

    .line 3723
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3727
    :cond_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 3729
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 3733
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3736
    :cond_5
    if-eqz p6, :cond_7

    .line 3737
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_1
    move v4, v2

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto :goto_1

    .line 3739
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_b

    .line 3740
    if-lez p2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v5, :cond_9

    :cond_8
    move v0, v3

    .line 3744
    .local v0, endTask:Z
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_a

    const/16 v2, 0x2009

    :goto_3
    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3749
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3751
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_0

    .line 3754
    invoke-direct {p0, v4, v4}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto/16 :goto_0

    .end local v0           #endTask:Z
    :cond_9
    move v0, v4

    .line 3740
    goto :goto_2

    .line 3744
    .restart local v0       #endTask:Z
    :cond_a
    const/16 v2, 0x2007

    goto :goto_3

    .line 3757
    .end local v0           #endTask:Z
    :cond_b
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v5, :cond_0

    .line 3761
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_c

    :goto_4
    move v4, v3

    goto/16 :goto_0

    :cond_c
    move v3, v4

    goto :goto_4
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 7
    .parameter "r"
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v6, 0x0

    .line 3655
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3656
    .local v0, resultTo:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 3660
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v1, :cond_0

    .line 3661
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 3665
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3667
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3674
    :cond_1
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3675
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3676
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3677
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 3678
    return-void
.end method

.method final finishSubActivityLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .parameter "token"
    .parameter "resultWho"
    .parameter "requestCode"

    .prologue
    .line 3609
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 3610
    .local v6, self:Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_1

    .line 3625
    :cond_0
    return-void

    .line 3615
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 3616
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3617
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v6, :cond_4

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_4

    .line 3618
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3620
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "request-sub"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 3615
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;
    .locals 10
    .parameter "taskId"
    .parameter "inclThumbs"

    .prologue
    .line 4364
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4365
    .local v5, resumed:Lcom/android/server/am/ActivityRecord;
    new-instance v8, Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {v8}, Lcom/android/server/am/TaskAccessInfo;-><init>()V

    .line 4367
    .local v8, thumbs:Lcom/android/server/am/TaskAccessInfo;
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4368
    .local v0, NA:I
    const/4 v3, 0x0

    .line 4369
    .local v3, j:I
    const/4 v2, 0x0

    .line 4370
    .local v2, holder:Lcom/android/server/am/ThumbnailHolder;
    :goto_0
    if-ge v3, v0, :cond_0

    .line 4371
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4372
    .local v1, ar:Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_2

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, p1, :cond_2

    .line 4373
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 4379
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-lt v3, v0, :cond_3

    .line 4425
    :cond_1
    :goto_1
    return-object v8

    .line 4376
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 4377
    goto :goto_0

    .line 4383
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    iput-object v9, v8, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    .line 4384
    iput v3, v8, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    .line 4386
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4387
    .local v7, subtasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/TaskAccessInfo$SubTask;>;"
    iput-object v7, v8, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    .line 4388
    const/4 v4, 0x0

    .line 4389
    .local v4, lastActivity:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4390
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4391
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, 0x1

    .line 4392
    iget-boolean v9, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_4

    .line 4395
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v9, p1, :cond_7

    .line 4409
    .end local v1           #ar:Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_6

    .line 4410
    if-ne v5, v4, :cond_6

    .line 4411
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 4412
    .local v6, sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9, v4}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v6, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 4415
    .end local v6           #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    :cond_6
    iget v9, v8, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-lez v9, :cond_1

    .line 4416
    new-instance v9, Lcom/android/server/am/ActivityStack$2;

    invoke-direct {v9, p0, v8}, Lcom/android/server/am/ActivityStack$2;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskAccessInfo;)V

    iput-object v9, v8, Lcom/android/server/am/TaskAccessInfo;->retriever:Landroid/app/IThumbnailRetriever;

    goto :goto_1

    .line 4398
    .restart local v1       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_7
    move-object v4, v1

    .line 4399
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eq v9, v2, :cond_4

    if-eqz v2, :cond_4

    .line 4400
    iget v9, v8, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    .line 4401
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    .line 4402
    new-instance v6, Lcom/android/server/am/TaskAccessInfo$SubTask;

    invoke-direct {v6}, Lcom/android/server/am/TaskAccessInfo$SubTask;-><init>()V

    .line 4403
    .restart local v6       #sub:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget-object v9, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v9, v6, Lcom/android/server/am/TaskAccessInfo$SubTask;->thumbnail:Landroid/graphics/Bitmap;

    .line 4404
    iput-object v1, v6, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    .line 4405
    add-int/lit8 v9, v3, -0x1

    iput v9, v6, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    .line 4406
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getTaskThumbnailsLocked(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 4
    .parameter "tr"

    .prologue
    .line 4324
    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 4325
    .local v0, info:Lcom/android/server/am/TaskAccessInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4326
    .local v1, resumed:Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v2, p1, :cond_0

    .line 4327
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 4331
    :goto_0
    return-object v0

    .line 4329
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method final indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 1
    .parameter "r"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final indexOfTokenLocked(Landroid/os/IBinder;)I
    .locals 2
    .parameter "token"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "token"

    .prologue
    .line 481
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 482
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v0

    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final moveHomeToFrontFromLaunchLocked(I)V
    .locals 2
    .parameter "launchFlags"

    .prologue
    const v1, 0x10004000

    .line 2588
    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    .line 2593
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontLocked()V

    .line 2595
    :cond_0
    return-void
.end method

.method final moveHomeToFrontLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4137
    const/4 v0, 0x0

    .line 4138
    .local v0, homeTask:Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 4139
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4140
    .local v1, hr:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_2

    .line 4141
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4145
    .end local v1           #hr:Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-eqz v0, :cond_1

    .line 4146
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 4148
    :cond_1
    return-void

    .line 4138
    .restart local v1       #hr:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .locals 13
    .parameter "task"
    .parameter "reason"

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 4247
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveTaskToBack: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v9, :cond_1

    .line 4253
    invoke-virtual {p0, v12, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4254
    .local v5, next:Lcom/android/server/am/ActivityRecord;
    if-nez v5, :cond_0

    .line 4255
    invoke-virtual {p0, v12, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4257
    :cond_0
    if-eqz v5, :cond_1

    .line 4259
    const/4 v3, 0x1

    .line 4261
    .local v3, moveOK:Z
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 4265
    :goto_0
    if-nez v3, :cond_1

    .line 4320
    .end local v3           #moveOK:Z
    .end local v5           #next:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v8

    .line 4262
    .restart local v3       #moveOK:Z
    .restart local v5       #next:Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v2

    .line 4263
    .local v2, e:Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v12, v9, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_0

    .line 4271
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #moveOK:Z
    .end local v5           #next:Lcom/android/server/am/ActivityRecord;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4276
    .local v4, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4277
    .local v0, N:I
    const/4 v1, 0x0

    .line 4278
    .local v1, bottom:I
    const/4 v6, 0x0

    .line 4282
    .local v6, pos:I
    :goto_2
    if-ge v6, v0, :cond_3

    .line 4283
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 4286
    .local v7, r:Lcom/android/server/am/ActivityRecord;
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, p1, :cond_2

    .line 4294
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4295
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4296
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4297
    add-int/lit8 v1, v1, 0x1

    .line 4299
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 4300
    goto :goto_2

    .line 4302
    .end local v7           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz p2, :cond_5

    iget-object v9, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_5

    .line 4304
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v8, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4306
    invoke-virtual {p0, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 4307
    .restart local v7       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_4

    .line 4308
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4314
    .end local v7           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v4}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 4319
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 4320
    const/4 v8, 0x1

    goto :goto_1

    .line 4311
    :cond_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v10, 0x200b

    invoke-virtual {v9, v10, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .locals 9
    .parameter "tr"
    .parameter "reason"
    .parameter "options"

    .prologue
    const/high16 v8, 0x1

    const/16 v7, 0x100a

    const/4 v6, 0x0

    .line 4165
    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 4166
    .local v3, task:I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 4168
    .local v4, top:I
    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, v3, :cond_2

    .line 4170
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v8

    if-eqz v5, :cond_1

    .line 4172
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4229
    :goto_0
    return-void

    .line 4174
    :cond_1
    invoke-virtual {p0, v7, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4179
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4183
    .local v0, moved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 4184
    move v1, v4

    .line 4188
    .local v1, pos:I
    :goto_1
    if-ltz v1, :cond_4

    .line 4189
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4192
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, v3, :cond_3

    .line 4199
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4200
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4201
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4202
    add-int/lit8 v4, v4, -0x1

    .line 4204
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 4205
    goto :goto_1

    .line 4209
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eqz p2, :cond_6

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v8

    if-eqz v5, :cond_6

    .line 4211
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4213
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4214
    .restart local v2       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_5

    .line 4215
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4217
    :cond_5
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4222
    .end local v2           #r:Lcom/android/server/am/ActivityRecord;
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 4227
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 4228
    const/16 v5, 0x7532

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_0

    .line 4219
    :cond_6
    invoke-virtual {p0, v7, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method public native nativeOptimization(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .parameter "remove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3390
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3391
    .local v0, N:I
    if-gtz v0, :cond_1

    const/4 v4, 0x0

    .line 3428
    :cond_0
    return-object v4

    .line 3393
    :cond_1
    const/4 v4, 0x0

    .line 3395
    .local v4, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v6, :cond_6

    const/4 v2, 0x1

    .line 3398
    .local v2, nowVisible:Z
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 3399
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3403
    .local v3, s:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 3404
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3405
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 3406
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2

    .line 3413
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3416
    :cond_2
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    if-eqz p1, :cond_5

    .line 3418
    if-nez v4, :cond_4

    .line 3419
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3421
    .restart local v4       #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3422
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3423
    add-int/lit8 v0, v0, -0x1

    .line 3424
    add-int/lit8 v1, v1, -0x1

    .line 3398
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #nowVisible:Z
    .end local v3           #s:Lcom/android/server/am/ActivityRecord;
    :cond_6
    move v2, v5

    .line 3395
    goto :goto_0
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 21
    .parameter "r"
    .parameter "app"
    .parameter "andResume"
    .parameter "checkConfig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 616
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 628
    if-eqz p4, :cond_0

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v17

    .line 632
    .local v17, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 635
    .end local v17           #config:Landroid/content/res/Configuration;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 636
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 640
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 641
    .local v19, idx:I
    if-gez v19, :cond_1

    .line 642
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 647
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_3

    .line 648
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :catch_0
    move-exception v18

    .line 721
    .local v18, e:Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_10

    .line 724
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second failure launching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", giving up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 728
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "2nd-crash"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 730
    const/4 v2, 0x0

    .line 781
    .end local v18           #e:Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 629
    .end local v19           #idx:I
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 650
    .restart local v19       #idx:I
    :cond_3
    const/4 v10, 0x0

    .line 651
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v11, 0x0

    .line 652
    .local v11, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_4

    .line 653
    :try_start_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 654
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 660
    :cond_4
    if-eqz p3, :cond_5

    .line 661
    const/16 v2, 0x7536

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 665
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_6

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 668
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 669
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 670
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 671
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 673
    const/4 v14, 0x0

    .line 674
    .local v14, profileFile:Ljava/lang/String;
    const/4 v15, 0x0

    .line 675
    .local v15, profileFd:Landroid/os/ParcelFileDescriptor;
    const/16 v16, 0x0

    .line 676
    .local v16, profileAutoStop:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_8

    .line 678
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v16, v0

    .line 684
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 685
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 686
    if-eqz v15, :cond_9

    .line 688
    :try_start_2
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v15

    .line 693
    :cond_9
    :goto_2
    :try_start_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_f

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v13

    invoke-interface/range {v2 .. v16}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 700
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 705
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_a

    .line 708
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when already running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 715
    .local v20, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 739
    .end local v20           #msg:Landroid/os/Message;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 740
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 741
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_c
    if-eqz p3, :cond_11

    .line 748
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 751
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 752
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 753
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 754
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_d

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 757
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 760
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 761
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 777
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_e

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 781
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 689
    :catch_1
    move-exception v18

    .line 690
    .local v18, e:Ljava/io/IOException;
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 693
    .end local v18           #e:Ljava/io/IOException;
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 735
    .end local v10           #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v11           #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v14           #profileFile:Ljava/lang/String;
    .end local v15           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #profileAutoStop:Z
    .local v18, e:Landroid/os/RemoteException;
    :cond_10
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 736
    throw v18

    .line 769
    .end local v18           #e:Landroid/os/RemoteException;
    .restart local v10       #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v11       #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v14       #profileFile:Ljava/lang/String;
    .restart local v15       #profileFd:Landroid/os/ParcelFileDescriptor;
    .restart local v16       #profileAutoStop:Z
    :cond_11
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 770
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_4
.end method

.method final removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3904
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    .line 3905
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 3906
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 3912
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3913
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 3916
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3917
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 3921
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3922
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 3924
    :cond_0
    return-void
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 4125
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4126
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4127
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4128
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4129
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 4130
    return-void
.end method

.method public removeTaskActivitiesLocked(IIZ)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .parameter "taskId"
    .parameter "subTaskIndex"
    .parameter "taskRequired"

    .prologue
    const/4 v2, 0x0

    .line 4336
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    .line 4337
    .local v0, info:Lcom/android/server/am/TaskAccessInfo;
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_1

    .line 4338
    if-eqz p3, :cond_0

    .line 4339
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTaskLocked: unknown taskId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    :cond_0
    :goto_0
    return-object v2

    .line 4344
    :cond_1
    if-gez p2, :cond_2

    .line 4346
    iget v2, v0, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 4347
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 4350
    :cond_2
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_3

    .line 4351
    if-eqz p3, :cond_0

    .line 4352
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeTaskLocked: unknown subTaskIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4358
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskAccessInfo$SubTask;

    .line 4359
    .local v1, subtask:Lcom/android/server/am/TaskAccessInfo$SubTask;
    iget v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    .line 4360
    iget-object v2, v1, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 5
    .parameter "timeout"
    .parameter "r"
    .parameter "thisTime"
    .parameter "totalTime"

    .prologue
    .line 3274
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3275
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 3276
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 3277
    if-eqz p2, :cond_0

    .line 3278
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 3280
    :cond_0
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 3281
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 3274
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3283
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3284
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    .line 3287
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3288
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 3289
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean v6, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 3290
    if-eqz p1, :cond_0

    .line 3291
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 3293
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 3294
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 3287
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3296
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 3298
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v2, :cond_2

    .line 3299
    iput-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 3300
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 3302
    :cond_2
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 6
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 3594
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 3599
    .local v2, index:I
    if-gez v2, :cond_0

    .line 3600
    const/4 v0, 0x0

    .line 3605
    :goto_0
    return v0

    .line 3602
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, r:Lcom/android/server/am/ActivityRecord;
    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3604
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 3605
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .locals 9
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "userId"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2970
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10400

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 2975
    .local v8, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_3

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2980
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    .local v6, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v6, :cond_2

    .line 2985
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2989
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 2990
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2991
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 2995
    :cond_0
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    .line 2996
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2997
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 3001
    :cond_1
    if-eqz p4, :cond_2

    .line 3002
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3003
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_4

    :goto_1
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 3009
    :cond_2
    return-object v6

    .line 2975
    .end local v6           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v8       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 2976
    .end local v8           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    .line 2977
    .local v7, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .end local v7           #e:Landroid/os/RemoteException;
    :cond_4
    move v5, v3

    .line 3003
    goto :goto_1
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .parameter "prev"

    .prologue
    .line 1391
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 25
    .parameter "prev"
    .parameter "options"

    .prologue
    .line 1396
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    .line 1400
    .local v20, next:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    move/from16 v24, v0

    .line 1401
    .local v24, userLeaving:Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 1403
    if-nez v20, :cond_0

    .line 1406
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_0

    .line 1407
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v2

    .line 1760
    :goto_0
    return v2

    .line 1412
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_1

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_1

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1420
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1421
    const/4 v2, 0x0

    goto :goto_0

    .line 1426
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_4

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_4

    .line 1433
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1435
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1436
    const/4 v2, 0x0

    goto :goto_0

    .line 1441
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1443
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1446
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5

    .line 1454
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1488
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_6

    .line 1490
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 1491
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1497
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    .line 1498
    .local v17, last:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v2, :cond_8

    if-eqz v17, :cond_8

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_8

    .line 1499
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_8

    .line 1504
    :cond_7
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "no-history"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 1509
    :cond_8
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 1510
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v2, :cond_11

    if-eqz v20, :cond_11

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v2, :cond_11

    .line 1511
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    :cond_9
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1553
    :goto_2
    const/16 v22, 0x0

    .line 1554
    .local v22, noAnim:Z
    if-eqz p1, :cond_17

    .line 1555
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_14

    .line 1558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1566
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1597
    :cond_a
    :goto_4
    if-nez v22, :cond_19

    .line 1598
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 1603
    :goto_5
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_20

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_20

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1610
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    .line 1613
    .local v18, lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    .line 1615
    .local v19, lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1618
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1619
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1620
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1621
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_b

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 1624
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 1625
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1627
    const-string v2, "ro.app.optimization"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1629
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->nativeOptimization(Lcom/android/server/am/ActivityRecord;)V

    .line 1633
    :cond_c
    const/16 v23, 0x0

    .line 1634
    .local v23, updated:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_e

    .line 1635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 1636
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_6
    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v15

    .line 1639
    .local v15, config:Landroid/content/res/Configuration;
    if-eqz v15, :cond_d

    .line 1640
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1642
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v15, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v23

    .line 1643
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1645
    .end local v15           #config:Landroid/content/res/Configuration;
    :cond_e
    if-nez v23, :cond_1b

    .line 1651
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 1655
    .local v21, nextNext:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1659
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_10

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1662
    :cond_10
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1665
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1524
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v21           #nextNext:Lcom/android/server/am/ActivityRecord;
    .end local v22           #noAnim:Z
    .end local v23           #updated:Z
    :cond_11
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_9

    .line 1525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_1

    .line 1545
    :catch_0
    move-exception v16

    .line 1546
    .local v16, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed trying to unstop package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1562
    .end local v16           #e:Ljava/lang/IllegalArgumentException;
    .restart local v22       #noAnim:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v4, :cond_13

    const/16 v2, 0x2007

    :goto_7
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_3

    :cond_13
    const/16 v2, 0x2009

    goto :goto_7

    .line 1571
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1572
    const/16 v22, 0x1

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    .line 1576
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v4, :cond_16

    const/16 v2, 0x1006

    :goto_8
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    :cond_16
    const/16 v2, 0x1008

    goto :goto_8

    .line 1585
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1589
    const/16 v22, 0x1

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    .line 1593
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v3, 0x1006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_4

    .line 1600
    :cond_19
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_5

    .line 1636
    .restart local v18       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v23       #updated:Z
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1643
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1670
    :cond_1b
    :try_start_3
    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1671
    .local v14, a:Ljava/util/ArrayList;
    if-eqz v14, :cond_1c

    .line 1672
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1673
    .local v13, N:I
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1c

    if-lez v13, :cond_1c

    .line 1677
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3, v14}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1681
    .end local v13           #N:I
    :cond_1c
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1682
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 1685
    :cond_1d
    const/16 v2, 0x7537

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1689
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1690
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1691
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1692
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 1695
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1724
    const/4 v2, 0x1

    :try_start_4
    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1725
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1737
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1738
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1739
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1760
    .end local v14           #a:Ljava/util/ArrayList;
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v23           #updated:Z
    :goto_9
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1697
    .restart local v18       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v23       #updated:Z
    :catch_1
    move-exception v16

    .line 1701
    .local v16, e:Ljava/lang/Exception;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1702
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1703
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting because process died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v2, :cond_1f

    .line 1705
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 1717
    :cond_1e
    :goto_a
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1718
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1707
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_1e

    .line 1708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_a

    .line 1726
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v14       #a:Ljava/util/ArrayList;
    :catch_2
    move-exception v16

    .line 1729
    .restart local v16       #e:Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown during resume of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1730
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "resume-exception"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 1732
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1743
    .end local v14           #a:Ljava/util/ArrayList;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v23           #updated:Z
    :cond_20
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v2, :cond_21

    .line 1744
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 1757
    :goto_b
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_9

    .line 1747
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_b

    .line 1544
    .end local v22           #noAnim:Z
    :catch_3
    move-exception v2

    goto/16 :goto_2
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 3
    .parameter "owner"
    .parameter "oomAdj"
    .parameter "reason"

    .prologue
    .line 3942
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3943
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3944
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3945
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 3432
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3433
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3434
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3435
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 910
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-object v3

    .line 914
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 915
    .local v1, res:Landroid/content/res/Resources;
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 916
    .local v2, w:I
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 917
    .local v0, h:I
    if-gez v2, :cond_2

    .line 918
    const v4, 0x1050002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    .line 920
    const v4, 0x1050001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    .line 924
    :cond_2
    if-lez v2, :cond_0

    .line 925
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8
    .parameter "callingUid"
    .parameter "r"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3307
    if-lez p1, :cond_0

    .line 3308
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p6, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 3315
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    .line 3317
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3318
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3320
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3328
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_0
    return-void

    .line 3322
    :catch_0
    move-exception v6

    .line 3323
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3327
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method final showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 569
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 570
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 571
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 573
    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 23
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "resultTo"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 3196
    if-nez p3, :cond_0

    .line 3197
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3199
    :cond_0
    if-nez p4, :cond_1

    .line 3200
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3202
    :cond_1
    move-object/from16 v0, p3

    array-length v1, v0

    move-object/from16 v0, p4

    array-length v3, v0

    if-eq v1, v3, :cond_2

    .line 3203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3206
    :cond_2
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    .line 3209
    .local v16, outActivity:[Lcom/android/server/am/ActivityRecord;
    if-ltz p2, :cond_3

    .line 3210
    const/4 v11, -0x1

    .line 3217
    .local v11, callingPid:I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3219
    .local v19, origId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3221
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p3

    array-length v1, v0

    move/from16 v0, v17

    if-ge v0, v1, :cond_c

    .line 3222
    aget-object v18, p3, v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3223
    .local v18, intent:Landroid/content/Intent;
    if-nez v18, :cond_5

    move-object/from16 v2, v18

    .line 3221
    .end local v18           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 3211
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #callingPid:I
    .end local v17           #i:I
    .end local v19           #origId:J
    :cond_3
    if-nez p1, :cond_4

    .line 3212
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 3213
    .restart local v11       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 3215
    .end local v11           #callingPid:I
    :cond_4
    const/16 p2, -0x1

    move/from16 v11, p2

    .restart local v11       #callingPid:I
    goto :goto_0

    .line 3228
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    .restart local v19       #origId:J
    :cond_5
    if-eqz v18, :cond_6

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3264
    .end local v18           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3266
    .end local v17           #i:I
    :catchall_1
    move-exception v1

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 3232
    .restart local v17       #i:I
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v15, 0x1

    .line 3235
    .local v15, componentSpecified:Z
    :goto_3
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3238
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    aget-object v3, p4, v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 3241
    .local v7, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p7

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 3243
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_8

    if-eqz v7, :cond_8

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 3245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3232
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v15           #componentSpecified:Z
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 3250
    .end local v18           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_8
    if-eqz p6, :cond_9

    move-object/from16 v0, p3

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_9

    .line 3251
    move-object/from16 v14, p6

    .line 3255
    .local v14, theseOptions:Landroid/os/Bundle;
    :goto_4
    aget-object v6, p4, v17

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v8, p5

    move/from16 v12, p2

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v21

    .line 3258
    .local v21, res:I
    if-gez v21, :cond_a

    .line 3259
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3266
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3269
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :goto_5
    return v21

    .line 3253
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v15       #componentSpecified:Z
    :cond_9
    const/4 v14, 0x0

    .restart local v14       #theseOptions:Landroid/os/Bundle;
    goto :goto_4

    .line 3262
    .restart local v21       #res:I
    :cond_a
    const/4 v1, 0x0

    :try_start_5
    aget-object v1, v16, v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v16, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p5, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p5, 0x0

    goto :goto_6

    .line 3264
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v14           #theseOptions:Landroid/os/Bundle;
    .end local v15           #componentSpecified:Z
    .end local v21           #res:I
    :cond_c
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3266
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3269
    const/16 v21, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 32
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "aInfo"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "startFlags"
    .parameter "options"
    .parameter "componentSpecified"
    .parameter "outActivity"

    .prologue
    .line 2404
    const/16 v23, 0x0

    .line 2406
    .local v23, err:I
    const/16 v20, 0x0

    .line 2407
    .local v20, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 2408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v20

    .line 2409
    if-eqz v20, :cond_3

    .line 2410
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    .line 2411
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    .line 2420
    :cond_0
    :goto_0
    if-nez v23, :cond_1

    .line 2421
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserId;->getUserId(I)I

    move-result v30

    .line 2422
    .local v30, userId:I
    :goto_1
    const-string v4, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "START {"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " u="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "} from pid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_5

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    .end local v30           #userId:I
    :cond_1
    const/16 v28, 0x0

    .line 2427
    .local v28, sourceRecord:Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    .line 2428
    .local v5, resultRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz p5, :cond_2

    .line 2429
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v24

    .line 2432
    .local v24, index:I
    if-ltz v24, :cond_2

    .line 2433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    check-cast v28, Lcom/android/server/am/ActivityRecord;

    .line 2434
    .restart local v28       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    if-ltz p7, :cond_2

    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_2

    .line 2435
    move-object/from16 v5, v28

    .line 2440
    .end local v24           #index:I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v25

    .line 2442
    .local v25, launchFlags:I
    const/high16 v3, 0x200

    and-int v3, v3, v25

    if-eqz v3, :cond_7

    if-eqz v28, :cond_7

    .line 2446
    if-ltz p7, :cond_6

    .line 2447
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2448
    const/4 v3, -0x3

    .line 2584
    :goto_3
    return v3

    .line 2413
    .end local v5           #resultRecord:Lcom/android/server/am/ActivityRecord;
    .end local v25           #launchFlags:I
    .end local v28           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " (pid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") when starting: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    const/16 v23, -0x4

    goto/16 :goto_0

    .line 2421
    :cond_4
    const/16 v30, 0x0

    goto/16 :goto_1

    .restart local v30       #userId:I
    :cond_5
    move/from16 v3, p8

    .line 2422
    goto/16 :goto_2

    .line 2450
    .end local v30           #userId:I
    .restart local v5       #resultRecord:Lcom/android/server/am/ActivityRecord;
    .restart local v25       #launchFlags:I
    .restart local v28       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_6
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2451
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 2452
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    .line 2453
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2454
    if-eqz v5, :cond_7

    .line 2455
    move-object/from16 v0, v28

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 2460
    :cond_7
    if-nez v23, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_8

    .line 2463
    const/16 v23, -0x1

    .line 2466
    :cond_8
    if-nez v23, :cond_9

    if-nez p4, :cond_9

    .line 2469
    const/16 v23, -0x2

    .line 2472
    :cond_9
    if-eqz v23, :cond_b

    .line 2473
    if-eqz v5, :cond_a

    .line 2474
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2478
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 2479
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move/from16 v3, v23

    .line 2480
    goto/16 :goto_3

    .line 2483
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v29

    .line 2485
    .local v29, startAnyPerm:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v11, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v21

    .line 2487
    .local v21, componentPerm:I
    if-eqz v29, :cond_e

    if-eqz v21, :cond_e

    .line 2488
    if-eqz v5, :cond_c

    .line 2489
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2493
    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 2495
    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_d

    .line 2496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exported from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2506
    .local v26, msg:Ljava/lang/String;
    :goto_4
    const-string v3, "ActivityManager"

    move-object/from16 v0, v26

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    new-instance v3, Ljava/lang/SecurityException;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2501
    .end local v26           #msg:Ljava/lang/String;
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .restart local v26       #msg:Ljava/lang/String;
    goto :goto_4

    .line 2510
    .end local v26           #msg:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_11

    .line 2511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_11

    .line 2512
    const/16 v19, 0x0

    .line 2516
    .local v19, abort:Z
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v31

    .line 2517
    .local v31, watchIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v3, v0, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_10

    const/16 v19, 0x1

    .line 2523
    .end local v31           #watchIntent:Landroid/content/Intent;
    :goto_5
    if-eqz v19, :cond_11

    .line 2524
    if-eqz v5, :cond_f

    .line 2525
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2531
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 2532
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2533
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2517
    .restart local v31       #watchIntent:Landroid/content/Intent;
    :cond_10
    const/16 v19, 0x0

    goto :goto_5

    .line 2519
    .end local v31           #watchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v22

    .line 2520
    .local v22, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_5

    .line 2538
    .end local v19           #abort:Z
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_11
    new-instance v6, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v8, p0

    move-object/from16 v9, v20

    move/from16 v10, p9

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v15, v5

    move-object/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p12

    invoke-direct/range {v6 .. v18}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V

    .line 2541
    .local v6, r:Lcom/android/server/am/ActivityRecord;
    if-eqz p13, :cond_12

    .line 2542
    const/4 v3, 0x0

    aput-object v6, p13, v3

    .line 2545
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_15

    .line 2546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v3, v0, :cond_14

    .line 2548
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 2549
    new-instance v27, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    invoke-direct/range {v27 .. v27}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>()V

    .line 2550
    .local v27, pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object/from16 v0, v27

    iput-object v6, v0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 2551
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2552
    move/from16 v0, p10

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->startFlags:I

    .line 2553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 2555
    invoke-static/range {p11 .. p11}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2556
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 2560
    .end local v27           #pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v3, :cond_17

    .line 2566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v7, 0x0

    iput-wide v7, v3, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 2571
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 2574
    :cond_15
    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object v8, v6

    move-object/from16 v9, v28

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v23

    .line 2576
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_16

    .line 2581
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    .line 2582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    :cond_16
    move/from16 v3, v23

    .line 2584
    goto/16 :goto_3

    .line 2568
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_6
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 38
    .parameter "caller"
    .parameter "callingUid"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "outResult"
    .parameter "config"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 3018
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3019
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3021
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_c

    const/16 v20, 0x1

    .line 3024
    .local v20, componentSpecified:Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p3
    .local v3, intent:Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move/from16 v8, p14

    .line 3027
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 3029
    .local v12, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3030
    const/16 p14, 0x0

    .line 3032
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p14

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v22

    .line 3034
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .local v22, aInfo:Landroid/content/pm/ActivityInfo;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    .line 3035
    .local v24, display:Landroid/view/Display;
    invoke-virtual/range {v24 .. v24}, Landroid/view/Display;->getRawWidth()I

    move-result v33

    .line 3036
    .local v33, rawWidth:I
    invoke-virtual/range {v24 .. v24}, Landroid/view/Display;->getRawHeight()I

    move-result v32

    .line 3038
    .local v32, rawHeight:I
    const/16 v2, 0x400

    move/from16 v0, v33

    if-ne v2, v0, :cond_2

    const/16 v2, 0x300

    move/from16 v0, v32

    if-eq v2, v0, :cond_3

    :cond_2
    const/16 v2, 0x400

    move/from16 v0, v32

    if-ne v2, v0, :cond_4

    const/16 v2, 0x300

    move/from16 v0, v33

    if-ne v2, v0, :cond_4

    .line 3040
    :cond_3
    if-eqz v22, :cond_d

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_d

    const-string v2, "com.npc.landlord3"

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3042
    const-string v2, "service.apk.resize"

    const-string v4, "true"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start activity package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 3054
    if-ltz p2, :cond_e

    .line 3055
    const/16 v16, -0x1

    .line 3063
    .local v16, callingPid:I
    :goto_2
    if-eqz p12, :cond_10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 3068
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 3070
    .local v28, origId:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_16

    if-eqz v22, :cond_16

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v2, v4

    if-eqz v2, :cond_16

    .line 3074
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 3078
    :cond_5
    move/from16 v34, v16

    .line 3079
    .local v34, realCallingPid:I
    move/from16 v7, p2

    .line 3080
    .local v7, realCallingUid:I
    if-eqz p1, :cond_6

    .line 3081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v23

    .line 3082
    .local v23, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz v23, :cond_11

    .line 3083
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v34, v0

    .line 3084
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3094
    .end local v23           #callerApp:Lcom/android/server/am/ProcessRecord;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x1

    new-array v11, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v11, v2

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v12, v2

    const/high16 v13, 0x5000

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v36

    .line 3100
    .local v36, target:Landroid/content/IIntentSender;
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 3101
    .local v27, newIntent:Landroid/content/Intent;
    if-ltz p7, :cond_7

    .line 3103
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3105
    :cond_7
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v36

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 3108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityRecord;

    .line 3109
    .local v26, hist:Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3111
    const-string v2, "cur_task"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3114
    .end local v26           #hist:Lcom/android/server/am/ActivityRecord;
    :cond_8
    const-string v2, "new_app"

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3116
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3117
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3119
    move-object/from16 p3, v27

    .line 3120
    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    const/16 p4, 0x0

    .line 3121
    const/16 p1, 0x0

    .line 3122
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 3123
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v16

    .line 3124
    const/16 v20, 0x1

    .line 3126
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p3

    move/from16 v1, p14

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v31

    .line 3131
    .local v31, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v31, :cond_12

    move-object/from16 v0, v31

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3132
    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p14

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v12

    .line 3140
    .end local v7           #realCallingUid:I
    .end local v27           #newIntent:Landroid/content/Intent;
    .end local v31           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v34           #realCallingPid:I
    .end local v36           #target:Landroid/content/IIntentSender;
    :goto_5
    const/16 v21, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v17, p2

    move/from16 v18, p8

    move-object/from16 v19, p13

    :try_start_4
    invoke-virtual/range {v8 .. v21}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v35

    .line 3144
    .local v35, res:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_9

    .line 3149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 3154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 3157
    :cond_9
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3159
    if-eqz p11, :cond_b

    .line 3160
    move/from16 v0, v35

    move-object/from16 v1, p11

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 3161
    if-nez v35, :cond_13

    .line 3162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3165
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3168
    :goto_6
    :try_start_6
    move-object/from16 v0, p11

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p11

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_a

    .line 3189
    :cond_b
    :goto_7
    monitor-exit v37
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v35           #res:I
    :goto_8
    return v35

    .line 3021
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v16           #callingPid:I
    .end local v20           #componentSpecified:Z
    .end local v24           #display:Landroid/view/Display;
    .end local v28           #origId:J
    .end local v32           #rawHeight:I
    .end local v33           #rawWidth:I
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 3047
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v20       #componentSpecified:Z
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v24       #display:Landroid/view/Display;
    .restart local v32       #rawHeight:I
    .restart local v33       #rawWidth:I
    :cond_d
    const-string v2, "service.apk.resize"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3048
    const-string v2, "service.apk.resize"

    const-string v4, "false"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3056
    :cond_e
    if-nez p1, :cond_f

    .line 3057
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 3058
    .restart local v16       #callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_2

    .line 3060
    .end local v16           #callingPid:I
    :cond_f
    const/16 p2, -0x1

    move/from16 v16, p2

    .restart local v16       #callingPid:I
    goto/16 :goto_2

    .line 3063
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 3086
    .restart local v7       #realCallingUid:I
    .restart local v23       #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v28       #origId:J
    .restart local v34       #realCallingPid:I
    :cond_11
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3090
    const/16 v35, -0x4

    monitor-exit v37
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_8

    .line 3131
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v23           #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v27       #newIntent:Landroid/content/Intent;
    .restart local v31       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v36       #target:Landroid/content/IIntentSender;
    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 3133
    .end local v31           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v25

    move-object/from16 v12, v22

    .line 3134
    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    .local v25, e:Landroid/os/RemoteException;
    :goto_9
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 3169
    .end local v7           #realCallingUid:I
    .end local v25           #e:Landroid/os/RemoteException;
    .end local v27           #newIntent:Landroid/content/Intent;
    .end local v34           #realCallingPid:I
    .end local v36           #target:Landroid/content/IIntentSender;
    .restart local v35       #res:I
    :cond_13
    const/4 v2, 0x2

    move/from16 v0, v35

    if-ne v0, v2, :cond_b

    .line 3170
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    .line 3171
    .local v30, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v30

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_14

    .line 3172
    const/4 v2, 0x0

    move-object/from16 v0, p11

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 3173
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p11

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 3174
    const-wide/16 v4, 0x0

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 3175
    const-wide/16 v4, 0x0

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_7

    .line 3190
    .end local v16           #callingPid:I
    .end local v28           #origId:J
    .end local v30           #r:Lcom/android/server/am/ActivityRecord;
    .end local v35           #res:I
    :catchall_0
    move-exception v2

    :goto_a
    monitor-exit v37
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 3177
    .restart local v16       #callingPid:I
    .restart local v28       #origId:J
    .restart local v30       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v35       #res:I
    :cond_14
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p11

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 3178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3181
    :cond_15
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 3184
    :goto_b
    :try_start_b
    move-object/from16 v0, p11

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p11

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_15

    goto/16 :goto_7

    .line 3190
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v16           #callingPid:I
    .end local v28           #origId:J
    .end local v30           #r:Lcom/android/server/am/ActivityRecord;
    .end local v35           #res:I
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v2

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto :goto_a

    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v7       #realCallingUid:I
    .restart local v16       #callingPid:I
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v27       #newIntent:Landroid/content/Intent;
    .restart local v28       #origId:J
    .restart local v34       #realCallingPid:I
    .restart local v36       #target:Landroid/content/IIntentSender;
    :catchall_2
    move-exception v2

    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    goto :goto_a

    .line 3182
    .end local v7           #realCallingUid:I
    .end local v27           #newIntent:Landroid/content/Intent;
    .end local v34           #realCallingPid:I
    .end local v36           #target:Landroid/content/IIntentSender;
    .restart local v30       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v35       #res:I
    :catch_1
    move-exception v2

    goto :goto_b

    .line 3166
    .end local v30           #r:Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v2

    goto/16 :goto_6

    .line 3133
    .end local v35           #res:I
    .restart local v7       #realCallingUid:I
    .restart local v27       #newIntent:Landroid/content/Intent;
    .restart local v31       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v34       #realCallingPid:I
    .restart local v36       #target:Landroid/content/IIntentSender;
    :catch_3
    move-exception v25

    goto :goto_9

    .end local v7           #realCallingUid:I
    .end local v12           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v27           #newIntent:Landroid/content/Intent;
    .end local v31           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v34           #realCallingPid:I
    .end local v36           #target:Landroid/content/IIntentSender;
    .end local p3
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v22       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_16
    move-object/from16 v12, v22

    .end local v22           #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v12       #aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 p3, v3

    .end local v3           #intent:Landroid/content/Intent;
    .restart local p3
    goto/16 :goto_5
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .locals 26
    .parameter "r"
    .parameter "sourceRecord"
    .parameter "startFlags"
    .parameter "doResume"
    .parameter "options"

    .prologue
    .line 2600
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 2601
    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 2602
    .local v13, callingUid:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v24, v0

    .line 2604
    .local v24, userId:I
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getFlags()I

    move-result v17

    .line 2608
    .local v17, launchFlags:I
    const/high16 v3, 0x4

    and-int v3, v3, v17

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 2615
    if-nez p4, :cond_0

    .line 2616
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2619
    :cond_0
    const/high16 v3, 0x100

    and-int v3, v3, v17

    if-eqz v3, :cond_c

    move-object/from16 v19, p1

    .line 2626
    .local v19, notTop:Lcom/android/server/am/ActivityRecord;
    :goto_1
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2

    .line 2627
    move-object/from16 v14, p2

    .line 2628
    .local v14, checkedCaller:Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_1

    .line 2629
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 2631
    :cond_1
    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2633
    and-int/lit8 p3, p3, -0x2

    .line 2637
    .end local v14           #checkedCaller:Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-nez p2, :cond_d

    .line 2640
    const/high16 v3, 0x1000

    and-int v3, v3, v17

    if-nez v3, :cond_3

    .line 2641
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    const/high16 v3, 0x1000

    or-int v17, v17, v3

    .line 2657
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    const/high16 v3, 0x1000

    and-int v3, v3, v17

    if-eqz v3, :cond_4

    .line 2663
    const-string v3, "ActivityManager"

    const-string v4, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2667
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2670
    :cond_4
    const/4 v11, 0x0

    .line 2671
    .local v11, addingToTask:Z
    const/16 v18, 0x0

    .line 2672
    .local v18, movedHome:Z
    const/16 v21, 0x0

    .line 2673
    .local v21, reuseTask:Lcom/android/server/am/TaskRecord;
    const/high16 v3, 0x1000

    and-int v3, v3, v17

    if-eqz v3, :cond_5

    const/high16 v3, 0x800

    and-int v3, v3, v17

    if-eqz v3, :cond_6

    :cond_5
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1f

    .line 2680
    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_1f

    .line 2685
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 2688
    .local v22, taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_3
    if-eqz v22, :cond_1f

    .line 2689
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v3, :cond_7

    .line 2694
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2702
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 2703
    .local v15, curTop:Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_9

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_9

    .line 2704
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2705
    if-eqz p2, :cond_8

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_11

    :cond_8
    const/4 v12, 0x1

    .line 2707
    .local v12, callerAtFront:Z
    :goto_4
    if-eqz v12, :cond_9

    .line 2710
    const/16 v18, 0x1

    .line 2711
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 2712
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 2713
    const/16 p5, 0x0

    .line 2718
    .end local v12           #callerAtFront:Z
    :cond_9
    const/high16 v3, 0x20

    and-int v3, v3, v17

    if-eqz v3, :cond_a

    .line 2719
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 2721
    :cond_a
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_13

    .line 2726
    if-eqz p4, :cond_12

    .line 2727
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2731
    :goto_5
    const/4 v3, 0x1

    .line 2962
    .end local v15           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v22           #taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_6
    return v3

    .line 2608
    .end local v11           #addingToTask:Z
    .end local v18           #movedHome:Z
    .end local v19           #notTop:Lcom/android/server/am/ActivityRecord;
    .end local v21           #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2619
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2645
    .restart local v19       #notTop:Lcom/android/server/am/ActivityRecord;
    :cond_d
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    .line 2649
    const/high16 v3, 0x1000

    or-int v17, v17, v3

    goto/16 :goto_2

    .line 2650
    :cond_e
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 2654
    :cond_f
    const/high16 v3, 0x1000

    or-int v17, v17, v3

    goto/16 :goto_2

    .line 2685
    .restart local v11       #addingToTask:Z
    .restart local v18       #movedHome:Z
    .restart local v21       #reuseTask:Lcom/android/server/am/TaskRecord;
    :cond_10
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    goto/16 :goto_3

    .line 2705
    .restart local v15       #curTop:Lcom/android/server/am/ActivityRecord;
    .restart local v22       #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_11
    const/4 v12, 0x0

    goto :goto_4

    .line 2729
    :cond_12
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_5

    .line 2733
    :cond_13
    const v3, 0x10008000

    and-int v3, v3, v17

    const v4, 0x10008000

    if-ne v3, v4, :cond_15

    .line 2739
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    .line 2740
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(I)V

    .line 2741
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2811
    :cond_14
    :goto_7
    if-nez v11, :cond_1f

    if-nez v21, :cond_1f

    .line 2815
    if-eqz p4, :cond_1e

    .line 2816
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2820
    :goto_8
    const/4 v3, 0x2

    goto :goto_6

    .line 2742
    :cond_15
    const/high16 v3, 0x400

    and-int v3, v3, v17

    if-nez v3, :cond_16

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_16

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    .line 2749
    :cond_16
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 2751
    .local v23, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_18

    .line 2752
    move-object/from16 v0, v23

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_17

    .line 2757
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2759
    :cond_17
    const/16 v3, 0x7533

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2760
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto :goto_7

    .line 2766
    :cond_18
    const/4 v11, 0x1

    .line 2770
    move-object/from16 p2, v22

    goto :goto_7

    .line 2772
    .end local v23           #top:Lcom/android/server/am/ActivityRecord;
    :cond_19
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2779
    const/high16 v3, 0x2000

    and-int v3, v3, v17

    if-eqz v3, :cond_1b

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2781
    const/16 v3, 0x7533

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2782
    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_1a

    .line 2783
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2785
    :cond_1a
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_7

    .line 2786
    :cond_1b
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 2790
    const/4 v11, 0x1

    .line 2791
    move-object/from16 p2, v22

    goto/16 :goto_7

    .line 2793
    :cond_1c
    const/high16 v3, 0x20

    and-int v3, v3, v17

    if-nez v3, :cond_1d

    .line 2799
    const/4 v11, 0x1

    .line 2800
    move-object/from16 p2, v22

    goto/16 :goto_7

    .line 2801
    :cond_1d
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v3, :cond_14

    .line 2809
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_7

    .line 2818
    :cond_1e
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 2832
    .end local v15           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v22           #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_1f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_23

    .line 2836
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 2837
    .restart local v23       #top:Lcom/android/server/am/ActivityRecord;
    if-eqz v23, :cond_25

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_25

    .line 2838
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_25

    .line 2839
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_25

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_25

    .line 2840
    const/high16 v3, 0x2000

    and-int v3, v3, v17

    if-nez v3, :cond_20

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_20

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 2843
    :cond_20
    const/16 v3, 0x7533

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2846
    if-eqz p4, :cond_21

    .line 2847
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2849
    :cond_21
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2850
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_22

    .line 2854
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 2856
    :cond_22
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2857
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 2864
    .end local v23           #top:Lcom/android/server/am/ActivityRecord;
    :cond_23
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_24

    .line 2865
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2869
    :cond_24
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2870
    const/4 v3, -0x2

    goto/16 :goto_6

    .line 2873
    .restart local v23       #top:Lcom/android/server/am/ActivityRecord;
    :cond_25
    const/4 v5, 0x0

    .line 2874
    .local v5, newTask:Z
    const/4 v7, 0x0

    .line 2877
    .local v7, keepCurTransition:Z
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_2a

    if-nez v11, :cond_2a

    const/high16 v3, 0x1000

    and-int v3, v3, v17

    if-eqz v3, :cond_2a

    .line 2879
    if-nez v21, :cond_29

    .line 2881
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v3, :cond_26

    .line 2883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2885
    :cond_26
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 2891
    :goto_9
    const/4 v5, 0x1

    .line 2892
    if-nez v18, :cond_27

    .line 2893
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(I)V

    .line 2954
    :cond_27
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v4, v0, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 2957
    if-eqz v5, :cond_28

    .line 2958
    const/16 v3, 0x7534

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2960
    :cond_28
    const/16 v3, 0x7535

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 2961
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 2962
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 2889
    :cond_29
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto :goto_9

    .line 2896
    :cond_2a
    if-eqz p2, :cond_2f

    .line 2897
    if-nez v11, :cond_2c

    const/high16 v3, 0x400

    and-int v3, v3, v17

    if-eqz v3, :cond_2c

    .line 2902
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 2904
    const/4 v7, 0x1

    .line 2905
    if-eqz v23, :cond_2e

    .line 2906
    const/16 v3, 0x7533

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2907
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2910
    if-eqz p4, :cond_2b

    .line 2911
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2913
    :cond_2b
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2914
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 2916
    :cond_2c
    if-nez v11, :cond_2e

    const/high16 v3, 0x2

    and-int v3, v3, v17

    if-eqz v3, :cond_2e

    .line 2921
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I

    move-result v25

    .line 2922
    .local v25, where:I
    if-ltz v25, :cond_2e

    .line 2923
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    .line 2924
    const/16 v3, 0x7533

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2925
    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2926
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2927
    if-eqz p4, :cond_2d

    .line 2928
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2930
    :cond_2d
    const/4 v3, 0x3

    goto/16 :goto_6

    .line 2936
    .end local v25           #where:I
    :cond_2e
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_a

    .line 2944
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2945
    .local v10, N:I
    if-lez v10, :cond_30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v20, v3

    .line 2947
    .local v20, prev:Lcom/android/server/am/ActivityRecord;
    :goto_b
    if-eqz v20, :cond_31

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_c
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_a

    .line 2945
    .end local v20           #prev:Lcom/android/server/am/ActivityRecord;
    :cond_30
    const/16 v20, 0x0

    goto :goto_b

    .line 2947
    .restart local v20       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_31
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    goto :goto_c
.end method

.method stopIfSleepingLocked()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 818
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 821
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 823
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 827
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 828
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 829
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 831
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method final switchUser(I)Z
    .locals 9
    .parameter "userId"

    .prologue
    .line 580
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 581
    :try_start_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 584
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_0

    .line 585
    const/4 v1, 0x0

    monitor-exit v7

    .line 608
    :goto_0
    return v1

    .line 587
    :cond_0
    const/4 v1, 0x0

    .line 589
    .local v1, haveActivities:Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 590
    .local v5, top:Lcom/android/server/am/ActivityRecord;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_1

    const/4 v1, 0x1

    monitor-exit v7

    goto :goto_0

    .line 609
    .end local v1           #haveActivities:Z
    .end local v5           #top:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 592
    .restart local v1       #haveActivities:Z
    .restart local v5       #top:Lcom/android/server/am/ActivityRecord;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 593
    .local v0, N:I
    const/4 v2, 0x0

    .line 594
    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 595
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 596
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_2

    .line 597
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 598
    .local v3, moveToTop:Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v0, v0, -0x1

    .line 601
    const/4 v1, 0x1

    .line 602
    goto :goto_1

    .line 603
    .end local v3           #moveToTop:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 607
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 608
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "token"
    .parameter "taskId"

    .prologue
    .line 460
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 461
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 462
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 464
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p2, v2, :cond_0

    .line 469
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 467
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 468
    goto :goto_0

    .line 469
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "notTop"

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 426
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 427
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 428
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 433
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 431
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 432
    goto :goto_0

    .line 433
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .parameter "notTop"

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 439
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 440
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 441
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    .line 446
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v1

    .line 444
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 445
    goto :goto_0

    .line 446
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "transit"
    .parameter "options"

    .prologue
    .line 4151
    if-eqz p2, :cond_0

    .line 4152
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4153
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 4154
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 4159
    .end local v0           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4160
    return-void

    .line 4156
    .restart local v0       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final validateAppTokensLocked()V
    .locals 3

    .prologue
    .line 1907
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1908
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 1909
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1910
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1909
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1912
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(Ljava/util/List;)V

    .line 1913
    return-void
.end method
