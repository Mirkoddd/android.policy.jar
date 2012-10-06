.class public Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenMusicWidget.java"


# static fields
.field private static final MUSICHUB_FF_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.down"

.field private static final MUSICHUB_FF_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.up"

.field private static final MUSICHUB_MEDIA_INFO:Ljava/lang/String; = "com.samsung.music.musicservicecommand.mediainfo"

.field private static final MUSICHUB_NEXT:Ljava/lang/String; = "com.samsung.music.musicservicecommand.next"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final MUSICHUB_PREVIOUS:Ljava/lang/String; = "com.samsung.music.musicservicecommand.previous"

.field private static final MUSICHUB_REW_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.down"

.field private static final MUSICHUB_REW_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.up"

.field private static final MUSICHUB_TOGGLEPAUSE:Ljava/lang/String; = "com.samsung.music.musicservicecommand.togglepause"

.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.android.music.musicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_FF_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.down"

.field private static final MUSICPLAYER_FF_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.up"

.field private static final MUSICPLAYER_MEDIA_INFO:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field private static final MUSICPLAYER_ON:I = 0x1

.field private static final MUSICPLAYER_REW_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.down"

.field private static final MUSICPLAYER_REW_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.up"

.field private static final SOUND_TOUCH_ID:I = 0x0

.field private static final SS_NEXT_ACTION:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.next"

.field private static final SS_PREVIOUS_ACTION:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.previous"

.field private static final SS_TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.togglepause"

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenMusicWidget"


# instance fields
.field private final AWAKE_POKE_MILLIS:I

.field private final DEBUG:Z

.field private final MSG_MEDIA_UPDATE:I

.field private final SHINK_ANIMATION_START:I

.field private final STREAMING_MEDIA_UPDATE:I

.field private currentAlbumID:Ljava/lang/String;

.field private currentArtist:Ljava/lang/String;

.field private currentTitle:Ljava/lang/String;

.field private isMaxLayout:Z

.field private isTopLayout:Z

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumArtWithImage:Landroid/widget/ImageView;

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mBoxInMaxMusicController:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mFFLongPressed:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeightDifference:I

.field private mIsMoving:Z

.field private mIsPlaying:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMaxMusicController:Landroid/widget/FrameLayout;

.field private mMediaUri:Landroid/net/Uri;

.field private mMinMusicControllerHandle:Landroid/widget/LinearLayout;

.field private mMusicInfoTextInMax:Landroid/widget/TextView;

.field private mMusicInfoTextInMin:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mREWLongPressed:Z

.field private mServiceNumber:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVisibleLayout:Z

.field private mWasShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 9
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->DEBUG:Z

    .line 98
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 107
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 113
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 115
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 116
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 118
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    .line 126
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->SHINK_ANIMATION_START:I

    .line 127
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->MSG_MEDIA_UPDATE:I

    .line 128
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->STREAMING_MEDIA_UPDATE:I

    .line 133
    const v2, 0x927c0

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->AWAKE_POKE_MILLIS:I

    .line 139
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    .line 143
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    .line 172
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 173
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 176
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    .line 178
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 179
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x10900fb

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 181
    const v2, 0x10203b3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusable(Z)V

    .line 258
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusableInTouchMode(Z)V

    .line 259
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setDescendantFocusability(I)V

    .line 262
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    return-void
.end method

.method private addMinTimer()V
    .registers 5

    .prologue
    .line 1021
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "addMinTimer()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_1a

    .line 1023
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1024
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1026
    .end local v0           #msg:Landroid/os/Message;
    :cond_1a
    return-void
.end method

