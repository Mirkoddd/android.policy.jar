.class public Lcom/android/internal/policy/impl/ClockWidget;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ClockWidget$Charge;,
        Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;,
        Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;,
        Lcom/android/internal/policy/impl/ClockWidget$Weather;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field public static final SIM_PIN_MODE:Ljava/lang/String; = "ril.pin_mode"

.field private static final TAG:Ljava/lang/String; = "ClockWidget"

.field private static mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# instance fields
.field private mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

.field private mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

.field private mCreationOrientation:I

.field private mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "configuration"

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76
    sput-object p2, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 77
    iget v2, p3, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCreationOrientation:I

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6c

    .line 82
    const v2, 0x10900f8

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    :goto_19
    const v2, 0x1020398

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    .line 91
    const v2, 0x1020399

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    .line 92
    const v2, 0x102039b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    .line 93
    const v2, 0x102039c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ClockWidget$Weather;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    .line 94
    const v2, 0x10203a5

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ClockWidget$Charge;

    iput-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    .line 97
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isPLMNEnable()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 104
    :goto_56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_clock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_7a

    .line 107
    .local v1, showClock:Z
    :goto_62
    if-nez v1, :cond_6b

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 108
    :cond_6b
    return-void

    .line 86
    .end local v1           #showClock:Z
    :cond_6c
    const v2, 0x10900f9

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_19

    .line 100
    :cond_73
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->setVisibility(I)V

    goto :goto_56

    .line 104
    :cond_7a
    const/4 v1, 0x0

    goto :goto_62
.end method

.method static synthetic access$400()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .registers 1

    .prologue
    .line 121
    return-void
.end method

.method public getRootLayout()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 161
    const-string v0, ""

    .line 163
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v1, "ClockWidget"

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

    .line 165
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 927
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget;->setBatteryInfo()V

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->updateWeatherInfo()V

    .line 115
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 3
    .parameter "simState"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 923
    return-void
.end method

.method public refreshBatteryInfo(ZZI)V
    .registers 5
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 134
    return-void
.end method

.method public setBatteryInfo()V
    .registers 5

    .prologue
    .line 142
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    .line 143
    .local v2, showBatteryInfo:Z
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v1

    .line 144
    .local v1, pluggedIn:Z
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 147
    .local v0, batteryLevel:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 148
    return-void
.end method
