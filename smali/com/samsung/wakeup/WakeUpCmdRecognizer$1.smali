.class Lcom/samsung/wakeup/WakeUpCmdRecognizer$1;
.super Landroid/os/Handler;
.source "WakeUpCmdRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wakeup/WakeUpCmdRecognizer;
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
    .line 73
    iput-object p1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$1;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "job"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, job:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Enroll_Count"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, enroll_cnt:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EnrollCheck_Count"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, enroll_check_cnt:I
    iget-object v3, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$1;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/wakeup/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;
    invoke-static {v3}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->access$000(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Lcom/samsung/wakeup/VoiceEngineResultListener;

    move-result-object v3

    invoke-interface {v3, v2, v1, v0}, Lcom/samsung/wakeup/VoiceEngineResultListener;->OnEnrollResult(III)V

    .line 81
    return-void
.end method
