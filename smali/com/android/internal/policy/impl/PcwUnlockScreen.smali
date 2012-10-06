.class public Lcom/android/internal/policy/impl/PcwUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "PcwUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;


# static fields
.field private static final DBG:Z = true

.field public static final PCW_UNLOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

.field private static final TAG:Ljava/lang/String; = "PcwUnlockScreen"


# instance fields
.field ad:Landroid/app/AlertDialog;

.field errorDlg:Landroid/app/AlertDialog;

.field private mCall:Landroid/widget/Button;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancel:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEmergencyCall:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mLockMessage:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockstr:Landroid/widget/TextView;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mPhoneNumer:Landroid/widget/TextView;

.field private mPhoneowner:Landroid/widget/TextView;

.field private mUnlock:Landroid/widget/Button;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private phoneNumber:Ljava/lang/String;

.field pwdDialog:Landroid/app/AlertDialog$Builder;

.field private r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 14
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    .line 86
    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    .line 88
    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    .line 96
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v4, Lcom/android/internal/policy/impl/PcwUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PcwUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->r:Ljava/lang/Runnable;

    .line 108
    iput-object p1, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    .line 109
    iput-object p5, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 110
    iput-object p4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 111
    iput-object p3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCreationOrientation:I

    .line 114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 117
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_fc

    .line 118
    const v4, 0x10900ff

    invoke-virtual {v2, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    :goto_34
    const v4, 0x10203c1

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockstr:Landroid/widget/TextView;

    .line 124
    const v4, 0x10203c3

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    .line 126
    const v4, 0x10203c5

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    .line 128
    const v4, 0x10202ae

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 129
    const v4, 0x10203c6

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    .line 132
    const-string v4, "PcwUnlockScreen"

    const-string v5, "create PcwUnlockScreen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, LockMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x1040444

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, btnText:Ljava/lang/String;
    const-string v3, "\n"

    .line 140
    .local v3, newLine:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_phone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    .line 142
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_98

    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_104

    .line 143
    :cond_98
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_a4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_Message"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_b8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_128

    .line 154
    :cond_b8
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_bf
    const-string v4, "PcwUnlockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "btnText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLockMessage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPcwInfoCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;)V

    .line 168
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->setFocusable(Z)V

    .line 170
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 172
    return-void

    .line 120
    .end local v0           #LockMessage:Ljava/lang/String;
    .end local v1           #btnText:Ljava/lang/String;
    .end local v3           #newLine:Ljava/lang/String;
    :cond_fc
    const v4, 0x10900fe

    invoke-virtual {v2, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_34

    .line 146
    .restart local v0       #LockMessage:Ljava/lang/String;
    .restart local v1       #btnText:Ljava/lang/String;
    .restart local v3       #newLine:Ljava/lang/String;
    :cond_104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a4

    .line 156
    :cond_128
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bf
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PcwUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PcwUnlockScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PcwUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PcwUnlockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PcwUnlockScreen;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PcwUnlockScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 176
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 178
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    if-ne p1, v4, :cond_26

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    const-string v5, "tel"

    iget-object v6, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 295
    .end local v1           #intent:Landroid/content/Intent;
    :cond_25
    :goto_25
    return-void

    .line 184
    :cond_26
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v4, :cond_30

    .line 185
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_25

    .line 186
    :cond_30
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    if-ne p1, v4, :cond_25

    .line 187
    const/4 v3, 0x0

    .line 189
    .local v3, unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 190
    .local v0, inflater2:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x10900fc

    invoke-static {v4, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 192
    .local v2, layout:Landroid/view/View;
    const v4, 0x10203be

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 193
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    new-instance v5, Lcom/android/internal/policy/impl/PcwUnlockScreen$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PcwUnlockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    if-nez v4, :cond_65

    .line 210
    const-string v4, "PcwUnlockScreen"

    const-string v5, "findViewById: mPassword = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 215
    :cond_65
    const-string v4, "PcwUnlockScreen"

    const-string v5, "Create PCWPassword Dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    .line 218
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v6, 0x1040447

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 219
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 220
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/android/internal/policy/impl/PcwUnlockScreen$3;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PcwUnlockScreen;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x104

    new-instance v6, Lcom/android/internal/policy/impl/PcwUnlockScreen$4;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/PcwUnlockScreen;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 277
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    if-eqz v4, :cond_b0

    .line 278
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 280
    :cond_b0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    .line 281
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 282
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 285
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    new-instance v5, Lcom/android/internal/policy/impl/PcwUnlockScreen$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/PcwUnlockScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_25
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 305
    return-void
.end method

.method public onPcwInfoChanged()V
    .registers 7

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, LockMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pcw_phone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    .line 323
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040444

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, btnText:Ljava/lang/String;
    const-string v2, "\n"

    .line 325
    .local v2, newLine:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 328
    :cond_37
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :goto_43
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pcw_Message"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 339
    :cond_57
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_5e
    const-string v3, "PcwUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btnText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLockMessage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 331
    :cond_81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 333
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_43

    .line 341
    :cond_a0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5e
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 310
    return-void
.end method
