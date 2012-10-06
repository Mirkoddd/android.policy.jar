.class Lcom/samsung/wakeup/WakeUpCmdRecognizer$3;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 480
    iput-object p1, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$3;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5
    .parameter "focusChange"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/samsung/wakeup/WakeUpCmdRecognizer$3;->this$0:Lcom/samsung/wakeup/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/wakeup/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/wakeup/WakeUpCmdRecognizer;->access$300(Lcom/samsung/wakeup/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    packed-switch p1, :pswitch_data_20

    .line 497
    :pswitch_1f
    return-void

    .line 486
    :pswitch_data_20
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method
