.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;
.super Ljava/lang/Thread;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceEngineThread"
.end annotation


# instance fields
.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_QUIT_LOOPER:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private mHandler:Landroid/os/Handler;

.field private mVoiceVerifyStarted:Z

.field private mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 3
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    .line 201
    const-string v0, "VoiceEngineThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_INIT_WAKEUP_CMD:I

    .line 195
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_START_VERIFY_CMD:I

    .line 196
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_TERMINATE_VERIFY_CMD:I

    .line 197
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_DESTROY_WAKEUP_CMD:I

    .line 198
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->MSG_QUIT_LOOPER:I

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Lcom/samsung/wakeup/WakeUpCmdRecognizer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mVoiceVerifyStarted:Z

    return p1
.end method


# virtual methods
.method public quit()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 208
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->wakeUpInit()V

    .line 274
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 276
    return-void
.end method

.method public wakeUpDestroy()V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    return-void
.end method

.method public wakeUpInit()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    return-void
.end method

.method public wakeUpStartVerify()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    return-void
.end method

.method public wakeUpTerminateVerify()V
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceEngineThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    return-void
.end method
