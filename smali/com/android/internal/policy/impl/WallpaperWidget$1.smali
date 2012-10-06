.class Lcom/android/internal/policy/impl/WallpaperWidget$1;
.super Landroid/os/Handler;
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
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/WallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 100
    :goto_5
    return-void

    .line 94
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    #calls: Lcom/android/internal/policy/impl/WallpaperWidget;->handleWallpaperUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WallpaperWidget;->access$000(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    goto :goto_5

    .line 97
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget$1;->this$0:Lcom/android/internal/policy/impl/WallpaperWidget;

    #calls: Lcom/android/internal/policy/impl/WallpaperWidget;->handleLiveWallpaperUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WallpaperWidget;->access$100(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    goto :goto_5

    .line 92
    :pswitch_data_12
    .packed-switch 0x12c0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
