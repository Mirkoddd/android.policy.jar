.class Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
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
    .line 532
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;->this$0:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    .line 533
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 534
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    .line 535
    invoke-virtual {p2}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;->mContext:Landroid/content/Context;

    .line 536
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;

    .line 541
    .local v0, digitalClock:Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;
    if-eqz v0, :cond_e

    .line 542
    #calls: Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->access$200(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    .line 550
    :goto_d
    return-void

    .line 545
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_d

    .line 546
    :catch_18
    move-exception v1

    goto :goto_d
.end method
