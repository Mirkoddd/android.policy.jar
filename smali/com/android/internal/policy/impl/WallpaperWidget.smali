.class Lcom/android/internal/policy/impl/WallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "WallpaperWidget.java"


# instance fields
.field private final ACTION_LOCKSCREEN_LIVE_WALLPAPER_CHANGED:Ljava/lang/String;

.field private final ACTION_LOCKSCREEN_WALLPAPER_CHANGED:Ljava/lang/String;

.field private final DBG:Z

.field private final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final MSG_LIVE_WALLPAPER_CHANGED:I

.field private final MSG_WALLPAPER_CHANGED:I

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mHandler:Landroid/os/Handler;

.field private mIsLiveWallpaper:Z

.field private mIsTabletDevice:Z

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;

.field private mWallpapaerPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "context"
    .parameter "configuration"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v5, "WallpaperWidget"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->TAG:Ljava/lang/String;

    .line 33
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->DBG:Z

    .line 36
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 39
    const-string v5, "com.android.lockscreenwallpaper.CHANGED"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->ACTION_LOCKSCREEN_WALLPAPER_CHANGED:Ljava/lang/String;

    .line 40
    const-string v5, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->ACTION_LOCKSCREEN_LIVE_WALLPAPER_CHANGED:Ljava/lang/String;

    .line 43
    const-string v5, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 44
    const-string v5, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper_land.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 45
    const-string v5, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    .line 47
    const/16 v5, 0x12c0

    iput v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->MSG_WALLPAPER_CHANGED:I

    .line 48
    const/16 v5, 0x12c1

    iput v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->MSG_LIVE_WALLPAPER_CHANGED:I

    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    .line 62
    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mCreationOrientation:I

    .line 65
    :try_start_31
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 67
    .local v2, wm:Landroid/view/IWindowManager;
    invoke-interface {v2}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v5

    if-eqz v5, :cond_71

    .line 68
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_44} :catch_75

    .line 78
    .end local v2           #wm:Landroid/view/IWindowManager;
    :goto_44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen_wallpaper"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_80

    :goto_50
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    .line 79
    const-string v3, "WallpaperWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsLiveWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v3, :cond_82

    .line 123
    :goto_70
    return-void

    .line 70
    .restart local v2       #wm:Landroid/view/IWindowManager;
    :cond_71
    const/4 v5, 0x1

    :try_start_72
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_74} :catch_75

    goto :goto_44

    .line 72
    .end local v2           #wm:Landroid/view/IWindowManager;
    :catch_75
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "WallpaperWidget"

    const-string v6, "Failing checking whether status bar can hide"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z

    goto :goto_44

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_80
    move v3, v4

    .line 78
    goto :goto_50

    .line 84
    :cond_82
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 85
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v7, v7}, Lcom/android/internal/policy/impl/WallpaperWidget;->addView(Landroid/view/View;II)V

    .line 89
    new-instance v3, Lcom/android/internal/policy/impl/WallpaperWidget$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/WallpaperWidget$1;-><init>(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.lockscreenwallpaper.CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v3, "com.android.lockscreenwallpaper.LIVE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    new-instance v3, Lcom/android/internal/policy/impl/WallpaperWidget$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/WallpaperWidget$2;-><init>(Lcom/android/internal/policy/impl/WallpaperWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_70
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/WallpaperWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->handleWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/WallpaperWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->handleLiveWallpaperUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/WallpaperWidget;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleLiveWallpaperUpdate()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    return-void
.end method

.method private handleWallpaperUpdate()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setLockScreenWallpaper()V

    .line 129
    return-void
.end method

.method private setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;
    .registers 7

    .prologue
    const v5, 0x10803bb

    .line 194
    new-instance v1, Ljava/io/File;

    const-string v4, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 196
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 198
    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #is:Ljava/io/InputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_23

    .line 215
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_16
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 218
    .local v3, tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_3a

    .line 222
    :goto_22
    return-object v3

    .line 199
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_23
    move-exception v0

    .line 205
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 206
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_16

    .line 213
    .end local v0           #e:Ljava/io/IOException;
    :cond_2f
    iget-object v4, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_16

    .line 219
    .restart local v3       #tempBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_3a
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22
.end method

.method private setLockScreenWallpaper()V
    .registers 8

    .prologue
    .line 147
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z

    if-eqz v3, :cond_37

    .line 148
    iget v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_32

    .line 149
    const-string v3, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    .line 157
    :goto_d
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 161
    :try_start_1a
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_31} :catch_3c

    .line 190
    :goto_31
    return-void

    .line 151
    .end local v2           #file:Ljava/io/File;
    :cond_32
    const-string v3, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper_land.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    goto :goto_d

    .line 154
    :cond_37
    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    goto :goto_d

    .line 163
    .restart local v2       #file:Ljava/io/File;
    :catch_3c
    move-exception v1

    .line 164
    .local v1, ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_31

    .line 169
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4e
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsTabletDevice:Z

    if-eqz v3, :cond_96

    .line 170
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    const-string v4, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper.jpg"

    if-ne v3, v4, :cond_93

    const-string v3, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper_land.jpg"

    :goto_5a
    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    .line 175
    :goto_5c
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, alternateFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 178
    :try_start_69
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_80} :catch_81

    goto :goto_31

    .line 180
    :catch_81
    move-exception v1

    .line 181
    .restart local v1       #ex:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_31

    .line 170
    .end local v0           #alternateFile:Ljava/io/File;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_93
    const-string v3, "/data/data/com.android.sec.gallery3d/zzzzzz_lockscreen_wallpaper.jpg"

    goto :goto_5a

    .line 172
    :cond_96
    const-string v3, "/data/data/com.cooliris.media/files/zzzzzz_lockscreen_wallpaper.jpg"

    iput-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mWallpapaerPath:Ljava/lang/String;

    goto :goto_5c

    .line 186
    .restart local v0       #alternateFile:Ljava/io/File;
    :cond_9b
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->setDefaultWallpaper()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_31
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 139
    const-string v0, "WallpaperWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_c

    .line 143
    :goto_b
    return-void

    .line 142
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/WallpaperWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/WallpaperWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_b
.end method
