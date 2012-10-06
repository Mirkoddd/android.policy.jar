.class Lcom/android/internal/policy/impl/AccountUnlockScreen$4;
.super Ljava/lang/Object;
.source "AccountUnlockScreen.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AccountUnlockScreen;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    const-string v3, "AccountUnlockScreen"

    const-string v4, "========mCallback.pokeWakelock(AWAKE_POKE_MILLIS)======="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$400(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    const/16 v4, 0x7530

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 356
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 357
    .local v1, result:Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 358
    .local v2, verified:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_74
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_23} :catch_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_48
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_23} :catch_5e

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$4;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 372
    .end local v1           #result:Landroid/os/Bundle;
    .end local v2           #verified:Z
    :goto_31
    return-void

    .line 359
    :catch_32
    move-exception v0

    .line 360
    .local v0, e:Landroid/accounts/OperationCanceledException;
    :try_start_33
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_74

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$4;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 361
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_48
    move-exception v0

    .line 362
    .local v0, e:Ljava/io/IOException;
    :try_start_49
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_74

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$4;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 363
    .end local v0           #e:Ljava/io/IOException;
    :catch_5e
    move-exception v0

    .line 364
    .local v0, e:Landroid/accounts/AuthenticatorException;
    :try_start_5f
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_74

    .line 366
    iget-object v3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$4;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catchall_74
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$4;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$4$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen$4;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    throw v3
.end method