.method private init()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 328
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Controller Initiation Running!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const v2, 0x10203b8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 333
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 335
    const v2, 0x10203bd

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    .line 336
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 337
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 339
    const v2, 0x10203b4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    .line 340
    const v2, 0x10203b6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    .line 341
    const v2, 0x10203b5

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    .line 342
    const v2, 0x10203b7

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    .line 345
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 346
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 449
    const v2, 0x10203bc

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    .line 450
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 471
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 535
    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 564
    .local v1, nextKeyListener:Landroid/view/View$OnKeyListener;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 566
    const v2, 0x10203ba

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    .line 567
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 653
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    .line 682
    .local v0, beforeKeyListener:Landroid/view/View$OnKeyListener;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 684
    const v2, 0x10203bb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    .line 685
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$11;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "at init() send broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 704
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    .line 705
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 706
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 707
    return-void
.end method

.method private removeMinTimer()V
    .registers 4

    .prologue
    const/16 v2, 0x12c1

    .line 1015
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "removeMinTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1018
    :cond_16
    return-void
.end method

.method private resetMinTimer()V
    .registers 3

    .prologue
    .line 1029
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "resetMinTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 1031
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 1032
    return-void
.end method

.method private setMaxLayout(I)V
    .registers 7
    .parameter "value"

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 949
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "setMaxLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_10

    .line 978
    :goto_f
    return-void

    .line 955
    :cond_10
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 958
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 960
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 961
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 964
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_42

    .line 965
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 971
    :goto_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 974
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 977
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    goto :goto_f

    .line 967
    :cond_42
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    goto :goto_29
.end method

.method private setMinLayout()V
    .registers 5

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 981
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "setMinLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_f

    .line 1011
    :goto_e
    return-void

    .line 987
    :cond_f
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 990
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 992
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 998
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3c

    .line 999
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 1002
    :cond_3c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_58

    .line 1003
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 1008
    :goto_46
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_e

    .line 1005
    :cond_58
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    goto :goto_46
.end method

.method private startTranslateAnimation(III)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 937
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "startTranslateAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v1, :cond_d

    .line 946
    :goto_c
    return-void

    .line 941
    :cond_d
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 942
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 943
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 944
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 945
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 760
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 763
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 765
    return-void
.end method

.method protected handleMediaUpdate(IILandroid/net/Uri;)V
    .registers 10
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "mediaUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 268
    const-string v4, "GlassLockScreenMusicWidget"

    const-string v5, "handleMediaUpdate !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-nez p3, :cond_c

    .line 292
    :goto_b
    return-void

    .line 271
    :cond_c
    if-ne p1, v2, :cond_29

    move v0, v2

    .line 272
    .local v0, bIsPlaying:Z
    :goto_f
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 273
    if-ne p2, v2, :cond_2b

    move v1, v2

    .line 275
    .local v1, bIsStop:Z
    :goto_14
    if-eqz v0, :cond_1d

    .line 276
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 280
    :cond_1d
    if-eqz v1, :cond_2d

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 282
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_b

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_29
    move v0, v3

    .line 271
    goto :goto_f

    .restart local v0       #bIsPlaying:Z
    :cond_2b
    move v1, v3

    .line 273
    goto :goto_14

    .line 286
    .restart local v1       #bIsStop:Z
    :cond_2d
    if-eqz v0, :cond_3b

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x10807e8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 291
    :goto_37
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_b

    .line 289
    :cond_3b
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x10807e9

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_37
.end method

.method protected handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "isPlaying"
    .parameter "hostType"
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 294
    const-string v4, "GlassLockScreenMusicWidget"

    const-string v5, "handleMediaUpdate 11!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-eqz p3, :cond_d

    if-nez p4, :cond_e

    .line 323
    :cond_d
    :goto_d
    return-void

    .line 299
    :cond_e
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 300
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 302
    if-ne p1, v2, :cond_2f

    move v0, v2

    .line 303
    .local v0, bIsPlaying:Z
    :goto_15
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 304
    if-nez p2, :cond_31

    move v1, v2

    .line 306
    .local v1, bIsStop:Z
    :goto_1a
    if-eqz v0, :cond_23

    .line 307
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 308
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 311
    :cond_23
    if-eqz v1, :cond_33

    .line 312
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 313
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_d

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_2f
    move v0, v3

    .line 302
    goto :goto_15

    .restart local v0       #bIsPlaying:Z
    :cond_31
    move v1, v3

    .line 304
    goto :goto_1a

    .line 317
    .restart local v1       #bIsStop:Z
    :cond_33
    if-eqz v0, :cond_41

    .line 318
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x10807e8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 322
    :goto_3d
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 320
    :cond_41
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x10807e9

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3d
.end method

