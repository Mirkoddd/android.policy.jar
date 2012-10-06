.class Lcom/samsung/wakeup/AudioRecordHaydn$1;
.super Landroid/os/Handler;
.source "AudioRecordHaydn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wakeup/AudioRecordHaydn;
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
    .line 104
    iput-object p1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$1;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "verify_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, iResult:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "verify_command"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    .line 110
    .local v0, cResult:S
    iget-object v2, p0, Lcom/samsung/wakeup/AudioRecordHaydn$1;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;
    invoke-static {v2}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$000(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngineResultListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/samsung/wakeup/VoiceEngineResultListener;->OnVerifyResult(IS)V

    .line 111
    return-void
.end method
