.class Lcom/samsung/wakeup/AudioRecordHaydn$2;
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
    .line 127
    iput-object p1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$2;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "rms_value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, iResult:I
    iget-object v1, p0, Lcom/samsung/wakeup/AudioRecordHaydn$2;->this$0:Lcom/samsung/wakeup/AudioRecordHaydn;

    #getter for: Lcom/samsung/wakeup/AudioRecordHaydn;->mResultListener:Lcom/samsung/wakeup/VoiceEngineResultListener;
    invoke-static {v1}, Lcom/samsung/wakeup/AudioRecordHaydn;->access$000(Lcom/samsung/wakeup/AudioRecordHaydn;)Lcom/samsung/wakeup/VoiceEngineResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/wakeup/VoiceEngineResultListener;->OnRmsForWave(I)V

    .line 133
    return-void
.end method
