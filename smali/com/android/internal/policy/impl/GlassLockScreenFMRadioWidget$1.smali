.class Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;
.super Landroid/os/Handler;
.source "GlassLockScreenFMRadioWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 138
    :goto_5
    return-void

    .line 123
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMinLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    goto :goto_5

    .line 126
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->handleFMUpdate(IILjava/lang/Object;)V

    goto :goto_5

    .line 129
    :pswitch_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->handleFMUpdate(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 132
    :pswitch_34
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->handleMiniRadioVisibilityUpdate(IILjava/lang/Object;)V

    goto :goto_5

    .line 135
    :pswitch_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->handleStopMarquee()V

    goto :goto_5

    .line 121
    :pswitch_data_46
    .packed-switch 0x12c1
        :pswitch_6
        :pswitch_c
        :pswitch_18
        :pswitch_40
        :pswitch_34
    .end packed-switch
.end method