.method public isControllerShowing()Z
    .registers 2

    .prologue
    .line 1074
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1070
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 710
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 712
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "onKeyDown at GlasslockScreenMusic()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1d

    .line 714
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startControllerAnimation()V

    .line 715
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "startControllerAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_1d
    const/16 v1, 0x18

    if-ne p1, v1, :cond_28

    .line 718
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "KEYCODE_VOLUME_UP()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_28
    const/16 v1, 0x19

    if-ne p1, v1, :cond_33

    .line 722
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "KEYCODE_VOLUME_DOWN()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_33
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 727
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "GlassLockScreenMusicWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown(): imm.isAccessoryKeyboardState()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_66

    .line 730
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 733
    :cond_66
    const/4 v1, 0x0

    return v1
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 751
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 757
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 737
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() isTopLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMaxLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 739
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHeightDifference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 743
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_64

    .line 744
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    .line 748
    :goto_63
    return-void

    .line 746
    :cond_64
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_63
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1079
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1083
    :goto_f
    return-void

    .line 1081
    :cond_10
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .registers 5
    .parameter "v"
    .parameter "intent"

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1087
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1091
    :goto_f
    return-void

    .line 1089
    :cond_10
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public setBottomLayout()V
    .registers 5

    .prologue
    const/16 v3, 0x50

    .line 781
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 782
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x1080766

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 783
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 784
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 785
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 788
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 789
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .registers 8
    .parameter "bIsVisible"
    .parameter "isMusicWidgetShowed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1049
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setControllerVisibility() : bIsVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mVisibleLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    if-nez p1, :cond_40

    move v0, v1

    :goto_29
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 1051
    if-eqz p1, :cond_42

    .line 1052
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    if-eqz v0, :cond_3f

    .line 1053
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-nez v0, :cond_3c

    .line 1054
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1055
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1057
    :cond_3c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 1067
    :cond_3f
    :goto_3f
    return-void

    :cond_40
    move v0, v2

    .line 1050
    goto :goto_29

    .line 1060
    :cond_42
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 1061
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_51

    .line 1062
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1063
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1065
    :cond_51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    goto :goto_3f
.end method

.method public setTopLayout()V
    .registers 5

    .prologue
    const/16 v3, 0x30

    .line 768
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 769
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x1080767

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 771
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 772
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 773
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 776
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 777
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    return-void
.end method

.method public startControllerAnimation()V
    .registers 3

    .prologue
    .line 1035
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "startControllerAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 1037
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v0, :cond_12

    .line 1038
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    .line 1046
    :goto_11
    return-void

    .line 1040
    :cond_12
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1d

    .line 1041
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_11

    .line 1043
    :cond_1d
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_11
.end method

