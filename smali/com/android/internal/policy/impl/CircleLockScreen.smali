.class public Lcom/android/internal/policy/impl/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mComponentBox:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mHelpText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissedEventWidget:Landroid/view/View;

.field private mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

.field private mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShadowImage:Landroid/widget/ImageView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 20
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v9, "CircleLockScreen"

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 63
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 91
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 92
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 93
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    move-object/from16 v0, p2

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    .line 98
    const/4 v8, 0x0

    .line 99
    .local v8, statementString:Ljava/lang/String;
    :try_start_1f
    new-instance v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v3, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 100
    .local v3, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v8

    .line 101
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCurrentLockScreenString() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const v9, 0x10202d0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 104
    .local v7, statement:Landroid/widget/TextView;
    if-eqz v7, :cond_5c

    .line 105
    if-eqz v8, :cond_1a9

    .line 106
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5c} :catch_1b0

    .line 120
    .end local v3           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v7           #statement:Landroid/widget/TextView;
    :cond_5c
    :goto_5c
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusable(Z)V

    .line 121
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 122
    const/high16 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/CircleLockScreen;->setDescendantFocusability(I)V

    .line 128
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 131
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    .line 132
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 135
    new-instance v9, Lcom/android/internal/policy/impl/CircleUnlockView;

    move-object/from16 v0, p5

    invoke-direct {v9, p1, v0}, Lcom/android/internal/policy/impl/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    .line 136
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    new-instance v10, Lcom/android/internal/policy/impl/CircleLockScreen$1;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V

    .line 157
    new-instance v9, Lcom/android/internal/policy/impl/ClockWidget;

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-direct {v9, p1, v0, v1}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    .line 160
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v5

    .line 161
    .local v5, isNewMissedWidgetIsUsed:Z
    if-eqz v5, :cond_1cf

    .line 162
    new-instance v9, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    move-object/from16 v0, p5

    invoke-direct {v9, v10, v11, v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    .line 168
    :goto_b0
    new-instance v9, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-direct {v9, v10, v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    .line 169
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 170
    new-instance v9, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-direct {v9, p1, v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    .line 171
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    .line 175
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    .line 176
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 177
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v10, 0x1080780

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    .line 181
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const v10, 0x106000c

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const/16 v10, 0xb2

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 183
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 187
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const v10, 0x1040626

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    const/high16 v13, -0x100

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 189
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const v10, -0x141415

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v10, 0x2

    const/high16 v11, 0x41a8

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->density:F

    .line 192
    .local v6, scale:F
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/high16 v11, 0x4160

    mul-float/2addr v11, v6

    float-to-int v11, v11

    const/4 v12, 0x0

    const/high16 v13, 0x4160

    mul-float/2addr v13, v6

    float-to-int v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 193
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v10, 0x51

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "unlock_text"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1e0

    const/4 v4, 0x1

    .line 197
    .local v4, isHelpTextEnabled:Z
    :goto_164
    if-eqz v4, :cond_1e2

    .line 198
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_16c
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->setComponentLayout(Landroid/content/Context;)V

    .line 205
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 206
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 207
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 208
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 209
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/CircleLockScreen;->addView(Landroid/view/View;)V

    .line 212
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 213
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 216
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 217
    return-void

    .line 112
    .end local v4           #isHelpTextEnabled:Z
    .end local v5           #isNewMissedWidgetIsUsed:Z
    .end local v6           #scale:F
    .restart local v3       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v7       #statement:Landroid/widget/TextView;
    :cond_1a9
    const/16 v9, 0x8

    :try_start_1ab
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1ae} :catch_1b0

    goto/16 :goto_5c

    .line 115
    .end local v3           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v7           #statement:Landroid/widget/TextView;
    :catch_1b0
    move-exception v2

    .line 116
    .local v2, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDM Exception Statement :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 164
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #isNewMissedWidgetIsUsed:Z
    :cond_1cf
    new-instance v9, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    move-object/from16 v0, p5

    invoke-direct {v9, v10, v11, v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_b0

    .line 195
    .restart local v6       #scale:F
    :cond_1e0
    const/4 v4, 0x0

    goto :goto_164

    .line 200
    .restart local v4       #isHelpTextEnabled:Z
    :cond_1e2
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16c
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method private bedimBackground(Z)V
    .registers 5
    .parameter "on"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 348
    if-eqz p1, :cond_24

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    .line 353
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 356
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :goto_23
    return-void

    .line 361
    :cond_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3e

    .line 362
    :cond_34
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 365
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_23
.end method

.method private setComponentLayout(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 236
    iget v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    if-eq v4, v6, :cond_14b

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_position"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 242
    .local v1, layoutPosition:I
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clock position from setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_30
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v3, mBlankLayout:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v0, blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 249
    packed-switch v1, :pswitch_data_16a

    .line 344
    .end local v0           #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #layoutPosition:I
    .end local v3           #mBlankLayout:Landroid/widget/FrameLayout;
    :goto_3f
    return-void

    .line 253
    .restart local v0       #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #layoutPosition:I
    .restart local v3       #mBlankLayout:Landroid/widget/FrameLayout;
    :pswitch_40
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x1080780

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 259
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 260
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 263
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->setMiddleLayout(Z)V

    .line 264
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 271
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setBottomLayout()V

    .line 272
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setBottomLayout()V

    .line 274
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 275
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_3f

    .line 277
    :cond_90
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_3f

    .line 283
    :pswitch_98
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x1080781

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 288
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    .line 290
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 291
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 297
    :goto_b9
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 298
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 299
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->setMiddleLayout(Z)V

    .line 301
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 304
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_3f

    .line 293
    :cond_ea
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_b9

    .line 309
    :pswitch_f2
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x108077f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 314
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    .line 316
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v4

    if-eqz v4, :cond_143

    .line 317
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 321
    :goto_113
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 324
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->setMiddleLayout(Z)V

    .line 325
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 331
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 332
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_3f

    .line 319
    :cond_143
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_113

    .line 338
    .end local v0           #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #layoutPosition:I
    .end local v3           #mBlankLayout:Landroid/widget/FrameLayout;
    :cond_14b
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 339
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 340
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3f

    .line 249
    nop

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_40
        :pswitch_98
        :pswitch_f2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->cleanUp()V

    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->cleanUp()V

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->cleanUp()V

    .line 431
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_21

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 500
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_21

    .line 501
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_21

    .line 502
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 507
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_21
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/16 v4, 0x1f4

    const/4 v2, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    .line 230
    :goto_d
    return v1

    .line 225
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->getTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, text:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_43

    .line 227
    invoke-interface {v0, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 229
    :cond_43
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .registers 1

    .prologue
    .line 474
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 490
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 389
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 395
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 399
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onPause()V

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->onPause()V

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onPause()V

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->onPause()V

    .line 386
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 2
    .parameter "phoneState"

    .prologue
    .line 471
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 5
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 449
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 403
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v3, "onResume()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onResume()V

    .line 405
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->onResume()V

    .line 406
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    .line 407
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onResume()V

    .line 408
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->onResume()V

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "unlock_text"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_3e

    .line 412
    .local v0, isHelpTextEnabled:Z
    :goto_36
    if-eqz v0, :cond_40

    .line 413
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    :goto_3d
    return-void

    .end local v0           #isHelpTextEnabled:Z
    :cond_3e
    move v0, v2

    .line 410
    goto :goto_36

    .line 415
    .restart local v0       #isHelpTextEnabled:Z
    :cond_40
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3d
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 466
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 3
    .parameter "simState"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 486
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 455
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setScreenOff()V
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setScreenOff()V

    .line 441
    return-void
.end method

.method public setScreenOn()V
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setScreenOn()V

    .line 436
    return-void
.end method
