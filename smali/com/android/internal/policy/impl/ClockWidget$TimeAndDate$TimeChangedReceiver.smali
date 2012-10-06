.class Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V
    .registers 4
    .parameter
    .parameter "clock"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;->this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 493
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 494
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 495
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 500
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 502
    .local v1, timezoneChanged:Z
    move-object v2, p2

    .line 503
    .local v2, tmpIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    .line 504
    .local v0, clock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;
    if-eqz v0, :cond_22

    .line 505
    #getter for: Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->access$300(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver$1;-><init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;ZLandroid/content/Intent;Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    :goto_21
    return-void

    .line 519
    :cond_22
    :try_start_22
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_21

    .line 520
    :catch_28
    move-exception v3

    goto :goto_21
.end method
