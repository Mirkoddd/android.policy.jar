.class Lcom/android/internal/policy/impl/PhoneWindowManager$12$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$12;->handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$12;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$12;)V
    .registers 2
    .parameter

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2796
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 2798
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1c

    .line 2799
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 2800
    return-void

    .line 2798
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method