.method public updateMediaPlayer(Landroid/net/Uri;)V
    .registers 19
    .parameter "mediaUri"

    .prologue
    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v14

    .line 794
    .local v14, mScreenOn:Z
    const-string v2, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    if-nez v14, :cond_33

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 901
    :goto_32
    return-void

    .line 800
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-eqz v2, :cond_79

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    if-nez v2, :cond_79

    .line 801
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v2, :cond_6f

    .line 802
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    .line 806
    :goto_4f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 814
    :goto_54
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "updateMediaPlayer()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 817
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "mediaUri is same return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 804
    :cond_6f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_4f

    .line 808
    :cond_79
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v2, :cond_88

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_54

    .line 811
    :cond_88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_54

    .line 821
    :cond_91
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 825
    .local v11, mCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1f0

    .line 826
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_19b

    .line 827
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 829
    :try_start_b0
    const-string v2, "title"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 831
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 833
    const-string v2, "album_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;
    :try_end_da
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b0 .. :try_end_da} :catch_18e

    .line 845
    :goto_da
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 846
    .local v15, newTitleText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    const-string v2, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaPlayer() newTitleText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_178

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/audio/albumart/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 854
    .local v8, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 855
    .local v13, mInputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 856
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 857
    .local v10, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 861
    :try_start_162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_169
    .catch Ljava/io/FileNotFoundException; {:try_start_162 .. :try_end_169} :catch_1af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_162 .. :try_end_169} :catch_1b8

    move-result-object v13

    .line 868
    :goto_16a
    if-eqz v13, :cond_178

    .line 869
    const/4 v2, 0x0

    invoke-static {v13, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 872
    :try_start_175
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_178} :catch_1c4

    .line 880
    .end local v8           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_178
    :goto_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1cd

    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 900
    .end local v15           #newTitleText:Ljava/lang/CharSequence;
    :cond_189
    :goto_189
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_32

    .line 835
    :catch_18e
    move-exception v9

    .line 836
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 837
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Can\'t get String from Cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da

    .line 840
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_19b
    const-string v2, "Unknown"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 841
    const-string v2, "Unknown"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 842
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    goto/16 :goto_da

    .line 862
    .restart local v8       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v10       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #mInputStream:Ljava/io/InputStream;
    .restart local v15       #newTitleText:Ljava/lang/CharSequence;
    :catch_1af
    move-exception v9

    .line 863
    .local v9, e:Ljava/io/FileNotFoundException;
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Album Art doesn\'t exit."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a

    .line 864
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_1b8
    move-exception v9

    .line 865
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 866
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Maybe unknown url."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a

    .line 873
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_1c4
    move-exception v9

    .line 874
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "mInputStream.close() Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178

    .line 883
    .end local v8           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_189

    .line 885
    const/16 v2, 0x8

    new-array v12, v2, [I

    fill-array-data v12, :array_200

    .line 891
    .local v12, mDefaultAlbumAriId:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    array-length v3, v12

    rem-int/2addr v2, v3

    aget v16, v12, v2

    .line 892
    .local v16, randomAlbumArtId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_189

    .line 896
    .end local v12           #mDefaultAlbumAriId:[I
    .end local v15           #newTitleText:Ljava/lang/CharSequence;
    .end local v16           #randomAlbumArtId:I
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 897
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_189

    .line 885
    nop

    :array_200
    .array-data 0x4
        0x6bt 0x7t 0x8t 0x1t
        0x6ct 0x7t 0x8t 0x1t
        0x6dt 0x7t 0x8t 0x1t
        0x6et 0x7t 0x8t 0x1t
        0x6ft 0x7t 0x8t 0x1t
        0x70t 0x7t 0x8t 0x1t
        0x71t 0x7t 0x8t 0x1t
        0x72t 0x7t 0x8t 0x1t
    .end array-data
.end method

.method public updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 905
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 906
    .local v0, mScreenOn:Z
    const-string v2, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    if-nez v0, :cond_2d

    .line 908
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 909
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 933
    :goto_2c
    return-void

    .line 912
    :cond_2d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-eqz v2, :cond_6f

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    if-nez v2, :cond_6f

    .line 913
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v2, :cond_69

    .line 914
    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    .line 918
    :goto_3f
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 927
    :goto_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, newTitleText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2c

    .line 916
    .end local v1           #newTitleText:Ljava/lang/CharSequence;
    :cond_69
    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_3f

    .line 920
    :cond_6f
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v2, :cond_79

    .line 921
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_41

    .line 923
    :cond_79
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_41
.end method
