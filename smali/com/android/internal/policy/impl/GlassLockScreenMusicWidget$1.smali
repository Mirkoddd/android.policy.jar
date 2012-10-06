.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;
.super Landroid/os/Handler;
.source "GlassLockScreenMusicWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 157
    :goto_5
    return-void

    .line 148
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    goto :goto_5

    .line 151
    :pswitch_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->handleMediaUpdate(IILandroid/net/Uri;)V

    goto :goto_5

    .line 154
    :pswitch_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

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

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 146
    :pswitch_data_36
    .packed-switch 0x12c1
        :pswitch_6
        :pswitch_c
        :pswitch_1a
    .end packed-switch
.end method
