.class Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;
.super Ljava/lang/Object;
.source "GlassLockScreenFMRadioWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->init()V
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
    .line 437
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 439
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    .line 440
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->pokeWakelock()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$300(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v1

    if-ne v1, v2, :cond_26

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)I

    .line 445
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    .line 451
    :goto_25
    return-void

    .line 447
    .end local v0           #intent:Landroid/content/Intent;
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 448
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #setter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$302(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)I

    .line 449
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_25
.end method
