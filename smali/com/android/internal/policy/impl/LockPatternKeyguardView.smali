.class public Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/KeyguardViewBase;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/samsung/wakeup/VoiceEngineResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$12;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DB_KEY_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DEBUG:Z = true

.field static final DEBUG_CONFIGURATION:Z = true

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final EXTERNAL_STORAGE_FORMAT_DONE:I = 0x6

.field private static final EXTERNAL_STORAGE_SD_PATH:Ljava/lang/String; = "/mnt/sdcard/external_sd"

.field private static final EXTERNAL_STORAGE_STATUS_BAD_REMOVAL:I = 0x1

.field private static final EXTERNAL_STORAGE_STATUS_MEDIA_CHECKING:I = 0x2

.field private static final EXTERNAL_STORAGE_STATUS_MEDIA_REMOVED:I = 0x3

.field private static final EXTERNAL_STORAGE_STATUS_MEDIA_SHARED:I = 0x4

.field private static final EXTERNAL_STORAGE_STATUS_MOUNTED:I = 0x0

.field private static final EXTERNAL_STORAGE_STATUS_UNKNOWN:I = 0x5

.field private static final FAILED_FACE_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0xf

.field private static final TAG:Ljava/lang/String; = "LockPatternKeyguardView"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710

.field private static mFormatExtStorageThread:Ljava/lang/Thread;

.field public static mSwipeLockShowingBeforeTimeout:Z


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private CIRCLELOCK_MODE:Z

.field private final FACELOCK_VIEW_AREA_EMERGENCY_DIALER_TIMEOUT:I

.field private final FACELOCK_VIEW_AREA_SERVICE_TIMEOUT:I

.field private GLASSLOCK_MODE:Z

.field private final MSG_HIDE_FACELOCK_AREA_VIEW:I

.field private final MSG_HIDE_VOICE_RECOGNITION_DIALOG:I

.field private final MSG_SHOW_FACELOCK_AREA_VIEW:I

.field private final MSG_SHOW_VOICE_ERROR_DIALOG:I

.field private final MSG_SHOW_VOICE_RECOGNITION_DIALOG:I

.field private mBoundToFaceLockService:Z

.field private mConfigChangeRecreateRunnable:Ljava/lang/Runnable;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mEnableFallback:Z

.field private mEnableSparePassword:Z

.field private mFaceLockAreaView:Landroid/view/View;

.field private final mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceLockConnection:Landroid/content/ServiceConnection;

.field private mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mFaceLockServiceRunning:Z

.field private final mFaceLockServiceRunningLock:Ljava/lang/Object;

.field private final mFaceLockStartupLock:Ljava/lang/Object;

.field protected mFaceUnlocked:Z

.field private mFailedFaceUnlockAttempts:I

.field private mForgotPattern:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasOverlay:Z

.field private mIsTabletDevice:Z

.field private mIsVerifyUnlockOnly:Z

.field private mIsVoiceUnlockOn:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/view/View;

.field private mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mRecreateRunnable:Ljava/lang/Runnable;

.field private mRequiresSim:Z

.field private mResetProgressDialog:Landroid/app/ProgressDialog;

.field private mResetWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSavedState:Landroid/os/Parcelable;

.field private volatile mScreenOn:Z

.field private mShowLockBeforeUnlock:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTransportControlView:Lcom/android/internal/widget/TransportControlView;

.field private mUnlockScreen:Landroid/view/View;

.field private mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

.field private mVoiceErrorDialog:Landroid/app/ProgressDialog;

.field private mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

.field protected mWakeUnlocked:Z

.field private mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

.field private mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

.field private final mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

