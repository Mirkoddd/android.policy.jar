.class Lcom/samsung/wakeup/AudioRecordHaydn$3;
.super Ljava/lang/Object;
.source "AudioRecordHaydn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wakeup/AudioRecordHaydn;->initThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wakeup/AudioRecordHaydn;


# direct methods
.method constructor <init>(Lcom/samsung/wakeup/AudioRecordHaydn;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 155
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->isRunning_all:Z
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$100(Lcom/samsung/wakeup/AudioRecordHaydn;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 156
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->isRecording:Z
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$200(Lcom/samsung/wakeup/AudioRecordHaydn;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 158
    const/4 v6, 0x0

    .line 160
    .local v6, iResult:I
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/wakeup/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v2, v2, Lcom/samsung/wakeup/AudioRecordHaydn;->recordBuffer:[S

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->readSize:I
    invoke-static {v4}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$400(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    #setter for: Lcom/samsung/wakeup/AudioRecordHaydn;->readLength:I
    invoke-static {v0, v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$302(Lcom/samsung/wakeup/AudioRecordHaydn;I)I

    .line 162
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$500(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/wakeup/AudioRecordHaydn;->recordBuffer:[S

    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->readLength:I
    invoke-static {v2}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$300(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v2

    const-string v3, "/data/data/com.vlingo.client.samsung/enSTR_TRY_0.bin"

    const-string v4, "/data/data/com.vlingo.client.samsung/enSTR_3_0.bin"

    iget-object v5, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v5, v5, Lcom/samsung/wakeup/AudioRecordHaydn;->frameLeftNumber:[S

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/wakeup/VoiceEngine;->processBuffer([SILjava/lang/String;Ljava/lang/String;[S)I

    move-result v6

    .line 164
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$600(Lcom/samsung/wakeup/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->readLength:I
    invoke-static {v2}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$300(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$600(Lcom/samsung/wakeup/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBuffer Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->processedSample:I
    invoke-static {v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$700(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->readLength:I
    invoke-static {v2}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$300(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/samsung/wakeup/AudioRecordHaydn;->processedSample:I
    invoke-static {v0, v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$702(Lcom/samsung/wakeup/AudioRecordHaydn;I)I

    .line 182
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$500(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/wakeup/AudioRecordHaydn;->recordBuffer:[S

    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->readLength:I
    invoke-static {v2}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$300(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->sampleRate:I
    invoke-static {v3}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$800(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/wakeup/VoiceEngine;->computeEnergyFrame([SII)I

    move-result v7

    .line 184
    .local v7, rms:I
    const-wide v0, 0x3ff3333333333333L

    int-to-float v2, v7

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x400dc28f5c28f5c3L

    sub-double/2addr v0, v2

    double-to-int v7, v0

    .line 186
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->oldrms:I
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$900(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v0

    if-le v7, v0, :cond_155

    .line 187
    const-wide v0, 0x3feccccccccccccdL

    int-to-float v2, v7

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL

    iget-object v4, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->oldrms:I
    invoke-static {v4}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$900(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v7, v0

    .line 191
    :goto_de
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #setter for: Lcom/samsung/wakeup/AudioRecordHaydn;->oldrms:I
    invoke-static {v0, v7}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$902(Lcom/samsung/wakeup/AudioRecordHaydn;I)I

    .line 193
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->readLength:I
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$300(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v0

    const/16 v1, 0x5dc

    if-le v0, v1, :cond_f2

    .line 195
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    invoke-virtual {v0, v7}, Lcom/samsung/wakeup/AudioRecordHaydn;->rmsSendHandlerMessage(I)V

    .line 198
    :cond_f2
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, v1, Lcom/samsung/wakeup/AudioRecordHaydn;->CommandType:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/samsung/wakeup/AudioRecordHaydn;->VerifiedCommand:S

    .line 200
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$600(Lcom/samsung/wakeup/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verified Command Number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-short v2, v2, Lcom/samsung/wakeup/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    if-ne v6, v0, :cond_169

    .line 204
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$500(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngine;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/wakeup/VoiceEngine;->setMode(I)V

    .line 206
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    invoke-virtual {v0, v6}, Lcom/samsung/wakeup/AudioRecordHaydn;->setAdaptation(I)I

    .line 208
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$000(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngineResultListener;

    move-result-object v0

    if-eqz v0, :cond_140

    .line 209
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-short v1, v1, Lcom/samsung/wakeup/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v0, v6, v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 211
    :cond_140
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/wakeup/AudioRecordHaydn;->isRecording:Z
    invoke-static {v0, v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$202(Lcom/samsung/wakeup/AudioRecordHaydn;Z)Z
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_146} :catch_148

    goto/16 :goto_0

    .line 232
    .end local v6           #iResult:I
    .end local v7           #rms:I
    :catch_148
    move-exception v8

    .line 233
    .local v8, t:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$600(Lcom/samsung/wakeup/AudioRecordHaydn;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exeption error in Enroll: %s"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_154
    return-void

    .line 189
    .restart local v6       #iResult:I
    .restart local v7       #rms:I
    :cond_155
    const-wide/high16 v0, 0x3fd0

    int-to-float v2, v7

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe8

    :try_start_15c
    iget-object v4, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->oldrms:I
    invoke-static {v4}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$900(Lcom/samsung/wakeup/AudioRecordHaydn;)I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v7, v0

    goto/16 :goto_de

    .line 213
    :cond_169
    const/4 v0, -0x3

    if-ne v6, v0, :cond_18f

    .line 215
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->VElib:Lcom/samsung/wakeup/VoiceEngine;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$500(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngine;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/wakeup/VoiceEngine;->setMode(I)V

    .line 217
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$000(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngineResultListener;

    move-result-object v0

    if-eqz v0, :cond_187

    .line 218
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-short v1, v1, Lcom/samsung/wakeup/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v0, v6, v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->SendHandlerMessage(IS)V

    .line 220
    :cond_187
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/wakeup/AudioRecordHaydn;->isRecording:Z
    invoke-static {v0, v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$202(Lcom/samsung/wakeup/AudioRecordHaydn;Z)Z

    goto/16 :goto_0

    .line 222
    :cond_18f
    const/16 v0, -0xc

    if-ne v6, v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;
    invoke-static {v0}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$000(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngineResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$3;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    iget-short v1, v1, Lcom/samsung/wakeup/AudioRecordHaydn;->VerifiedCommand:S

    invoke-virtual {v0, v6, v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->SendHandlerMessage(IS)V

    goto/16 :goto_0

    .line 229
    .end local v6           #iResult:I
    .end local v7           #rms:I
    :cond_1a6
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1ab
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_1ab} :catch_148

    goto/16 :goto_0
.end method
