.class public Lcom/samsung/wakeup/AudioRecordHaydn;
.super Ljava/lang/Object;
.source "AudioRecordHaydn.java"


# static fields
.field private static final RECORDER_BUFFER_SIZE_16kHz:I = 0x9c40

.field private static final RECORDER_BUFFER_SIZE_44p1kHz:I = 0x15888


# instance fields
.field public CommandType:[S

.field private final ROOT:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private VElib:Lcom/samsung/wakeup/VoiceEngine;

.field public VerifiedCommand:S

.field public aRecord:Landroid/media/AudioRecord;

.field final channelNum:I

.field final encodeFormat:I

.field public frameLeftNumber:[S

.field public handler:Landroid/os/Handler;

.field private isRecording:Z

.field private isRunning_all:Z

.field private mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;

.field public final m_UBMpath:Ljava/lang/String;

.field public final m_enStr3Path:Ljava/lang/String;

.field public final m_enStrPath:Ljava/lang/String;

.field public final m_lastEnroll:Ljava/lang/String;

.field public final m_modelStatusPath:Ljava/lang/String;

.field public final m_spkModelpath:Ljava/lang/String;

.field private oldrms:I

.field private processedSample:I

.field private readBufferSize:I

.field private readLength:I

.field private readSize:I

.field public recordBuffer:[S

.field public rmshandler:Landroid/os/Handler;

.field private sampleDelay_engine:I

.field private sampleDelay_wave:I

.field private sampleRate:I

.field private threadRecord:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const v0, 0xac44

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleRate:I

    .line 14
    iput v3, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->channelNum:I

    .line 15
    iput v3, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->encodeFormat:I

    .line 26
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->frameLeftNumber:[S

    .line 27
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->CommandType:[S

    .line 30
    iput-boolean v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRunning_all:Z

    .line 33
    iput v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->processedSample:I

    .line 34
    const/16 v0, 0x44e8

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleDelay_wave:I

    .line 35
    const/16 v0, 0x2274

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleDelay_engine:I

    .line 38
    const-string v0, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_UBMpath:Ljava/lang/String;

    .line 39
    const-string v0, "/data/data/com.vlingo.client.samsung/spk_16k_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_spkModelpath:Ljava/lang/String;

    .line 40
    const-string v0, "/data/data/com.vlingo.client.samsung/enSTR_TRY_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_enStrPath:Ljava/lang/String;

    .line 41
    const-string v0, "/data/data/com.vlingo.client.samsung/modelStatus_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_modelStatusPath:Ljava/lang/String;

    .line 42
    const-string v0, "/data/data/com.vlingo.client.samsung/enSTR_3_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_enStr3Path:Ljava/lang/String;

    .line 43
    const-string v0, "/data/data/com.vlingo.client.samsung/lastEnrollUtt.pcm"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_lastEnroll:Ljava/lang/String;

    .line 45
    const-string v0, "/data/data/com.vlingo.client.samsung/"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->ROOT:Ljava/lang/String;

    .line 47
    const-string v0, "AudioRecordHaydn"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/samsung/wakeup/VoiceEngineWrapper;->getInstance()Lcom/samsung/wakeup/VoiceEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;

    .line 52
    iput-short v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VerifiedCommand:S

    .line 103
    new-instance v0, Lcom/samsung/wakeup/AudioRecordHaydn$1;

    invoke-direct {v0, p0}, Lcom/samsung/wakeup/AudioRecordHaydn$1;-><init>(Lcom/samsung/wakeup/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->handler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/samsung/wakeup/AudioRecordHaydn$2;

    invoke-direct {v0, p0}, Lcom/samsung/wakeup/AudioRecordHaydn$2;-><init>(Lcom/samsung/wakeup/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/samsung/wakeup/VoiceEngineResultListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const v0, 0xac44

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleRate:I

    .line 14
    iput v3, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->channelNum:I

    .line 15
    iput v3, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->encodeFormat:I

    .line 26
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->frameLeftNumber:[S

    .line 27
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->CommandType:[S

    .line 30
    iput-boolean v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRunning_all:Z

    .line 33
    iput v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->processedSample:I

    .line 34
    const/16 v0, 0x44e8

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleDelay_wave:I

    .line 35
    const/16 v0, 0x2274

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleDelay_engine:I

    .line 38
    const-string v0, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_UBMpath:Ljava/lang/String;

    .line 39
    const-string v0, "/data/data/com.vlingo.client.samsung/spk_16k_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_spkModelpath:Ljava/lang/String;

    .line 40
    const-string v0, "/data/data/com.vlingo.client.samsung/enSTR_TRY_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_enStrPath:Ljava/lang/String;

    .line 41
    const-string v0, "/data/data/com.vlingo.client.samsung/modelStatus_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_modelStatusPath:Ljava/lang/String;

    .line 42
    const-string v0, "/data/data/com.vlingo.client.samsung/enSTR_3_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_enStr3Path:Ljava/lang/String;

    .line 43
    const-string v0, "/data/data/com.vlingo.client.samsung/lastEnrollUtt.pcm"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->m_lastEnroll:Ljava/lang/String;

    .line 45
    const-string v0, "/data/data/com.vlingo.client.samsung/"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->ROOT:Ljava/lang/String;

    .line 47
    const-string v0, "AudioRecordHaydn"

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/samsung/wakeup/VoiceEngineWrapper;->getInstance()Lcom/samsung/wakeup/VoiceEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;

    .line 52
    iput-short v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VerifiedCommand:S

    .line 103
    new-instance v0, Lcom/samsung/wakeup/AudioRecordHaydn$1;

    invoke-direct {v0, p0}, Lcom/samsung/wakeup/AudioRecordHaydn$1;-><init>(Lcom/samsung/wakeup/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->handler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/samsung/wakeup/AudioRecordHaydn$2;

    invoke-direct {v0, p0}, Lcom/samsung/wakeup/AudioRecordHaydn$2;-><init>(Lcom/samsung/wakeup/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/wakeup/AudioRecordHaydn;->setVoiceEngineResultListener(Lcom/samsung/wakeup/VoiceEngineResultListener;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngineResultListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/wakeup/AudioRecordHaydn;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/wakeup/AudioRecordHaydn;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRecording:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/wakeup/AudioRecordHaydn;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRecording:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/wakeup/AudioRecordHaydn;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readLength:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/wakeup/AudioRecordHaydn;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readLength:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/wakeup/AudioRecordHaydn;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/wakeup/AudioRecordHaydn;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/wakeup/AudioRecordHaydn;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->processedSample:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/wakeup/AudioRecordHaydn;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->processedSample:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/wakeup/AudioRecordHaydn;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleRate:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/wakeup/AudioRecordHaydn;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->oldrms:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/wakeup/AudioRecordHaydn;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->oldrms:I

    return p1
.end method

.method private initAudio()V
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 68
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "initAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v0}, Lcom/samsung/wakeup/VoiceEngine;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_57

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleRate:I

    .line 73
    :goto_15
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v0}, Lcom/samsung/wakeup/VoiceEngine;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_5d

    .line 75
    const/16 v0, 0x640

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readSize:I

    .line 76
    const v0, 0x9c40

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readBufferSize:I

    .line 84
    :goto_26
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pcm readSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->recordBuffer:[S

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->oldrms:I

    .line 91
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    iget v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleRate:I

    iget v5, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readBufferSize:I

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    .line 96
    return-void

    .line 71
    :cond_57
    const v0, 0xac44

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->sampleRate:I

    goto :goto_15

    .line 80
    :cond_5d
    const/16 v0, 0x113a

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readSize:I

    .line 81
    const v0, 0x15888

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->readBufferSize:I

    goto :goto_26
.end method

.method private initThread()V
    .registers 3

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRunning_all:Z

    if-nez v0, :cond_18

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/wakeup/AudioRecordHaydn$3;

    invoke-direct {v1, p0}, Lcom/samsung/wakeup/AudioRecordHaydn$3;-><init>(Lcom/samsung/wakeup/AudioRecordHaydn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    .line 237
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRunning_all:Z

    .line 240
    :cond_18
    return-void
.end method


# virtual methods
.method public SendHandlerMessage(IS)V
    .registers 6
    .parameter "value"
    .parameter "sValue"

    .prologue
    .line 118
    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 119
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "verify_result"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v2, "verify_command"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 123
    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method

.method public closeRecord()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "closeRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iput-boolean v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRunning_all:Z

    .line 297
    iput-boolean v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRecording:Z

    .line 298
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_26

    .line 300
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 302
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 304
    :cond_1e
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    .line 308
    :cond_26
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    if-eqz v0, :cond_2f

    .line 310
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 312
    :cond_2f
    return-void
.end method

.method public getAudioInstance()Landroid/media/AudioRecord;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method public initRecorder()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "initRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lcom/samsung/wakeup/AudioRecordHaydn;->initAudio()V

    .line 247
    invoke-direct {p0}, Lcom/samsung/wakeup/AudioRecordHaydn;->initThread()V

    .line 248
    return-void
.end method

.method public pauseRecord()V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "pauseRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRecording:Z

    .line 290
    return-void
.end method

.method public rmsSendHandlerMessage(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 141
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "rms_value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method public setAdaptation(I)I
    .registers 7
    .parameter "verifyResult"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 316
    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "setAdaptation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v2, "/data/data/com.vlingo.client.samsung/modelStatus_0.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/wakeup/VoiceEngine;->getModelStatus(Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, modelStatus:I
    if-ne p1, v3, :cond_24

    .line 323
    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "Adaptation Start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 326
    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v2, "/data/data/com.vlingo.client.samsung/modelStatus_0.bin"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/wakeup/VoiceEngine;->setModelStatus(Ljava/lang/String;I)I

    .line 334
    :cond_24
    :goto_24
    const/4 v1, 0x0

    return v1

    .line 328
    :cond_26
    if-lt v0, v4, :cond_24

    .line 330
    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;

    invoke-virtual {v1, v3}, Lcom/samsung/wakeup/VoiceEngine;->setIsRunningAdaptation(Z)V

    goto :goto_24
.end method

.method public setVoiceEngineResultListener(Lcom/samsung/wakeup/VoiceEngineResultListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;

    .line 64
    return-void
.end method

.method public startRecord()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 252
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "startRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_f

    .line 255
    invoke-virtual {p0}, Lcom/samsung/wakeup/AudioRecordHaydn;->initRecorder()V

    .line 257
    :cond_f
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v2, :cond_24

    .line 260
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v2, :cond_24

    .line 262
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 267
    :cond_24
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->processedSample:I

    .line 269
    iput-boolean v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRecording:Z

    .line 270
    return-void
.end method

.method public stopRecord()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->isRecording:Z

    .line 277
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_24

    .line 278
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    .line 280
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 282
    :cond_1c
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    .line 285
    :cond_24
    return-void
.end method
