.class public Lcom/samsung/wakeup/VoiceEngine;
.super Ljava/lang/Thread;
.source "VoiceEngine.java"


# static fields
.field public static final AL_ENROLL:I = 0x0

.field public static final AL_VERIFY:I = 0x1

.field public static final VR_RECOGNITON:I = 0x2

.field public static isEarMic:I

.field private static isRunningAdaptation:Z

.field private static isRunningVoiceEngine:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private m_UBMpath:Ljava/lang/String;

.field private final m_UBMpath_default:Ljava/lang/String;

.field private m_enStrPath:Ljava/lang/String;

.field private volatile m_engineMode:I

.field private m_modelStatusPath:Ljava/lang/String;

.field private m_spkModelpath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/samsung/wakeup/VoiceEngine;->isRunningVoiceEngine:Z

    .line 37
    sput-boolean v0, Lcom/samsung/wakeup/VoiceEngine;->isRunningAdaptation:Z

    .line 46
    sput v0, Lcom/samsung/wakeup/VoiceEngine;->isEarMic:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/wakeup/VoiceEngine;->m_engineMode:I

    .line 39
    const-string v0, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    .line 40
    const-string v0, "/data/data/com.vlingo.client.samsung/spk_16k_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/VoiceEngine;->m_spkModelpath:Ljava/lang/String;

    .line 41
    const-string v0, "/data/data/com.vlingo.client.samsung/enSTR_TRY_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/VoiceEngine;->m_enStrPath:Ljava/lang/String;

    .line 42
    const-string v0, "/data/data/com.vlingo.client.samsung/modelStatus_0.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/VoiceEngine;->m_modelStatusPath:Ljava/lang/String;

    .line 44
    const-string v0, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/wakeup/VoiceEngine;->m_UBMpath_default:Ljava/lang/String;

    .line 47
    const-string v0, "VoiceEngine"

    iput-object v0, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static init()V
    .registers 3

    .prologue
    .line 105
    :try_start_0
    const-string v1, "VoiceEngine"

    const-string v2, "Trying to load libSamsungWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v1, "SamsungWakeUpEngine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 107
    const-string v1, "VoiceEngine"

    const-string v2, "Loading libSamsungWakeUpEngine.so done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 114
    .local v0, e:Ljava/lang/Exception;
    :goto_13
    return-void

    .line 110
    .end local v0           #e:Ljava/lang/Exception;
    :catch_14
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "VoiceEngine"

    const-string v2, "WARNING: Could not load libSamsungWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method


