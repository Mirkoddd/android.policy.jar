.class Lcom/android/internal/policy/impl/GlobalActions$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "componentName"
    .parameter "iBinder"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-static {p2}, Lcom/vmware/mvp/vm/IMvpPower$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vmware/mvp/vm/IMvpPower;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->iMvpPower:Lcom/vmware/mvp/vm/IMvpPower;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$002(Lcom/android/internal/policy/impl/GlobalActions;Lcom/vmware/mvp/vm/IMvpPower;)Lcom/vmware/mvp/vm/IMvpPower;

    .line 108
    const-string v0, "GlobalActions"

    const-string v1, "Bound to IMVPPower"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "componentName"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->iMvpPower:Lcom/vmware/mvp/vm/IMvpPower;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$002(Lcom/android/internal/policy/impl/GlobalActions;Lcom/vmware/mvp/vm/IMvpPower;)Lcom/vmware/mvp/vm/IMvpPower;

    .line 117
    const-string v0, "GlobalActions"

    const-string v1, "Unbound from IMVPPower"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    return-void
.end method
