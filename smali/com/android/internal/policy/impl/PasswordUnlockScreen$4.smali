.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 233
    :cond_11
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 227
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 224
    return-void
.end method