.field private volatile mWindowFocused:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 142
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    .line 2219
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .registers 14
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 502
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;)V

    .line 126
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->GLASSLOCK_MODE:Z

    .line 127
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->CIRCLELOCK_MODE:Z

    .line 135
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 136
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 137
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 138
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    .line 140
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 146
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 149
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 150
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    .line 151
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    .line 154
    iput v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_SHOW_FACELOCK_AREA_VIEW:I

    .line 155
    iput v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_HIDE_FACELOCK_AREA_VIEW:I

    .line 157
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_SHOW_VOICE_RECOGNITION_DIALOG:I

    .line 158
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_SHOW_VOICE_ERROR_DIALOG:I

    .line 159
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_HIDE_VOICE_RECOGNITION_DIALOG:I

    .line 163
    const/16 v4, 0x3e8

    iput v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->FACELOCK_VIEW_AREA_EMERGENCY_DIALER_TIMEOUT:I

    .line 168
    const/16 v4, 0xbb8

    iput v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->FACELOCK_VIEW_AREA_SERVICE_TIMEOUT:I

    .line 171
    const/16 v4, 0x1388

    iput v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->BACKUP_LOCK_TIMEOUT:I

    .line 174
    iput v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    .line 184
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceUnlocked:Z

    .line 185
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUnlocked:Z

    .line 186
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    .line 187
    iput-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    .line 188
    iput-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    .line 379
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 385
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 393
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 406
    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    .line 423
    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfigChangeRecreateRunnable:Ljava/lang/Runnable;

    .line 432
    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    .line 2053
    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    .line 2135
    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 2217
    iput-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMountService:Landroid/os/storage/IMountService;

    .line 2218
    iput-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2221
    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 2319
    iput-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    .line 504
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    .line 505
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 506
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 507
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    .line 508
    const-string v4, "keyguard.no_require_sim"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    .line 509
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 510
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 511
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    .line 512
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 515
    :try_start_ae
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110044

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTabletDevice:Z
    :try_end_bd
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ae .. :try_end_bd} :catch_182

    .line 520
    :goto_bd
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 522
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string v7, "reset keyguard"

    invoke-virtual {v4, v5, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 523
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 525
    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 727
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V

    .line 728
    const/high16 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setDescendantFocusability(I)V

    .line 730
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v4

    invoke-direct {p0, v4, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 734
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isDeviceDisabledForMaxFailedAttemptSet()Z

    move-result v4

    if-nez v4, :cond_f6

    .line 736
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 742
    :cond_f6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_screen_face_with_voice"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_187

    move v4, v5

    :goto_103
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    .line 743
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsVoiceUnlockOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    if-eqz v4, :cond_12f

    .line 746
    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    .line 747
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->start()V

    .line 750
    :cond_12f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v4

    sget-object v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v4, v5, :cond_181

    .line 751
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 753
    .local v1, failedAttempts:I
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportFailedPatternAttempt: #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (enableFallback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 759
    .local v2, failedAttemptsBeforeWipe:I
    if-lez v2, :cond_18a

    sub-int v3, v2, v1

    .line 763
    .local v3, remainingBeforeWipe:I
    :goto_175
    if-gtz v3, :cond_181

    .line 765
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "Too many unlock attempts; device will be wiped!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    .line 769
    .end local v1           #failedAttempts:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v3           #remainingBeforeWipe:I
    :cond_181
    return-void

    .line 516
    :catch_182
    move-exception v0

    .line 517
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTabletDevice:Z

    goto/16 :goto_bd

    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_187
    move v4, v6

    .line 742
    goto/16 :goto_103

    .line 759
    .restart local v1       #failedAttempts:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    :cond_18a
    const v3, 0x7fffffff

    goto :goto_175
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showRecovery()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    return p1
.end method

.method static synthetic access$2708(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeWakeupCmdDisplayMessages()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/IFaceLockInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/IFaceLockCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->displayStartVerifyMsgWithTimeout(J)V

    return-void
.end method

.method static synthetic access$4200()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$4202(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    sput-object p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFormatExtStorageThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->formatExtStorage()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return p1
.end method

.method private activateFaceLockIfAble()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 916
    iget v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_51

    move v2, v3

    .line 918
    .local v2, tooManyFaceUnlockTries:Z
    :goto_9
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 919
    .local v1, failedBackupAttempts:I
    const/4 v5, 0x5

    if-lt v1, v5, :cond_53

    move v0, v3

    .line 921
    .local v0, backupIsTimedOut:Z
    :goto_13
    if-eqz v2, :cond_2d

    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tooManyFaceUnlockTries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_2d
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    if-nez v3, :cond_55

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v3

    if-eqz v3, :cond_55

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v3, :cond_55

    if-nez v2, :cond_55

    if-nez v0, :cond_55

    .line 927
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->bindToFaceLock()V

    .line 931
    const-wide/16 v3, 0xbb8

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    .line 936
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 940
    :goto_50
    return-void

    .end local v0           #backupIsTimedOut:Z
    .end local v1           #failedBackupAttempts:I
    .end local v2           #tooManyFaceUnlockTries:Z
    :cond_51
    move v2, v4

    .line 916
    goto :goto_9

    .restart local v1       #failedBackupAttempts:I
    .restart local v2       #tooManyFaceUnlockTries:Z
    :cond_53
    move v0, v4

    .line 919
    goto :goto_13

    .line 938
    .restart local v0       #backupIsTimedOut:Z
    :cond_55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    goto :goto_50
.end method

.method private checkUnlockModeInSignatureLock()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .registers 6

    .prologue
    .line 1604
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1607
    .local v0, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v1, v2, :cond_2d

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v1, :cond_2d

    .line 1609
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    .line 1610
    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account unlock and back key: re-create pattern unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_2c
    :goto_2c
    return-object v0

    .line 1612
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2c

    .line 1614
    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature lock mode, but failed to unlock within fallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v1, v2, :cond_60

    .line 1619
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    goto :goto_2c

    .line 1622
    :cond_60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    .line 1623
    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No previous unlock screen, get unlock mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private createVoiceDialog()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1951
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    .line 1952
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d9

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 1954
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1955
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    const-string v2, "Voice Unlock"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1956
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    const-string v2, " Say \'Hi Galaxy~\' to unlock the device."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1957
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1958
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1966
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1967
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1976
    return-void
.end method

.method private createVoiceErrorDialog()V
    .registers 6

    .prologue
    .line 1980
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    .line 1981
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d9

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 1983
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1984
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    const-string v2, "Voice Unlock"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1985
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    const-string v2, "Voice verification failed.\nYou can still unlock the device using alternative way."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1986
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1987
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2008
    return-void
.end method

.method private deleteInternalSd()Z
    .registers 6

    .prologue
    .line 2339
    const/4 v0, 0x1

    .line 2341
    .local v0, del:Z
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteSdCardFiles(Ljava/io/File;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_25

    move-result v0

    .line 2349
    :goto_c
    const-string v2, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished internal SD card cleaning. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    return v0

    .line 2343
    :catch_25
    move-exception v1

    .line 2347
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LockPatternKeyguardView"

    const-string v3, "deleteSdCardFiles exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private static deleteSdCardFiles(Ljava/io/File;)Z
    .registers 13
    .parameter "file"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v6, 0x1

    .line 2377
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_11

    .line 2378
    const-string v6, "LockPatternKeyguardView"

    const-string v8, "file not exists()) flase"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :goto_10
    return v7

    .line 2381
    :cond_11
    const-string v8, "LockPatternKeyguardView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 2384
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_48

    .line 2385
    const-string v6, "LockPatternKeyguardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " file null false : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2388
    :cond_48
    const-string v2, "sdcard"

    .line 2389
    .local v2, mSdCard:Ljava/lang/String;
    const/4 v5, 0x1

    .line 2391
    .local v5, success:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4c
    array-length v8, v0

    if-ge v1, v8, :cond_10d

    .line 2392
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2393
    .local v3, path:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2395
    .local v4, pathlist:[Ljava/lang/String;
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    aget-object v8, v4, v11

    const-string v9, "apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_6d
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    aget-object v8, v4, v11

    const-string v9, "SamsungDic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_7f
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    aget-object v8, v4, v11

    const-string v9, "ReadersHub"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_91
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a3

    aget-object v8, v4, v11

    const-string v9, "Tmap3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_a3
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    aget-object v8, v4, v11

    const-string v9, ".version"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    :cond_b5
    aget-object v8, v4, v6

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e9

    aget-object v8, v4, v11

    const-string v9, ".filesize"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 2402
    :cond_c7
    const-string v8, "LockPatternKeyguardView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FactoryReset Skipping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v1

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :goto_e5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4c

    .line 2404
    :cond_e9
    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 2405
    if-eqz v5, :cond_fd

    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteSdCardFiles(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_fd

    move v5, v6

    :goto_fc
    goto :goto_e5

    :cond_fd
    move v5, v7

    goto :goto_fc

    .line 2407
    :cond_ff
    if-eqz v5, :cond_10b

    aget-object v8, v0, v1

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_10b

    move v5, v6

    :goto_10a
    goto :goto_e5

    :cond_10b
    move v5, v7

    goto :goto_10a

    .line 2411
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #pathlist:[Ljava/lang/String;
    :cond_10d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move v7, v5

    .line 2413
    goto/16 :goto_10
.end method

.method private displayStartVerifyMsgWithTimeout(J)V
    .registers 7
    .parameter "timeoutMillis"

    .prologue
    .line 1924
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayStartVerifyMsgWithTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeWakeupCmdDisplayMessages()V

    .line 1927
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1929
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1931
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1932
    return-void
.end method

.method private displayVerifyFailMsg()V
    .registers 5

    .prologue
    .line 1936
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "displayVerifyFailMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeWakeupCmdDisplayMessages()V

    .line 1939
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1940
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1941
    return-void
.end method

.method private formatExtStorage()I
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 2253
    const-string v7, "LockPatternKeyguardView"

    const-string v8, "formatExtStorage+++"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2256
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-nez v1, :cond_11

    .line 2315
    :cond_10
    :goto_10
    return v4

    .line 2259
    :cond_11
    const-string v3, ""

    .line 2261
    .local v3, status:Ljava/lang/String;
    :try_start_13
    const-string v7, "/mnt/sdcard/external_sd"

    invoke-interface {v1, v7}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_40

    move-result-object v3

    .line 2267
    :goto_19
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 2269
    :cond_29
    :try_start_29
    const-string v5, "LockPatternKeyguardView"

    const-string v7, "unmounting Volume..."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const-string v5, "/mnt/sdcard/external_sd"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v1, v5, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 2271
    const-string v5, "LockPatternKeyguardView"

    const-string v7, "unmounting Volume done!"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3e} :catch_4c

    move v4, v6

    .line 2277
    goto :goto_10

    .line 2262
    :catch_40
    move-exception v2

    .line 2263
    .local v2, rex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2264
    const-string v7, "LockPatternKeyguardView"

    const-string v8, "Failed while getting status of EXTERNAL_STORAGE_SD_PATH"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 2272
    .end local v2           #rex:Ljava/lang/Exception;
    :catch_4c
    move-exception v0

    .line 2273
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2274
    const-string v5, "LockPatternKeyguardView"

    const-string v6, "Failed talking with mount service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 2278
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_58
    const-string v6, "nofs"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    const-string v6, "unmounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    const-string v6, "unmountable"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 2281
    :cond_70
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :try_start_88
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "formatting Volume..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    const-string v4, "/mnt/sdcard/external_sd"

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    .line 2285
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "formatting Volume done!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_88 .. :try_end_9b} :catchall_bd
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_9b} :catch_ab

    .line 2290
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "formatVolume done! Calling deleteInternalSd() and rebootWipeUserData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteInternalSd()Z

    .line 2293
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->rebootWipeUserData()V

    .line 2295
    :goto_a8
    const/4 v4, 0x6

    goto/16 :goto_10

    .line 2286
    :catch_ab
    move-exception v0

    .line 2287
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_ac
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_bd

    .line 2290
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "formatVolume done! Calling deleteInternalSd() and rebootWipeUserData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteInternalSd()Z

    .line 2293
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->rebootWipeUserData()V

    goto :goto_a8

    .line 2290
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_bd
    move-exception v4

    const-string v5, "LockPatternKeyguardView"

    const-string v6, "formatVolume done! Calling deleteInternalSd() and rebootWipeUserData()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->deleteInternalSd()Z

    .line 2293
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->rebootWipeUserData()V

    throw v4

    .line 2296
    :cond_cc
    const-string v6, "bad_removal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 2297
    const-string v4, "LockPatternKeyguardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2298
    goto/16 :goto_10

    .line 2299
    :cond_ef
    const-string v5, "checking"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_112

    .line 2300
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const/4 v4, 0x2

    goto/16 :goto_10

    .line 2302
    :cond_112
    const-string v5, "removed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 2303
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    const/4 v4, 0x3

    goto/16 :goto_10

    .line 2305
    :cond_135
    const-string v5, "shared"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_161

    .line 2306
    const-string v5, "LockPatternKeyguardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v5, :cond_10

    .line 2308
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 2309
    const/4 v4, 0x4

    goto/16 :goto_10

    .line 2314
    :cond_161
    const-string v5, "LockPatternKeyguardView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10
.end method

.method private getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .registers 3

    .prologue
    .line 1510
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1511
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1514
    :cond_18
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1525
    :goto_1a
    return-object v1

    .line 1516
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v1, :cond_28

    .line 1517
    :cond_25
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_1a

    .line 1525
    :cond_28
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_1a
.end method

.method private getResetProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 2322
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4b

    .line 2323
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    .line 2324
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v2, 0x104032f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2325
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2326
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2327
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2329
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2330
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 2335
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .registers 7

    .prologue
    .line 1534
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 1536
    .local v2, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_d

    .line 1537
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1574
    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :goto_c
    return-object v0

    .line 1538
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_d
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_14

    .line 1539
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1540
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_14
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isRecoverLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1541
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recovery:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1542
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPcwLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1543
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1545
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_2a
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 1546
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_78

    .line 1571
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unlock mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1551
    :sswitch_4c
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1552
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1554
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_57
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1556
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1560
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_5a
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v3, :cond_66

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1561
    :cond_66
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1563
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_69
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1564
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1566
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_74
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1569
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1546
    nop

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_5a
        0x10000 -> :sswitch_5a
        0x20000 -> :sswitch_4c
        0x40000 -> :sswitch_4c
        0x50000 -> :sswitch_4c
        0x60000 -> :sswitch_4c
    .end sparse-switch
.end method

.method private getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .registers 6

    .prologue
    .line 1583
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 1584
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_28

    .line 1596
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown unlock mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1589
    :sswitch_22
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1599
    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :goto_24
    return-object v0

    .line 1593
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_25
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1594
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_24

    .line 1584
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_25
        0x10000 -> :sswitch_25
        0x20000 -> :sswitch_22
        0x40000 -> :sswitch_22
        0x50000 -> :sswitch_22
        0x60000 -> :sswitch_22
    .end sparse-switch
.end method

.method private hideFaceLockArea()V
    .registers 3

    .prologue
    .line 1912
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeFaceLockAreaDisplayMessages()V

    .line 1913
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1914
    return-void
.end method

.method private initializeFaceLockAreaView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1821
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1822
    const v0, 0x10202ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    .line 1823
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-nez v0, :cond_1a

    .line 1824
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Layout does not have faceLockAreaView and FaceLock is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :cond_1a
    :goto_1a
    return-void

    .line 1827
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    goto :goto_1a
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1495
    const v0, 0x10202b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/TransportControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    .line 1496
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-nez v0, :cond_17

    .line 1497
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Couldn\'t find transport control widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :goto_16
    return-void

    .line 1499
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1500
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setVisibility(I)V

    .line 1501
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    goto :goto_16
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .registers 8

    .prologue
    .line 842
    const/4 v2, 0x0

    .line 843
    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 845
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    .line 846
    .local v3, lMaxNumFailedAttemptForDisable:I
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    if-lez v3, :cond_50

    .line 850
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    .line 851
    .local v1, lCurNumFailedAttempts:I
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    add-int/lit8 v4, v1, 0x1

    if-lt v4, v3, :cond_69

    const/4 v2, 0x1

    .line 858
    .end local v1           #lCurNumFailedAttempts:I
    :cond_50
    :goto_50
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return v2

    .line 855
    .restart local v1       #lCurNumFailedAttempts:I
    :cond_69
    const/4 v2, 0x0

    goto :goto_50
.end method

.method private isDeviceDisabledForMaxFailedAttemptSet()Z
    .registers 6

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 835
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v1

    .line 836
    .local v1, lMaxNumFailedAttemptForDisable:I
    const-string v2, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max failed attempt for device disable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-lez v1, :cond_30

    const/4 v2, 0x1

    :goto_2f
    return v2

    :cond_30
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method private isSecure()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1203
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .line 1204
    .local v1, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .line 1205
    .local v0, secure:Z
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$12;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_68

    .line 1231
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1207
    :pswitch_2b
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    .line 1233
    :goto_31
    return v0

    .line 1210
    :pswitch_32
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_3e

    move v0, v2

    .line 1211
    :goto_3d
    goto :goto_31

    :cond_3e
    move v0, v3

    .line 1210
    goto :goto_3d

    .line 1213
    :pswitch_40
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_4c

    move v0, v2

    .line 1214
    :goto_4b
    goto :goto_31

    :cond_4c
    move v0, v3

    .line 1213
    goto :goto_4b

    .line 1216
    :pswitch_4e
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPcwLockEnabled()Z

    move-result v0

    .line 1217
    goto :goto_31

    .line 1219
    :pswitch_55
    const/4 v0, 0x1

    .line 1220
    goto :goto_31

    .line 1222
    :pswitch_57
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    .line 1223
    goto :goto_31

    .line 1225
    :pswitch_5e
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isRecoverLockEnabled()Z

    move-result v0

    .line 1226
    goto :goto_31

    .line 1228
    :pswitch_65
    const/4 v0, 0x1

    .line 1229
    goto :goto_31

    .line 1205
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_32
        :pswitch_40
        :pswitch_4e
        :pswitch_55
        :pswitch_57
        :pswitch_5e
        :pswitch_65
    .end packed-switch
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 826
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;)V

    .line 827
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->start()V

    .line 828
    return-void
.end method

.method private rebootWipeUserData()V
    .registers 4

    .prologue
    .line 2356
    :try_start_0
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "RecoverySystem.rebootWipeUserData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V

    .line 2358
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_15

    .line 2359
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 2364
    :cond_15
    :goto_15
    return-void

    .line 2361
    :catch_16
    move-exception v0

    .line 2362
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Exception in wiping data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private recreateLockScreen()V
    .registers 3

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1039
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1042
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 1043
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 1045
    return-void
.end method

.method private recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V
    .registers 4
    .parameter "unlockMode"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 1049
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1050
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1051
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1054
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 1055
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 1057
    return-void
.end method

.method private removeFaceLockAreaDisplayMessages()V
    .registers 3

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1899
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1900
    return-void
.end method

.method private removeWakeupCmdDisplayMessages()V
    .registers 3

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1919
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1920
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1921
    return-void
.end method

.method private restoreWidgetState()V
    .registers 3

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_16

    .line 986
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Restoring widget state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    if-eqz v0, :cond_16

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 991
    :cond_16
    return-void
.end method

.method private saveWidgetState()V
    .registers 3

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    if-eqz v0, :cond_13

    .line 979
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Saving widget state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/android/internal/widget/TransportControlView;

    invoke-virtual {v0}, Lcom/android/internal/widget/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    .line 982
    :cond_13
    return-void
.end method

.method private showAlmostAtAccountLoginDialog()V
    .registers 15

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1665
    const/16 v4, 0x1e

    .line 1666
    .local v4, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 1667
    .local v0, count:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v6, 0x10403ca

    new-array v7, v12, [Ljava/lang/Object;

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1669
    .local v2, message1:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v6, 0x1040654

    new-array v7, v12, [Ljava/lang/Object;

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1671
    .local v3, message2:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v5, :cond_55

    move-object v1, v2

    .line 1672
    .local v1, message:Ljava/lang/String;
    :goto_50
    const/4 v5, 0x0

    invoke-direct {p0, v5, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    return-void

    .end local v1           #message:Ljava/lang/String;
    :cond_55
    move-object v1, v3

    .line 1671
    goto :goto_50
.end method

.method private showAlmostAtWipeDialog(II)V
    .registers 10
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    .line 1676
    const/16 v1, 0x1e

    .line 1677
    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v3, 0x10403cb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1679
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1631
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1636
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1637
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1638
    return-void
.end method

.method private showFaceLockArea()V
    .registers 3

    .prologue
    .line 1905
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeFaceLockAreaDisplayMessages()V

    .line 1906
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1907
    return-void
.end method

.method private showFaceLockAreaWithTimeout(J)V
    .registers 5
    .parameter "timeoutMillis"

    .prologue
    .line 1945
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    .line 1946
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1947
    return-void
.end method

.method private showRecovery()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2205
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_Recovery_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 2206
    .local v0, bRecovery:Z
    if-eqz v0, :cond_25

    .line 2207
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Success to set LOCK_RECOVERY_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :goto_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 2213
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "showRecovery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    return-void

    .line 2209
    :cond_25
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Failed to set LOCK_RECOVERY_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private showTimeoutDialog()V
    .registers 9

    .prologue
    .line 1641
    const/16 v2, 0x1e

    .line 1642
    .local v2, timeoutInSeconds:I
    const v1, 0x10403c5

    .line 1644
    .local v1, messageId:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v3

    .line 1646
    .local v3, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v4, :cond_11

    .line 1647
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v3

    .line 1650
    :cond_11
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v4, :cond_22

    .line 1651
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    const/high16 v5, 0x2

    if-ne v4, v5, :cond_44

    .line 1653
    const v1, 0x10403c9

    .line 1658
    :cond_22
    :goto_22
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1661
    .local v0, message:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    return-void

    .line 1655
    .end local v0           #message:Ljava/lang/String;
    :cond_44
    const v1, 0x10403c6

    goto :goto_22
.end method

.method private showWipeDialog(I)V
    .registers 9
    .parameter "attempts"

    .prologue
    const/4 v6, 0x0

    .line 1687
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v3, 0x10403cc

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1748
    .local v0, wipedialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1749
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1750
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1751
    return-void
.end method

.method private stopFaceLockIfRunning()Z
    .registers 2

    .prologue
    .line 1833
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-eqz v0, :cond_f

    .line 1834
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 1835
    const/4 v0, 0x1

    .line 1837
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .registers 3

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .registers 14
    .parameter "mode"
    .parameter "force"

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 1238
    const-string v6, "LockPatternKeyguardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "**** UPDATE SCREEN: mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " last mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", force = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1243
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v3

    .line 1244
    .local v3, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v6, :cond_49

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-nez v6, :cond_49

    .line 1245
    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1246
    iget-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1250
    :cond_49
    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-eq p1, v6, :cond_51

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v6, :cond_5a

    .line 1251
    :cond_51
    if-nez p2, :cond_57

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-nez v6, :cond_5a

    .line 1252
    :cond_57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    .line 1270
    :cond_5a
    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v6, :cond_89

    .line 1273
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v6, :cond_6b

    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v3, v6, :cond_6a

    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v6, :cond_6b

    .line 1274
    :cond_6a
    const/4 p2, 0x0

    .line 1277
    :cond_6b
    if-nez p2, :cond_75

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v6, :cond_75

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v3, v6, :cond_17a

    .line 1278
    :cond_75
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLockIfRunning()Z

    move-result v2

    .line 1279
    .local v2, restartFaceLock:Z
    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v6, :cond_81

    .line 1280
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->checkUnlockModeInSignatureLock()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v3

    .line 1282
    :cond_81
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V

    .line 1283
    if-eqz v2, :cond_89

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    .line 1295
    .end local v2           #restartFaceLock:Z
    :cond_89
    :goto_89
    if-nez p2, :cond_8f

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    if-nez v6, :cond_da

    .line 1296
    :cond_8f
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    if-eqz v6, :cond_9d

    .line 1297
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/WallpaperWidget;->cleanUp()V

    .line 1298
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1300
    :cond_9d
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "lockscreen_wallpaper"

    invoke-static {v6, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_1a2

    .line 1301
    .local v1, isLockScreenWallpaperOn:Z
    :goto_ab
    const-string v6, "LockPatternKeyguardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isLockScreenWallpaperOn  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    if-eqz v1, :cond_da

    .line 1303
    new-instance v6, Lcom/android/internal/policy/impl/WallpaperWidget;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v8, v9}, Lcom/android/internal/policy/impl/WallpaperWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    .line 1304
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1305
    .local v5, wallpaperLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1310
    .end local v1           #isLockScreenWallpaperOn:Z
    .end local v5           #wallpaperLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_da
    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v6, :cond_1a5

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 1311
    .local v0, goneScreen:Landroid/view/View;
    :goto_e0
    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v6, :cond_1a9

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 1315
    .local v4, visibleScreen:Landroid/view/View;
    :goto_e6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 1316
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-object v6, v4

    check-cast v6, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v6

    invoke-interface {v8, v6}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setNeedsInput(Z)V

    .line 1319
    :cond_f8
    const-string v6, "LockPatternKeyguardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Gone="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const-string v6, "LockPatternKeyguardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Visible="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v6, :cond_146

    .line 1324
    if-eqz v0, :cond_13a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_13a

    move-object v6, v0

    .line 1325
    check-cast v6, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1327
    :cond_13a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_146

    move-object v6, v4

    .line 1328
    check-cast v6, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 1332
    :cond_146
    if-eqz v0, :cond_14d

    .line 1333
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1335
    :cond_14d
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->requestLayout()V

    .line 1348
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v6

    if-nez v6, :cond_1ad

    .line 1349
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1284
    .end local v0           #goneScreen:Landroid/view/View;
    .end local v4           #visibleScreen:Landroid/view/View;
    :cond_17a
    sget-object v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v6, :cond_89

    .line 1286
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v6, :cond_89

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    instance-of v6, v6, Lcom/android/internal/policy/impl/SignatureLockScreen;

    if-eqz v6, :cond_89

    .line 1287
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/impl/SignatureLockScreen;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/SignatureLockScreen;->isSignatureRecognitionFailed()Z

    move-result v6

    if-eqz v6, :cond_89

    .line 1288
    const-string v6, "LockPatternKeyguardView"

    const-string v8, "it seems that it failed to unlock with signature"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockModeForFallback()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V

    goto/16 :goto_89

    :cond_1a2
    move v1, v7

    .line 1300
    goto/16 :goto_ab

    .line 1310
    :cond_1a5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    goto/16 :goto_e0

    .line 1311
    .restart local v0       #goneScreen:Landroid/view/View;
    :cond_1a9
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    goto/16 :goto_e6

    .line 1353
    .restart local v4       #visibleScreen:Landroid/view/View;
    :cond_1ad
    return-void
.end method

.method private usingFaceLock()Z
    .registers 2

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .registers 4
    .parameter "job"
    .parameter "count"
    .parameter "check"

    .prologue
    .line 2455
    return-void
.end method

.method public OnRmsForWave(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 2460
    return-void
.end method

.method public OnVerifyResult(IS)V
    .registers 7
    .parameter "verifyResult"
    .parameter "commandResult"

    .prologue
    const/4 v3, 0x1

    .line 2417
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    if-ne p1, v3, :cond_29

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUnlocked:Z

    .line 2430
    :cond_1d
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-nez v0, :cond_44

    .line 2431
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Result came too late"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    :cond_28
    :goto_28
    return-void

    .line 2421
    :cond_29
    const/4 v0, -0x3

    if-ne p1, v0, :cond_34

    .line 2422
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 2424
    :cond_34
    const/16 v0, -0xa

    if-eq p1, v0, :cond_3c

    const/16 v0, -0xb

    if-ne p1, v0, :cond_1d

    .line 2425
    :cond_3c
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 2436
    :cond_44
    if-ne p1, v3, :cond_70

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceUnlocked:Z

    if-eqz v0, :cond_70

    .line 2439
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeWakeupCmdDisplayMessages()V

    .line 2441
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Wakeup + Face Success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2443
    :cond_65
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 2444
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    goto :goto_28

    .line 2446
    :cond_70
    if-eq p1, v3, :cond_28

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceUnlocked:Z

    if-eqz v0, :cond_28

    .line 2447
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Wakeup Fail after FaceLock recognition successed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->displayVerifyFailMsg()V

    goto :goto_28
.end method

.method public bindToFaceLock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2013
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2014
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-nez v0, :cond_2e

    .line 2015
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "before bind to FaceLock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2019
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "after bind to FaceLock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 2025
    :cond_2d
    :goto_2d
    return-void

    .line 2022
    :cond_2e
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Attempt to bind to FaceLock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1167
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 1168
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1169
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1170
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1171
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 1173
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 1174
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1175
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1176
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1177
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 1179
    :cond_33
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1180
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_48

    .line 1182
    :try_start_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_67

    .line 1186
    :goto_43
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1187
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 1190
    :cond_48
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    if-eqz v0, :cond_58

    .line 1191
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WallpaperWidget;->cleanUp()V

    .line 1192
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1193
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWallpaperWidget:Lcom/android/internal/policy/impl/WallpaperWidget;

    .line 1196
    :cond_58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_66

    .line 1197
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->wakeUpDestroy()V

    .line 1198
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->quit()V

    .line 1200
    :cond_66
    return-void

    .line 1183
    :catch_67
    move-exception v0

    goto :goto_43
.end method

.method createLockScreen()Landroid/view/View;
    .registers 7

    .prologue
    .line 1356
    const/4 v0, 0x0

    .line 1358
    .local v0, lockView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsTabletDevice:Z

    if-eqz v1, :cond_18

    .line 1359
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen;

    .end local v0           #lockView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 1373
    .restart local v0       #lockView:Landroid/view/View;
    :goto_14
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 1374
    return-object v0

    .line 1366
    :cond_18
    new-instance v0, Lcom/android/internal/policy/impl/CircleLockScreen;

    .end local v0           #lockView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/CircleLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #lockView:Landroid/view/View;
    goto :goto_14
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .registers 12
    .parameter "unlockMode"

    .prologue
    .line 1378
    const/4 v1, 0x0

    .line 1380
    .local v1, unlockView:Landroid/view/View;
    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUnlockScreenFor("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): mEnableFallback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): mEnableSparePassword="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_67

    .line 1384
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .line 1391
    .local v0, view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockSparePasswordEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    .line 1392
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    .line 1393
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableSparePasswordFallback(Z)V

    .line 1394
    move-object v1, v0

    .line 1487
    .end local v0           #view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    .restart local v1       #unlockView:Landroid/view/View;
    :goto_5d
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 1488
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeFaceLockAreaView(Landroid/view/View;)V

    .line 1490
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object v3, v1

    .line 1491
    :goto_66
    return-object v3

    .line 1395
    :cond_67
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_7b

    .line 1396
    new-instance v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_5d

    .line 1402
    :cond_7b
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_8f

    .line 1403
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_5d

    .line 1409
    :cond_8f
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_b3

    .line 1411
    :try_start_93
    new-instance v2, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_a2
    .catch Ljava/lang/IllegalStateException; {:try_start_93 .. :try_end_a2} :catch_a4

    .end local v1           #unlockView:Landroid/view/View;
    .local v2, unlockView:Landroid/view/View;
    move-object v1, v2

    .line 1431
    .end local v2           #unlockView:Landroid/view/View;
    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_5d

    .line 1417
    :catch_a4
    move-exception v9

    .line 1418
    .local v9, e:Ljava/lang/IllegalStateException;
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v3

    goto :goto_66

    .line 1432
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :cond_b3
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_c8

    .line 1456
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_5d

    .line 1463
    :cond_c8
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recovery:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_dd

    .line 1464
    new-instance v1, Lcom/android/internal/policy/impl/RecoveryUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/RecoveryUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_5d

    .line 1470
    :cond_dd
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_f3

    .line 1471
    new-instance v1, Lcom/android/internal/policy/impl/PcwUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PcwUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_5d

    .line 1477
    :cond_f3
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Signature:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_109

    .line 1478
    new-instance v1, Lcom/android/internal/policy/impl/SignatureLockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/SignatureLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_5d

    .line 1485
    :cond_109
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown unlock mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 871
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 872
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1124
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1125
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 1127
    :cond_19
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .registers 4

    .prologue
    .line 2241
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_12

    .line 2242
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2243
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_15

    .line 2244
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMountService:Landroid/os/storage/IMountService;

    .line 2249
    .end local v0           #service:Landroid/os/IBinder;
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 2246
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_15
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 1845
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_58

    .line 1890
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "Unhandled message"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :goto_d
    return v0

    .line 1847
    :pswitch_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 1848
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1893
    :cond_17
    :goto_17
    const/4 v0, 0x1

    goto :goto_d

    .line 1852
    :pswitch_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 1853
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    .line 1862
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2b

    .line 1863
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createVoiceDialog()V

    .line 1864
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_17

    .line 1872
    :pswitch_31
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->wakeUpTerminateVerify()V

    .line 1873
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_17

    .line 1874
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_17

    .line 1884
    :pswitch_44
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4b

    .line 1885
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createVoiceErrorDialog()V

    .line 1886
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1887
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_17

    .line 1845
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_e
        :pswitch_19
        :pswitch_24
        :pswitch_44
        :pswitch_31
    .end packed-switch
.end method

.method public onClockVisibilityChanged()V
    .registers 4

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getSystemUiVisibility()I

    move-result v1

    const v2, -0x800001

    and-int v0, v1, v2

    .line 1099
    .local v0, visFlags:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isClockVisible()Z

    move-result v1

    if-eqz v1, :cond_18

    const/high16 v1, 0x80

    :goto_13
    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setSystemUiVisibility(I)V

    .line 1101
    return-void

    .line 1099
    :cond_18
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onCmasRecieved()V
    .registers 1

    .prologue
    .line 1106
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1072
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x111001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 1073
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 1074
    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** re-creating lock screen since config changed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    .line 1080
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1081
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 1083
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1065
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 1067
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onDetachedFromWindow()V

    .line 1068
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 1104
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 6
    .parameter "phoneState"

    .prologue
    const/4 v3, 0x1

    .line 1110
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    if-ne p1, v3, :cond_23

    .line 1112
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 1113
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 1114
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    .line 1116
    :cond_23
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1088
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1092
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1094
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 883
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "screen off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 885
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 886
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 888
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_45

    .line 889
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeWakeupCmdDisplayMessages()V

    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->wakeUpTerminateVerify()V

    .line 892
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 893
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceRecognitionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 894
    :cond_34
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 895
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceErrorDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 899
    :cond_45
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_50

    .line 900
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 902
    :cond_50
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_5b

    .line 903
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 906
    :cond_5b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 910
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 944
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "screen on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v1, 0x0

    .line 947
    .local v1, runFaceLock:Z
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    if-eqz v3, :cond_12

    .line 948
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceUnlocked:Z

    .line 949
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUnlocked:Z

    .line 953
    :cond_12
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    monitor-enter v4

    .line 954
    const/4 v3, 0x1

    :try_start_16
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 955
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 956
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_5a

    .line 958
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->show()V

    .line 960
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    .line 962
    if-eqz v1, :cond_26

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    .line 964
    :cond_26
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 965
    .local v0, drivingMode:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 968
    .local v2, unlockDrivingMode:I
    if-ne v0, v6, :cond_59

    if-ne v2, v6, :cond_59

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v6, :cond_59

    .line 970
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 971
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 975
    :cond_59
    :goto_59
    return-void

    .line 956
    .end local v0           #drivingMode:I
    .end local v2           #unlockDrivingMode:I
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v3

    .line 973
    .restart local v0       #drivingMode:I
    .restart local v2       #unlockDrivingMode:I
    :cond_5d
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "Phone is not boot completed. so can\'t start tts"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 1090
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasWindowFocus"

    .prologue
    .line 998
    const-string v2, "LockPatternKeyguardView"

    if-eqz p1, :cond_25

    const-string v1, "focused"

    :goto_6
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v0, 0x0

    .line 1001
    .local v0, runFaceLock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1002
    :try_start_d
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    if-nez v1, :cond_16

    move v0, p1

    .line 1003
    :cond_16
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 1004
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_28

    .line 1005
    if-nez p1, :cond_2b

    .line 1006
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 1007
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 1008
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    .line 1012
    :cond_24
    :goto_24
    return-void

    .line 998
    .end local v0           #runFaceLock:Z
    :cond_25
    const-string v1, "unfocused"

    goto :goto_6

    .line 1004
    .restart local v0       #runFaceLock:Z
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1

    .line 1009
    :cond_2b
    if-eqz v0, :cond_24

    .line 1010
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    goto :goto_24
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 876
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 877
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 879
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1018
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 1020
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 1024
    :cond_16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v0, :cond_24

    .line 1029
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    .line 1033
    :goto_23
    return-void

    .line 1031
    :cond_24
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    goto :goto_23
.end method

.method public startFaceLock(Landroid/os/IBinder;IIII)V
    .registers 14
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2093
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2094
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2095
    :try_start_9
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    if-nez v0, :cond_4e

    .line 2096
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Starting FaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_4b

    .line 2098
    :try_start_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIII)V

    .line 2099
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_27

    .line 2100
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->wakeUpStartVerify()V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_4b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_2c

    .line 2105
    :cond_27
    const/4 v0, 0x1

    :try_start_28
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 2109
    :goto_2a
    monitor-exit v7

    .line 2111
    :cond_2b
    :goto_2b
    return-void

    .line 2101
    :catch_2c
    move-exception v6

    .line 2102
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting FaceLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    monitor-exit v7

    goto :goto_2b

    .line 2109
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_4b
    move-exception v0

    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_4b

    throw v0

    .line 2107
    :cond_4e
    :try_start_4e
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "startFaceLock() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_4b

    goto :goto_2a
.end method

.method public stopAndUnbindFromFaceLock()V
    .registers 3

    .prologue
    .line 2029
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2030
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 2032
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-eqz v0, :cond_31

    .line 2033
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "before unbind from FaceLock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_1f

    .line 2036
    :try_start_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_39

    .line 2041
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2042
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "after unbind from FaceLock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 2051
    :cond_30
    :goto_30
    return-void

    .line 2048
    :cond_31
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Attempt to unbind from FaceLock when not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 2037
    :catch_39
    move-exception v0

    goto :goto_1f
.end method

.method public stopFaceLock()V
    .registers 6

    .prologue
    .line 2116
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2120
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2121
    :try_start_9
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_3c

    if-eqz v1, :cond_1c

    .line 2123
    :try_start_d
    const-string v1, "LockPatternKeyguardView"

    const-string v3, "Stopping FaceLock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1e

    .line 2128
    :goto_19
    const/4 v1, 0x0

    :try_start_1a
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 2130
    :cond_1c
    monitor-exit v2

    .line 2132
    :cond_1d
    return-void

    .line 2125
    :catch_1e
    move-exception v0

    .line 2126
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping FaceLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2130
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_1a .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public verifyUnlock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1146
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 1163
    :goto_f
    return-void

    .line 1149
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_22

    .line 1154
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_36

    .line 1157
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_f

    .line 1160
    :cond_36
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 1161
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_f
.end method

.method public wakeWhenReadyTq(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 1132
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/16 v0, 0x52

    if-ne p1, v0, :cond_36

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_36

    .line 1135
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 1137
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 1142
    :goto_35
    return-void

    .line 1139
    :cond_36
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_35
.end method
