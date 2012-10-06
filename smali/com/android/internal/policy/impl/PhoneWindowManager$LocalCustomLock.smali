.class Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalCustomLock"
.end annotation


# instance fields
.field private mEnd:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mStart:Ljava/lang/String;

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "path"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5760
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5761
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mPath:Ljava/lang/String;

    .line 5762
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mStart:Ljava/lang/String;

    .line 5763
    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mEnd:Ljava/lang/String;

    .line 5765
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 5771
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 4

    .prologue
    .line 5780
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mStart:Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeString(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 5781
    return-void
.end method

.method public acquire(I)V
    .registers 6
    .parameter "timeout"

    .prologue
    .line 5774
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->acquire()V

    .line 5775
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5776
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mTimeoutRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5777
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    .line 5784
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mEnd:Ljava/lang/String;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->writeString(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 5785
    return-void
.end method
