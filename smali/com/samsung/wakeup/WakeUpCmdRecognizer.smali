.class public Lcom/samsung/wakeup/WakeUpCmdRecognizer;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"


# static fields
.field static final AL_Enroll:I = 0x65

.field static final CHECK_Enroll_END:I = 0x67

.field static final CHECK_Enroll_START:I = 0x66

.field static final ENROLL_CNT:I = 0x4

.field static final NUM_MODELS:I = 0x6

.field private static isEnrollReady:Z = false

.field public static mExist:[I = null

.field public static final typeDefine:Ljava/lang/String; = "/mnt/sdcard/wakeup/typeDefine.bin"


# instance fields
.field public CommandNumber:S

.field public final ROOT:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public WType:I

.field private background_enroll:Ljava/lang/Thread;

.field public handler:Landroid/os/Handler;

.field public isEnableWakeUp:Z

.field private isRunning_all:Z

.field private isRunning_enroll:Z

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field public mDummyRecorder:Lcom/samsung/wakeup/AudioRecordHaydn;

.field private mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;

.field public mVElib:Lcom/samsung/wakeup/VoiceEngine;

.field public final m_UBMpath:Ljava/lang/String;

.field public final m_enStr3Path:Ljava/lang/String;

.field public final m_enStrPath:Ljava/lang/String;

.field public final m_lastEnroll:Ljava/lang/String;

.field public final m_modelStatusPath:Ljava/lang/String;

.field public final m_spkModelpath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mExist:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/wakeup/VoiceEngineResultListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->m_UBMpath:Ljava/lang/String;

    .line 17
    const-string v0, "/data/data/com.vlingo.client.samsung/spk_16k_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->m_spkModelpath:Ljava/lang/String;

    .line 18
    const-string v0, "/data/data/com.vlingo.client.samsung/enSTR_TRY_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->m_enStrPath:Ljava/lang/String;

    .line 19
    const-string v0, "/data/data/com.vlingo.client.samsung/modelStatus_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->m_modelStatusPath:Ljava/lang/String;

    .line 20
    const-string v0, "/data/data/com.vlingo.client.samsung/enSTR_3_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->m_enStr3Path:Ljava/lang/String;

    .line 21
    const-string v0, "/data/data/com.vlingo.client.samsung/lastEnrollUtt.pcm"

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->m_lastEnroll:Ljava/lang/String;

    .line 23
    const-string v0, "/data/data/com.vlingo.client.samsung/"

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 35
    iput-boolean v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 42
    iput-short v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->CommandNumber:S

    .line 44
    iput v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->WType:I

    .line 49
    iput-boolean v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    .line 51
    const-string v0, "WakeUpCmdRecognizer"

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    iput-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$1;

    invoke-direct {v0, p0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer$1;-><init>(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    .line 480
    new-instance v0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$3;

    invoke-direct {v0, p0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer$3;-><init>(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 57
    iput-object p1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;

    .line 58
    invoke-direct {p0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isUseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    .line 59
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableWakeUp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method private InitializeVerify()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, iResult:I
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.vlingo.client.samsung/enSTR_TRY_0.bin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, mFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    .line 371
    const/16 v2, -0xa

    .line 391
    :goto_11
    return v2

    .line 374
    :cond_12
    iget v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->WType:I

    if-nez v2, :cond_30

    .line 375
    iget-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECURE LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_30
    iget v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v5, :cond_4e

    .line 379
    iget-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NORMAL LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_4e
    iget v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->WType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6d

    .line 383
    iget-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOICE-TALK with Wtype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_6d
    iget-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v2}, Lcom/samsung/wakeup/VoiceEngine;->terminateVerify()I

    .line 387
    iget-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v3, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    const-string v4, "/data/data/com.vlingo.client.samsung/spk_16k_0.bin"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/wakeup/VoiceEngine;->initializeVerify(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 389
    iget-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v2, v5}, Lcom/samsung/wakeup/VoiceEngine;->setMode(I)V

    move v2, v0

    .line 391
    goto :goto_11
.end method

.method private StartVerify()I
    .registers 5

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/wakeup/VoiceEngine;->setMode(I)V

    .line 398
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v2, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/wakeup/VoiceEngine;->setAdaptationModelPath(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v2, "/data/data/com.vlingo.client.samsung/enSTR_TRY_0.bin"

    const-string v3, "/data/data/com.vlingo.client.samsung/enSTR_3_0.bin"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/wakeup/VoiceEngine;->startVerify(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VerifyResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/wakeup/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->startRecord()V

    .line 406
    return v0
.end method

.method private TerminateVerify()I
    .registers 3

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/wakeup/AudioRecordHaydn;

    if-eqz v1, :cond_a

    .line 414
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/wakeup/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->closeRecord()V

    .line 416
    :cond_a
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    if-eqz v1, :cond_14

    .line 418
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/wakeup/VoiceEngine;->terminateVerify()I

    move-result v0

    .line 421
    :cond_14
    return v0
.end method

.method static synthetic access$000(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Lcom/samsung/wakeup/VoiceEngineResultListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/wakeup/WakeUpCmdRecognizer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isUseModel()Z
    .registers 4

    .prologue
    .line 502
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSamsungWakeUpEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, mFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 505
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSamsungWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v1, 0x0

    .line 510
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private waitForBackgroundEnroll()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 295
    iput-boolean v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 296
    iput-boolean v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 298
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    if-eqz v1, :cond_10

    .line 300
    :try_start_9
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_10} :catch_11

    .line 306
    :cond_10
    :goto_10
    return-void

    .line 301
    :catch_11
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10
.end method


# virtual methods
.method protected InitializeEnroll()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 325
    const/4 v0, 0x0

    .line 327
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v1, v3}, Lcom/samsung/wakeup/VoiceEngine;->setMode(I)V

    .line 328
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v2, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/wakeup/VoiceEngine;->initializeEnroll(Ljava/lang/String;)I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v2, "/data/data/com.vlingo.client.samsung/modelStatus_0.bin"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/wakeup/VoiceEngine;->setModelStatus(Ljava/lang/String;I)I

    .line 331
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 333
    return v0
.end method

.method protected ProcessEnroll()I
    .registers 4

    .prologue
    .line 338
    const/4 v0, -0x3

    .line 340
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/wakeup/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->startRecord()V

    .line 342
    sget-boolean v1, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnrollReady:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 344
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v2, "/data/data/com.vlingo.client.samsung/lastEnrollUtt.pcm"

    invoke-virtual {v1, v2}, Lcom/samsung/wakeup/VoiceEngine;->processEnroll(Ljava/lang/String;)I

    move-result v0

    .line 347
    :cond_13
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/wakeup/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->closeRecord()V

    .line 349
    return v0
.end method

.method public SendHandlerMessage(III)V
    .registers 7
    .parameter "job"
    .parameter "count"
    .parameter "check"

    .prologue
    .line 88
    iget-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 89
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "job"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v2, "Enroll_Count"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v2, "EnrollCheck_Count"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 94
    iget-object v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method protected TerminateEnroll()I
    .registers 3

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    if-eqz v1, :cond_b

    .line 357
    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/wakeup/VoiceEngine;->terminateEnroll()I

    move-result v0

    .line 359
    :cond_b
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 361
    return v0
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    if-eqz v0, :cond_14

    .line 312
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    if-eqz v0, :cond_e

    .line 314
    invoke-direct {p0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->waitForBackgroundEnroll()V

    .line 315
    iput-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    .line 318
    :cond_e
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/wakeup/AudioRecordHaydn;

    if-eqz v0, :cond_14

    .line 319
    iput-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/wakeup/AudioRecordHaydn;

    .line 322
    :cond_14
    return-void
.end method

.method public getEnableWakeUp()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    return v0
.end method

.method public init()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    if-nez v0, :cond_e

    .line 103
    const/4 v0, -0x1

    .line 204
    :goto_d
    return v0

    .line 106
    :cond_e
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1e

    .line 108
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    :cond_1e
    invoke-static {}, Lcom/samsung/wakeup/VoiceEngineWrapper;->getInstance()Lcom/samsung/wakeup/VoiceEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    .line 113
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v0, v2}, Lcom/samsung/wakeup/VoiceEngine;->setIsRunningVoiceEngine(Z)V

    .line 114
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v0}, Lcom/samsung/wakeup/VoiceEngine;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_38

    .line 116
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v0}, Lcom/samsung/wakeup/VoiceEngine;->start()V

    .line 118
    :cond_38
    new-instance v0, Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;

    invoke-direct {v0, v1}, Lcom/samsung/wakeup/AudioRecordHaydn;-><init>(Lcom/samsung/wakeup/VoiceEngineResultListener;)V

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/wakeup/AudioRecordHaydn;

    .line 120
    iput-boolean v2, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;

    invoke-direct {v1, p0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;-><init>(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 202
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public startEnroll(S)I
    .registers 3
    .parameter "cmNumber"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    if-nez v0, :cond_6

    .line 211
    const/4 v0, -0x1

    .line 216
    :goto_5
    return v0

    .line 214
    :cond_6
    iput-short p1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->CommandNumber:S

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 216
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public startVerify(I)I
    .registers 12
    .parameter "wakeType"

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0xa

    const/16 v3, -0xb

    .line 235
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "startVerify"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, iResult:I
    iget-boolean v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    if-nez v4, :cond_13

    .line 241
    const/4 v3, -0x1

    .line 272
    :goto_12
    return v3

    .line 244
    :cond_13
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_20

    .line 246
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 250
    :cond_20
    iput p1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->WType:I

    .line 252
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, mFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_35

    .line 256
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;

    invoke-interface {v4, v3, v9}, Lcom/samsung/wakeup/VoiceEngineResultListener;->OnVerifyResult(IS)V

    goto :goto_12

    .line 260
    :cond_35
    invoke-direct {p0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->InitializeVerify()I

    move-result v0

    .line 262
    if-ne v0, v8, :cond_42

    .line 264
    iget-object v3, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;

    invoke-interface {v3, v8, v9}, Lcom/samsung/wakeup/VoiceEngineResultListener;->OnVerifyResult(IS)V

    move v3, v0

    .line 265
    goto :goto_12

    .line 268
    :cond_42
    iget-object v3, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v4, "/data/data/com.vlingo.client.samsung/modelStatus_0.bin"

    invoke-virtual {v3, v4}, Lcom/samsung/wakeup/VoiceEngine;->getModelStatus(Ljava/lang/String;)I

    move-result v2

    .line 270
    .local v2, numUTT:I
    invoke-direct {p0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->StartVerify()I

    move-result v0

    move v3, v0

    .line 272
    goto :goto_12
.end method

.method public stopEnroll()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-boolean v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    if-nez v1, :cond_7

    .line 224
    const/4 v0, -0x1

    .line 229
    :goto_6
    return v0

    .line 227
    :cond_7
    iput-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 228
    invoke-virtual {p0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TerminateEnroll()I

    goto :goto_6
.end method

.method public stopVerify()I
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "stopVerify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isEnableWakeUp:Z

    if-nez v0, :cond_d

    .line 281
    const/4 v0, -0x1

    .line 291
    :goto_c
    return v0

    .line 284
    :cond_d
    invoke-direct {p0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TerminateVerify()I

    .line 286
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1b

    .line 288
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 291
    :cond_1b
    const/4 v0, 0x0

    goto :goto_c
.end method
