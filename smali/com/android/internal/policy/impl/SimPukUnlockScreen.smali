.class public Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field static final TAG:Ljava/lang/String; = "SimPukUnlockScreen"


# instance fields
.field private enableEmergencyCall:Z

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mDelPinButton:Landroid/view/View;

.field private mDelPukButton:Landroid/view/View;

.field private mEmergencyCallButton:Landroid/widget/TextView;

.field private mFocusedEntry:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLastNumber:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockinfoText:Landroid/widget/TextView;

.field private mOkButton:Landroid/view/View;

.field private mPinText:Landroid/widget/TextView;

.field private mPukHandler:Landroid/os/Handler;

.field private mPukText:Landroid/widget/TextView;

.field private mSavedNewPin:Ljava/lang/String;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

.field private mTelstraText:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 15
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v1, 0x0

    const/high16 v8, -0x100

    const/4 v7, 0x1

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    .line 92
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    .line 93
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->enableEmergencyCall:Z

    .line 100
    sget-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSavedNewPin:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 108
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    .line 111
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    .line 112
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 113
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 116
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v0, v7, :cond_e7

    .line 117
    const v0, 0x1090059

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 131
    :goto_3b
    const v0, 0x10202d4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 132
    const v0, 0x10202d6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    .line 133
    const v0, 0x10202e0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    .line 134
    const v0, 0x10202d7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 135
    const v0, 0x10202e1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    .line 136
    const v0, 0x10202d1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    .line 137
    const v0, 0x10202b4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x104039a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 156
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->enableEmergencyCall:Z

    .line 159
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->enableEmergencyCall:Z

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V

    .line 173
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setBackgroundColor(I)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->forceHideSoftInput(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->forceHideSoftInput(Z)V

    .line 176
    return-void

    .line 124
    :cond_e7
    const v0, 0x109005a

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V

    goto/16 :goto_3b
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkPuk()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, v2, :cond_21

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 428
    :goto_20
    return-void

    .line 389
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3a

    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_4d

    .line 392
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    goto :goto_20

    .line 398
    :cond_4d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 400
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->start()V

    goto :goto_20
.end method

.method private getSimLockInfoResult()I
    .registers 5

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, result:I
    :try_start_1
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPukRetry()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_28

    move-result v0

    .line 199
    :goto_f
    const-string v1, "SimPukUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimLockInfoResult(): num_of_retry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v0

    .line 197
    :catch_28
    move-exception v1

    goto :goto_f
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_32

    .line 368
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10403c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 376
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .registers 4
    .parameter "digit"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 464
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 230
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 179
    if-eqz p1, :cond_c

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 183
    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 483
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_1d

    .line 485
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 486
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "Layout issue break out condition, but execute workaround code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/16 v5, 0x8

    const v4, 0x104039c

    .line 272
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    if-ne p1, v2, :cond_2d

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-eq v2, v3, :cond_14

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 275
    :cond_14
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 276
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 277
    .local v1, len:I
    if-lez v1, :cond_25

    .line 278
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 356
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_25
    :goto_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 358
    return-void

    .line 280
    :cond_2d
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    if-ne p1, v2, :cond_4e

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-eq v2, v3, :cond_3c

    .line 282
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 283
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 284
    .restart local v0       #digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 285
    .restart local v1       #len:I
    if-lez v1, :cond_25

    .line 286
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_25

    .line 288
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_4e
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_52

    .line 309
    :cond_52
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    if-ne p1, v2, :cond_25

    .line 310
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    .line 314
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_128

    goto :goto_25

    .line 317
    :pswitch_6a
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v2, v5, :cond_99

    .line 319
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x10400f5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 320
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 322
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 325
    :cond_99
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_b2

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v5, :cond_d6

    .line 328
    :cond_b2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x10400f4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 329
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 331
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 333
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 335
    :cond_d6
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSavedNewPin:Ljava/lang/String;

    .line 336
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 337
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const v3, 0x104065a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 338
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 343
    :pswitch_f7
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSavedNewPin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_123

    .line 345
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x10400f3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 346
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 347
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 348
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 350
    :cond_123
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto/16 :goto_25

    .line 314
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_f7
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 496
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 497
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_f

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v0, v1, :cond_12

    .line 498
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateConfiguration()V

    .line 500
    :cond_12
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 362
    if-eqz p2, :cond_6

    .line 363
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    .line 364
    :cond_6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 432
    const/4 v4, 0x4

    if-ne p1, v4, :cond_16

    .line 433
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 434
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const v5, 0x104039c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 435
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 459
    :goto_15
    return v3

    .line 438
    :cond_16
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v2

    .line 439
    .local v2, match:C
    if-eqz v2, :cond_24

    .line 440
    add-int/lit8 v4, v2, -0x30

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    goto :goto_15

    .line 443
    :cond_24
    const/16 v4, 0x43

    if-ne p1, v4, :cond_46

    .line 444
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 445
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 446
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 447
    .local v1, len:I
    if-lez v1, :cond_3e

    .line 448
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 450
    :cond_3e
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x1388

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_15

    .line 454
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_46
    const/16 v4, 0x42

    if-ne p1, v4, :cond_4e

    .line 455
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto :goto_15

    .line 459
    :cond_4e
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 211
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 216
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x104039a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 219
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 221
    return-void
.end method

.method public setLockInfoText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 185
    const-string v0, "SimPukUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockInfoText(): num_of_retry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    if-ne v0, v3, :cond_3b

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040629

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_3a
    return-void

    .line 189
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104062a

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a
.end method

.method updateConfiguration()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 468
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 469
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 479
    :cond_14
    :goto_14
    return-void

    .line 470
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 471
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 472
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_33

    .line 474
    .local v0, isKeyboardOpen:Z
    :goto_23
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 475
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 472
    .end local v0           #isKeyboardOpen:Z
    :cond_33
    const/4 v0, 0x0

    goto :goto_23
.end method
