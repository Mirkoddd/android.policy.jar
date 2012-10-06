.class public Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;
.super Landroid/widget/LinearLayout;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$6;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private isMiddleLayout:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mIsLiveWallpaper:Z

.field private mMissedCall:Landroid/widget/LinearLayout;

.field private mMissedCallBackground:Landroid/widget/LinearLayout;

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsg:Landroid/widget/LinearLayout;

.field private mMissedMsgBackground:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mUpperLayout:Landroid/widget/RelativeLayout;

.field private mWaterlockHelpText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 12
    .parameter "context"
    .parameter "circleUnlockView"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 128
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->DEBUG:Z

    .line 58
    const-string v3, "com.android.phone"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->CALL_PKG:Ljava/lang/String;

    .line 60
    const-string v3, "com.android.mms"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    .line 62
    const-string v3, "com.android.email"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->EMAIL_PKG:Ljava/lang/String;

    .line 69
    const/16 v3, 0x12c2

    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MISSED_EVENT_UPDATE:I

    .line 71
    iput v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->REQ_INDEX_CALL_EMAIL:I

    .line 73
    const/16 v3, 0x7b

    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->REQ_INDEX_MSG:I

    .line 75
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 77
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 89
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->isMiddleLayout:Z

    .line 111
    sget-object v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    .line 115
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$1;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 133
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    .line 135
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 136
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 139
    .local v2, orientation:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_11e

    .line 140
    const-string v3, "CircleMissedEventWidget"

    const-string v6, "portrait mode"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const v3, 0x109004d

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 154
    :goto_53
    const v3, 0x102029d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    .line 156
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    const v3, 0x102029e

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    .line 160
    const v3, 0x10202a2

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    .line 162
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    const v3, 0x102029f

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    .line 168
    const v3, 0x10202a3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    .line 169
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    const v3, 0x10202a1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    .line 175
    const v3, 0x10202a5

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 176
    const v3, 0x102029c

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    .line 177
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen_wallpaper"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_12d

    move v3, v4

    :goto_df
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mIsLiveWallpaper:Z

    .line 186
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$3;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;)V

    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$5;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 298
    return-void

    .line 143
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_11e
    const-string v3, "CircleMissedEventWidget"

    const-string v6, "landscape mode"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const v3, 0x109004e

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_53

    :cond_12d
    move v3, v5

    .line 180
    goto :goto_df
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;)Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)I
    .registers 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 394
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 397
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_f

    .line 420
    :cond_e
    :goto_e
    return v1

    .line 400
    :cond_f
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_4a

    .line 401
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 408
    :cond_1b
    :goto_1b
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_66

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_66

    .line 410
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_e

    .line 402
    :cond_4a
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_59

    .line 403
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 404
    :cond_59
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_1b

    .line 405
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1b

    .line 413
    :cond_66
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v2, :cond_6e

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_e

    :cond_6e
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_e

    .line 416
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_e
.end method

.method private handleMissedEventUpdate()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 330
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V
    .registers 6
    .parameter "notiMode"

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v1, :cond_31

    .line 426
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_13

    .line 427
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 435
    :cond_13
    :goto_13
    if-eqz v0, :cond_30

    .line 437
    :try_start_15
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendintent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_30
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_15 .. :try_end_30} :catch_48

    .line 443
    :cond_30
    :goto_30
    return-void

    .line 429
    :cond_31
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v1, :cond_39

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v1, :cond_13

    .line 430
    :cond_39
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_13

    .line 431
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_13

    .line 439
    :catch_48
    move-exception v1

    goto :goto_30
.end method

.method private updateMissedEvent()V
    .registers 9

    .prologue
    const/16 v7, 0x3e7

    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 352
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 353
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 355
    .local v1, bUpdatedMsgCount:Z
    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v2

    .line 356
    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v3

    .line 358
    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-eq v2, v4, :cond_99

    .line 359
    const/4 v0, 0x1

    .line 360
    if-le v2, v7, :cond_96

    .line 361
    iput v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 368
    :goto_1b
    const-string v4, "CircleMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedCallCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-eq v3, v4, :cond_9e

    .line 372
    const/4 v1, 0x1

    .line 373
    if-le v3, v7, :cond_9b

    .line 374
    iput v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 381
    :goto_4e
    const-string v4, "CircleMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedMsgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-nez v1, :cond_7c

    if-eqz v0, :cond_92

    .line 385
    :cond_7c
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_92
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedIcons()V

    .line 390
    return-void

    .line 363
    :cond_96
    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    goto :goto_1b

    .line 365
    :cond_99
    const/4 v0, 0x0

    goto :goto_1b

    .line 376
    :cond_9b
    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    goto :goto_4e

    .line 378
    :cond_9e
    const/4 v1, 0x0

    goto :goto_4e
.end method

.method private updateMissedIcons()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 302
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-gtz v0, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v0, :cond_45

    .line 304
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v0, :cond_2f

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    :goto_1d
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v0, :cond_3a

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    :goto_2b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->invalidate()V

    .line 326
    return-void

    .line 310
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1d

    .line 317
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2b

    .line 321
    :cond_45
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2b
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 334
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    return-void
.end method

.method public getTTSMessage()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 446
    const-string v0, ""

    .line 448
    .local v0, TTSMessage:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v1, :cond_41

    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v1, :cond_41

    .line 449
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x10405db

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_28
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-object v0

    .line 451
    :cond_41
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-le v1, v5, :cond_59

    .line 452
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x10405d9

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 454
    :cond_59
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-le v1, v5, :cond_71

    .line 455
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x10405da

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 457
    :cond_71
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v1, v5, :cond_7f

    .line 458
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x10405d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 459
    :cond_7f
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-ne v1, v5, :cond_8d

    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x10405d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 462
    :cond_8d
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x10405d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 340
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 345
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 347
    return-void
.end method

.method public setMiddleLayout(Z)V
    .registers 2
    .parameter "isMiddle"

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->isMiddleLayout:Z

    .line 472
    return-void
.end method
