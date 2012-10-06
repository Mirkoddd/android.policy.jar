.class Lcom/android/internal/policy/impl/WallpaperWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/WallpaperWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/WallpaperWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WallpaperWidget;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/internal/policy/impl/WallpaperWidget$2;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 113
    iget-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget$2;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    #getter for: Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/WallpaperWidget;->access$200(Lcom/android/internal/policy/impl/WallpaperWidget;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/WallpaperWidget$2;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    #getter for: Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/WallpaperWidget;->access$200(Lcom/android/internal/policy/impl/WallpaperWidget;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    :cond_21
    :goto_21
    return-void

    .line 114
    :cond_22
    const-string v1, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget$2;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    #getter for: Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/WallpaperWidget;->access$200(Lcom/android/internal/policy/impl/WallpaperWidget;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/WallpaperWidget$2;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    #getter for: Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/WallpaperWidget;->access$200(Lcom/android/internal/policy/impl/WallpaperWidget;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21
.end method
