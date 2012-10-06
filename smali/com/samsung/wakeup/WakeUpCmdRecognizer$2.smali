.class Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/wakeup/WakeUpCmdRecognizer;->init()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;


# direct methods
.method constructor <init>(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, -0x3

    const/4 v9, 0x4

    const/4 v8, -0x1

    .line 125
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_all:Z
    invoke-static {v4}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->access$100(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 126
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v4}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->access$200(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, iResult:I
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    invoke-virtual {v4}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->InitializeEnroll()I

    .line 132
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    const/16 v5, 0x65

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 134
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    if-ge v0, v9, :cond_ab

    .line 136
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    invoke-virtual {v4}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->ProcessEnroll()I

    move-result v1

    .line 138
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->access$300(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ProcessEnroll.result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-ne v1, v9, :cond_a0

    .line 142
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    const/16 v5, 0x66

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 144
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    iget-object v4, v4, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v5, "/data/data/com.vlingo.client.samsung/spk_16k_0.bin"

    const-string v6, "/data/data/com.vlingo.client.samsung/enSTR_TRY_0.bin"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/wakeup/VoiceEngine;->consistencyCheckEnroll(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 146
    .local v2, ii:I
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->access$300(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "consistencyCheckEnroll.result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v4, 0x3

    if-ne v2, v4, :cond_90

    .line 150
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    iget-object v4, v4, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/wakeup/VoiceEngine;

    const-string v5, "/data/data/com.vlingo.client.samsung/modelStatus_0.bin"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/samsung/wakeup/VoiceEngine;->setModelStatus(Ljava/lang/String;I)I

    .line 151
    sget-object v4, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mExist:[I

    iget-object v5, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    iget-short v5, v5, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->CommandNumber:S

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 156
    :cond_90
    if-ne v2, v9, :cond_94

    .line 160
    add-int/lit8 v0, v0, -0x1

    .line 162
    :cond_94
    const/4 v4, 0x5

    if-ne v2, v4, :cond_98

    .line 166
    const/4 v0, -0x1

    .line 169
    :cond_98
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    const/16 v5, 0x67

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 172
    .end local v2           #ii:I
    :cond_a0
    if-ne v1, v8, :cond_a4

    add-int/lit8 v0, v0, -0x1

    .line 174
    :cond_a4
    const/4 v4, -0x2

    if-ne v1, v4, :cond_a9

    add-int/lit8 v0, v0, -0x1

    .line 176
    :cond_a9
    if-ne v1, v10, :cond_c2

    .line 183
    :cond_ab
    if-ne v1, v10, :cond_d5

    .line 185
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    const/4 v5, 0x0

    #setter for: Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v4, v5}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->access$202(Lcom/samsung/wakeup/WakeUpCmdRecognizer;Z)Z
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b3} :catch_b5

    goto/16 :goto_3

    .line 196
    .end local v0           #i:I
    .end local v1           #iResult:I
    :catch_b5
    move-exception v3

    .line 197
    .local v3, t:Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->access$300(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exeption error in Enroll : "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_c1
    return-void

    .line 178
    .restart local v0       #i:I
    .restart local v1       #iResult:I
    :cond_c2
    :try_start_c2
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    const/16 v5, 0x65

    add-int/lit8 v6, v0, 0x1

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 180
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_23

    .line 189
    :cond_d5
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    invoke-virtual {v4}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TerminateEnroll()I

    .line 191
    iget-object v4, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    const/4 v5, 0x0

    #setter for: Lcom/samsung/wakeup/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v4, v5}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->access$202(Lcom/samsung/wakeup/WakeUpCmdRecognizer;Z)Z

    goto/16 :goto_3

    .line 193
    .end local v0           #i:I
    .end local v1           #iResult:I
    :cond_e2
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_e7} :catch_b5

    goto/16 :goto_3
.end method
