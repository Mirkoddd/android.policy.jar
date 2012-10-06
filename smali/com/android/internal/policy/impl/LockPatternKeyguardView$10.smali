.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;
.super Lcom/android/internal/policy/IFaceLockCallback$Stub;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 2
    .parameter

    .prologue
    .line 2135
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Lcom/android/internal/policy/IFaceLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 2164
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2166
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2167
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2168
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->wakeUpTerminateVerify()V

    .line 2169
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeWakeupCmdDisplayMessages()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2171
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2172
    return-void
.end method

.method public exposeFallback()V
    .registers 3

    .prologue
    .line 2192
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock exposeFallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2194
    return-void
.end method

.method public pokeWakelock()V
    .registers 3

    .prologue
    .line 2199
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock pokeWakelock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 2201
    return-void
.end method

.method public reportFailedAttempt()V
    .registers 3

    .prologue
    .line 2178
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock reportFailedAttempt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2708(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I

    .line 2180
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2181
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2182
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2183
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->wakeUpTerminateVerify()V

    .line 2184
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeWakeupCmdDisplayMessages()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2186
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2187
    return-void
.end method

.method public unlock()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2140
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "FaceLock unlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2142
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2144
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVoiceUnlockOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2145
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceUnlocked:Z

    .line 2146
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWakeUnlocked:Z

    if-nez v0, :cond_43

    .line 2147
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 2148
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2151
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mVoiceEngineThread:Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->wakeUpStartVerify()V

    .line 2152
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const-wide/16 v1, 0xfa0

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->displayStartVerifyMsgWithTimeout(J)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;J)V

    .line 2158
    :goto_42
    return-void

    .line 2156
    :cond_43
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 2157
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    goto :goto_42
.end method