# virtual methods
.method public native computeEnergyFrame([SII)I
.end method

.method public native consistencyCheckEnroll(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getIsRunningAdaptation()Z
    .registers 2

    .prologue
    .line 98
    sget-boolean v0, Lcom/samsung/wakeup/VoiceEngine;->isRunningAdaptation:Z

    return v0
.end method

.method public getIsRunningVoiceEngine()Z
    .registers 2

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_1
    sget-boolean v0, Lcom/samsung/wakeup/VoiceEngine;->isRunningVoiceEngine:Z

    monitor-exit p0

    return v0

    .line 80
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/wakeup/VoiceEngine;->m_engineMode:I

    return v0
.end method

.method public native getModelStatus(Ljava/lang/String;)I
.end method

.method public native initializeDRC()I
.end method

.method public native initializeEnroll(Ljava/lang/String;)I
.end method

.method public native initializeNS()I
.end method

.method public native initializeVerify(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native performContinuousAdaptation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public processBuffer([SILjava/lang/String;Ljava/lang/String;[S)I
    .registers 14
    .parameter "recordBuffer"
    .parameter "readLength"
    .parameter "enStrPath"
    .parameter "enStr3Path"
    .parameter "frameLeft"

    .prologue
    .line 50
    const/4 v7, 0x0

    .line 52
    .local v7, iResult:I
    iget v0, p0, Lcom/samsung/wakeup/VoiceEngine;->m_engineMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 54
    sget v1, Lcom/samsung/wakeup/VoiceEngine;->isEarMic:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/wakeup/VoiceEngine;->processVerifyFrame(I[SILjava/lang/String;Ljava/lang/String;[S)I

    move-result v7

    .line 61
    :goto_12
    return v7

    .line 58
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wakeup/VoiceEngine;->store1chPCM([SI)I

    move-result v7

    .line 59
    const/4 v7, 0x0

    goto :goto_12
.end method

.method public native processDRC([SI)I
.end method

.method public native processEnroll(Ljava/lang/String;)I
.end method

.method public native processNSFrame([SI)I
.end method

.method public native processVerify(I)I
.end method

.method public native processVerifyFrame(I[SILjava/lang/String;Ljava/lang/String;[S)I
.end method

.method public run()V
    .registers 8

    .prologue
    .line 118
    :goto_0
    :try_start_0
    sget-boolean v4, Lcom/samsung/wakeup/VoiceEngine;->isRunningVoiceEngine:Z

    if-eqz v4, :cond_42

    .line 119
    sget-boolean v4, Lcom/samsung/wakeup/VoiceEngine;->isRunningAdaptation:Z

    if-eqz v4, :cond_85

    .line 125
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_3a

    .line 126
    const/4 v4, 0x0

    :try_start_a
    sput-boolean v4, Lcom/samsung/wakeup/VoiceEngine;->isRunningAdaptation:Z

    .line 128
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    if-nez v4, :cond_43

    .line 129
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v5, "Adaptation thread model path isn\'t set properly"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adaptation thread m_UBMpath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/wakeup/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v4, "/data/data/com.vlingo.client.samsung/models_16k_NoE.bin"

    iput-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    .line 132
    monitor-exit p0

    goto :goto_0

    .line 153
    :catchall_37
    move-exception v4

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_37

    :try_start_39
    throw v4
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3a} :catch_3a

    .line 160
    :catch_3a
    move-exception v2

    .line 161
    .local v2, t:Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v5, "Exeption error in adaptation: %s"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_42
    return-void

    .line 135
    :cond_43
    :try_start_43
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v5, "Adaptation thread start!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/wakeup/VoiceEngine;->m_spkModelpath:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/wakeup/VoiceEngine;->m_enStrPath:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/wakeup/VoiceEngine;->performContinuousAdaptation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, contADAPTreturn:I
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v5, "Adaptation thread end!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->m_modelStatusPath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/samsung/wakeup/VoiceEngine;->getModelStatus(Ljava/lang/String;)I

    move-result v1

    .line 142
    .local v1, numUTT:I
    const/4 v4, 0x4

    if-lt v1, v4, :cond_72

    const/16 v4, 0xa

    if-ge v1, v4, :cond_72

    .line 143
    const/4 v4, 0x1

    if-ne v0, v4, :cond_7e

    .line 144
    add-int/lit8 v3, v1, 0x1

    .line 145
    .local v3, updatedModelStatus:I
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->m_modelStatusPath:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/wakeup/VoiceEngine;->setModelStatus(Ljava/lang/String;I)I

    .line 153
    .end local v3           #updatedModelStatus:I
    :cond_72
    :goto_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_43 .. :try_end_73} :catchall_37

    .line 154
    :try_start_73
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    const-string v5, "Adaptation End"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v4, 0x0

    sput-boolean v4, Lcom/samsung/wakeup/VoiceEngine;->isRunningAdaptation:Z
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_7d} :catch_3a

    goto :goto_0

    .line 148
    :cond_7e
    move v3, v1

    .line 149
    .restart local v3       #updatedModelStatus:I
    :try_start_7f
    iget-object v4, p0, Lcom/samsung/wakeup/VoiceEngine;->m_modelStatusPath:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/wakeup/VoiceEngine;->setModelStatus(Ljava/lang/String;I)I
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_37

    goto :goto_72

    .line 157
    .end local v0           #contADAPTreturn:I
    .end local v1           #numUTT:I
    .end local v3           #updatedModelStatus:I
    :cond_85
    const-wide/16 v4, 0x64

    :try_start_87
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_3a

    goto/16 :goto_0
.end method

.method public setAdaptationModelPath(Ljava/lang/String;)V
    .registers 5
    .parameter "UBMpath"

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :try_start_1
    iput-object p1, p0, Lcom/samsung/wakeup/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningAdaptation m_UBMpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wakeup/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 94
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public setIsRunningAdaptation(Z)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_1
    sput-boolean p1, Lcom/samsung/wakeup/VoiceEngine;->isRunningAdaptation:Z

    .line 86
    iget-object v0, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningAdaptation mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public setIsRunningVoiceEngine(Z)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 73
    sput-boolean p1, Lcom/samsung/wakeup/VoiceEngine;->isRunningVoiceEngine:Z

    .line 74
    iget-object v0, p0, Lcom/samsung/wakeup/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningVoiceEngine mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 65
    iput p1, p0, Lcom/samsung/wakeup/VoiceEngine;->m_engineMode:I

    .line 66
    return-void
.end method

.method public native setModelStatus(Ljava/lang/String;I)I
.end method

.method public native startVerify(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native store1chPCM([SI)I
.end method

.method public native terminateEnroll()I
.end method

.method public native terminateVerify()I
.end method
