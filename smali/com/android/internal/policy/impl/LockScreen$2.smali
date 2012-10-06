.class Lcom/android/internal/policy/impl/LockScreen$2;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$2;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleTouchDown(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$2;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/policy/impl/LockScreen;->bedimBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;Z)V

    .line 383
    return-void
.end method

.method public onCircleTouchMove(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 387
    return-void
.end method

.method public onCircleTouchUp(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$2;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/LockScreen;->bedimBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreen;->access$900(Lcom/android/internal/policy/impl/LockScreen;Z)V

    .line 393
    return-void
.end method
