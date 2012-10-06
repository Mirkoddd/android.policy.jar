.class Lcom/android/internal/policy/impl/SignatureLockScreen$1;
.super Ljava/lang/Object;
.source "SignatureLockScreen.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SignatureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SignatureLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .parameter "className"
    .parameter "service"

    .prologue
    .line 424
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$100(Lcom/android/internal/policy/impl/SignatureLockScreen;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 426
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    invoke-static {p2}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    #setter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$202(Lcom/android/internal/policy/impl/SignatureLockScreen;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    .line 427
    const-string v2, "SignatureLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to sign service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_9b

    .line 429
    const-string v2, "SignatureLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before set sign service, mSignView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    if-eqz v2, :cond_6b

    .line 432
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    .line 436
    :cond_6b
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/ISignServiceInterface;->getEngineStatus()Z

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$402(Lcom/android/internal/policy/impl/SignatureLockScreen;Z)Z

    .line 437
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$400(Lcom/android/internal/policy/impl/SignatureLockScreen;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 438
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/16 v4, 0xa

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->getModelNum(I)I

    move-result v1

    .line 439
    .local v1, signNum:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_9d

    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/internal/policy/ISignServiceInterface;->readSignatureData(Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_7 .. :try_end_9b} :catchall_bb
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_9b} :catch_b6

    .line 452
    .end local v1           #signNum:I
    :cond_9b
    :goto_9b
    :try_start_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_bb

    .line 453
    return-void

    .line 443
    .restart local v1       #signNum:I
    :cond_9d
    :try_start_9d
    const-string v2, "SignatureLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved signatures are not sufficient. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_9d .. :try_end_b5} :catchall_bb
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_b5} :catch_b6

    goto :goto_9b

    .line 449
    .end local v1           #signNum:I
    :catch_b6
    move-exception v0

    .line 450
    .local v0, e:Landroid/os/RemoteException;
    :try_start_b7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9b

    .line 452
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_bb
    move-exception v2

    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_bb

    throw v2

    .line 446
    :cond_be
    :try_start_be
    const-string v2, "SignatureLockScreen"

    const-string v4, "fail to init engine"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_bb
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c5} :catch_b6

    goto :goto_9b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "className"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    #getter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$100(Lcom/android/internal/policy/impl/SignatureLockScreen;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 457
    :try_start_7
    const-string v0, "SignatureLockScreen"

    const-string v2, "Disconnected to sign service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$202(Lcom/android/internal/policy/impl/SignatureLockScreen;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen$1;->this$0:Lcom/android/internal/policy/impl/SignatureLockScreen;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen;->access$402(Lcom/android/internal/policy/impl/SignatureLockScreen;Z)Z

    .line 461
    monitor-exit v1

    .line 462
    return-void

    .line 461
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method
