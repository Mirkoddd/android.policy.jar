.class Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5765
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock$1;->val$this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 5768
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->release()V

    .line 5769
    return-void
.end method
