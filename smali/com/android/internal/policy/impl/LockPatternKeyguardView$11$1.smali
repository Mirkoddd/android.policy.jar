.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$11$1;
.super Ljava/lang/Thread;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;)V
    .registers 2
    .parameter

    .prologue
    .line 2230
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11$1;->this$1:Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->formatExtStorage()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$4300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I

    .line 2233
    return-void
.end method
