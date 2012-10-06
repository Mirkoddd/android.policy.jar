.class Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;
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
    .line 411
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->pokeWakelock()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.tune.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    .line 418
    return-void
.end method
