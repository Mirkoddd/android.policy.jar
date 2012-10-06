.class Lcom/android/internal/policy/impl/PhoneWindowManager$12;
.super Lcom/android/internal/view/BaseInputHandler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 2767
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 11
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 2770
    const/4 v1, 0x0

    .line 2772
    .local v1, handled:Z
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_50

    .line 2773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_50

    .line 2775
    const/4 v0, 0x0

    .line 2776
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_57

    .line 2779
    :try_start_15
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v2, v3, 0x2

    .line 2781
    .local v2, newVal:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v3, v2, :cond_26

    .line 2782
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v2, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 2783
    const/4 v0, 0x1

    .line 2788
    :cond_26
    if-nez v0, :cond_46

    .line 2789
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    or-int/lit8 v2, v3, 0x2

    .line 2791
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eq v3, v2, :cond_46

    .line 2792
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v2, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 2793
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/PhoneWindowManager$12$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$12$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$12;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2804
    :cond_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_15 .. :try_end_47} :catchall_54

    .line 2805
    if-eqz v0, :cond_50

    .line 2806
    :try_start_49
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_57

    .line 2811
    .end local v0           #changed:Z
    .end local v2           #newVal:I
    :cond_50
    invoke-virtual {p2, v1}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 2813
    return-void

    .line 2804
    .restart local v0       #changed:Z
    :catchall_54
    move-exception v3

    :try_start_55
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw v3
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 2811
    .end local v0           #changed:Z
    :catchall_57
    move-exception v3

    invoke-virtual {p2, v1}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v3
.end method
