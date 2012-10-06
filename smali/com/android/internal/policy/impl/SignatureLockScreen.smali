.class public Lcom/android/internal/policy/impl/SignatureLockScreen;
.super Landroid/widget/FrameLayout;
.source "SignatureLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SignatureLockScreen$ReorderLayout;,
        Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;,
        Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_TOUCH:Z = false

.field private static final MAX_SIGNATURE_ATTEMPTS:I = 0x2

.field private static final REGISTRED_SIGNATURE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SignatureLockScreen"

.field private static mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;


# instance fields
.field private mBoundToSignService:Z

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEngineStarted:Z

.field private mFailedAttempts:I

.field private mGuideText:Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mSignView:Lcom/android/internal/widget/SignView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVerificationLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->DBG_TOUCH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 19
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;

    .line 422
    new-instance v1, Lcom/android/internal/policy/impl/SignatureLockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SignatureLockScreen$1;-><init>(Lcom/android/internal/policy/impl/SignatureLockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    .line 96
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 97
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 98
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 99
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCreationOrientation:I

    .line 103
    const/4 v12, 0x0

    .line 104
    .local v12, statementString:Ljava/lang/String;
    :try_start_2a
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {v8, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 105
    .local v8, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v12

    .line 106
    const-string v1, "SignatureLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentLockScreenString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const v1, 0x10202d0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 109
    .local v11, statement:Landroid/widget/TextView;
    if-eqz v11, :cond_67

    .line 110
    if-eqz v12, :cond_101

    .line 111
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_67} :catch_108

    .line 124
    .end local v8           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v11           #statement:Landroid/widget/TextView;
    :cond_67
    :goto_67
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->setFocusable(Z)V

    .line 125
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->setFocusableInTouchMode(Z)V

    .line 126
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->setDescendantFocusability(I)V

    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 129
    .local v10, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_127

    .line 131
    const v1, 0x1090063

    const/4 v2, 0x1

    invoke-virtual {v10, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 141
    :goto_84
    const v1, 0x10202e9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mRootLayout:Landroid/widget/FrameLayout;

    .line 144
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget;

    move-object/from16 v0, p4

    invoke-direct {v1, p1, v0, p2}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    .line 145
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->addAndLayoutClockWidget()V

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unlock_text"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_130

    const/4 v9, 0x1

    .line 150
    .local v9, helpTextEnabled:Z
    :goto_ac
    if-eqz v9, :cond_133

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040662

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    .line 155
    :goto_bd
    const v1, 0x10202e8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v6, 0x1

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 163
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 170
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mFailedAttempts:I

    .line 172
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->initSignView(Landroid/content/Context;)V

    .line 175
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    if-nez v1, :cond_100

    .line 176
    const-string v1, "SignatureLockScreen"

    const-string v2, "sign service is called from constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->bindToSignatureLock()V

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 180
    :cond_100
    return-void

    .line 116
    .end local v9           #helpTextEnabled:Z
    .end local v10           #inflater:Landroid/view/LayoutInflater;
    .restart local v8       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v11       #statement:Landroid/widget/TextView;
    :cond_101
    const/16 v1, 0x8

    :try_start_103
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_108

    goto/16 :goto_67

    .line 119
    .end local v8           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v11           #statement:Landroid/widget/TextView;
    :catch_108
    move-exception v7

    .line 120
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "SignatureLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MDM Exception Statement :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67

    .line 134
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #inflater:Landroid/view/LayoutInflater;
    :cond_127
    const v1, 0x1090064

    const/4 v2, 0x1

    invoke-virtual {v10, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_84

    .line 148
    :cond_130
    const/4 v9, 0x0

    goto/16 :goto_ac

    .line 153
    .restart local v9       #helpTextEnabled:Z
    :cond_133
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    goto :goto_bd
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SignatureLockScreen;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SignatureLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/internal/policy/impl/SignatureLockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mFailedAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/SignatureLockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/SignatureLockScreen;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SignatureLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/SignatureLockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SignatureLockScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    sput-object p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    return-object p0
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->DBG_TOUCH:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private addAndLayoutClockWidget()V
    .registers 13

    .prologue
    const v11, 0x10202e7

    const/16 v10, 0x10

    const/16 v9, 0x30

    const/16 v8, 0x50

    .line 217
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "clock_position"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 219
    .local v2, clockPosition:I
    const-string v5, "SignatureLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clock position from setting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const v5, 0x10202ea

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 222
    .local v1, clockContainer:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 223
    .local v4, lpClock:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 224
    .local v0, bottom:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 226
    .local v3, lpBottom:Landroid/widget/FrameLayout$LayoutParams;
    packed-switch v2, :pswitch_data_b0

    .line 260
    :goto_4c
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 264
    return-void

    .line 229
    :pswitch_58
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 230
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 231
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 232
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    goto :goto_4c

    .line 236
    :pswitch_6b
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 237
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 238
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 239
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v5, v10}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    goto :goto_4c

    .line 243
    :pswitch_7e
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 244
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 245
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 248
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 251
    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x1090062

    iget-object v7, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 254
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bottom:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 255
    .restart local v0       #bottom:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #lpBottom:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    .restart local v3       #lpBottom:Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4c

    .line 226
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_58
        :pswitch_6b
        :pswitch_7e
    .end packed-switch
.end method

.method private initSignView(Landroid/content/Context;)V
    .registers 16
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 183
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 185
    const v0, 0x10202eb

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SignView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    .line 187
    const/16 v0, 0x15

    new-array v13, v0, [I

    .line 188
    .local v13, properties:[I
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/LockPatternUtils;->getLockSignatureCorrnidates([I)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v0}, Lcom/android/internal/widget/SignView;->setVerifySign()V

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_signature_verification_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mVerificationLevel:I

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    iget v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mVerificationLevel:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setVerificationLevel(I)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x7

    aget v2, v13, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSettingInputType(I)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x6

    aget v2, v13, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setStrokeCount(I)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSignatureVisible(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    new-instance v2, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/SignatureLockScreen;Lcom/android/internal/policy/impl/SignatureLockScreen$1;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 207
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/16 v0, 0x8

    aget v0, v13, v0

    if-ne v0, v1, :cond_9b

    move v0, v1

    :goto_62
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SignView;->enableBezierCurve(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/16 v1, 0x9

    aget v1, v13, v1

    const/16 v2, 0xa

    aget v2, v13, v2

    const/16 v3, 0xb

    aget v3, v13, v3

    const/16 v4, 0xc

    aget v4, v13, v4

    const/16 v5, 0xd

    aget v5, v13, v5

    const/16 v6, 0xe

    aget v6, v13, v6

    const/16 v7, 0xf

    aget v7, v13, v7

    const/16 v8, 0x10

    aget v8, v13, v8

    const/16 v9, 0x11

    aget v9, v13, v9

    const/16 v10, 0x12

    aget v10, v13, v10

    const/16 v11, 0x13

    aget v11, v13, v11

    const/16 v12, 0x14

    aget v12, v13, v12

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/widget/SignView;->setThresholdValues(IIIIIIIIIIII)V

    .line 214
    return-void

    .line 207
    :cond_9b
    const/4 v0, 0x0

    goto :goto_62
.end method


# virtual methods
.method public bindToSignatureLock()V
    .registers 5

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 420
    return-void
.end method

.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 340
    const-string v0, "SignatureLockScreen"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    .line 343
    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 347
    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    if-eqz v0, :cond_27

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 353
    :cond_27
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/16 v4, 0x1f4

    const/4 v1, 0x0

    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->isShown()Z

    move-result v2

    if-nez v2, :cond_d

    .line 281
    :goto_c
    return v1

    .line 273
    :cond_d
    const-string v0, ""

    .line 274
    .local v0, text:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_2f

    .line 278
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 280
    :cond_2f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public isSignatureRecognitionFailed()Z
    .registers 3

    .prologue
    .line 466
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .registers 1

    .prologue
    .line 408
    return-void
.end method

.method public onCmasRecieved()V
    .registers 1

    .prologue
    .line 415
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 1

    .prologue
    .line 413
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 310
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 316
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 320
    :cond_45
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 2
    .parameter "phoneState"

    .prologue
    .line 402
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 7
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 359
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 362
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 373
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 377
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 325
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 331
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    if-nez v0, :cond_40

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->bindToSignatureLock()V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 335
    :cond_40
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 391
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 3
    .parameter "simState"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 382
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .registers 3
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 386
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 368
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    .line 304
    :cond_7
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 291
    :pswitch_9
    sget-boolean v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->DBG_TOUCH:Z

    if-eqz v0, :cond_2d

    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN, ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2d
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    if-ne v0, v1, :cond_7

    .line 294
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    goto :goto_7

    .line 300
    :pswitch_38
    sget-boolean v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->DBG_TOUCH:Z

    if-eqz v0, :cond_7

    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 289
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_9
        :pswitch_38
        :pswitch_7
        :pswitch_38
    .end packed-switch
.end method
