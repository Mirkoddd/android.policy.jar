.class Lcom/android/internal/policy/impl/ClockWidget$Weather;
.super Landroid/widget/RelativeLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Weather"
.end annotation


# instance fields
.field private final ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsWeatherDateAvailable:Z

.field private mNoServiceText:Landroid/widget/TextView;

.field private mTemperatureUnit:Landroid/graphics/drawable/Drawable;

.field private mTemperatureUnitImage:Landroid/widget/ImageView;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDataBox:Landroid/widget/RelativeLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 186
    const-string v0, "com.sec.android.widgetapp.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 189
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 190
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 191
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 192
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 193
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 194
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 197
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->LOCK_SCREEN_SERVICE_CODE:I

    .line 200
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 201
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 204
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 205
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 208
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 222
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    .line 224
    new-instance v0, Lcom/android/internal/policy/impl/ClockWidget$Weather$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather$1;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Weather;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findDrawableId(I)I
    .registers 3
    .parameter "weatherIconNum"

    .prologue
    const/4 v0, 0x0

    .line 377
    packed-switch p1, :pswitch_data_38

    .line 439
    :goto_4
    :pswitch_4
    return v0

    .line 384
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 388
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 390
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 395
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 397
    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 401
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 404
    :pswitch_11
    const/4 v0, 0x7

    goto :goto_4

    .line 406
    :pswitch_13
    const/16 v0, 0x8

    goto :goto_4

    .line 409
    :pswitch_16
    const/16 v0, 0x9

    goto :goto_4

    .line 412
    :pswitch_19
    const/16 v0, 0xa

    goto :goto_4

    .line 416
    :pswitch_1c
    const/16 v0, 0xb

    goto :goto_4

    .line 420
    :pswitch_1f
    const/16 v0, 0xc

    goto :goto_4

    .line 422
    :pswitch_22
    const/16 v0, 0xd

    goto :goto_4

    .line 424
    :pswitch_25
    const/16 v0, 0xe

    goto :goto_4

    .line 426
    :pswitch_28
    const/16 v0, 0xf

    goto :goto_4

    .line 428
    :pswitch_2b
    const/16 v0, 0x10

    goto :goto_4

    .line 430
    :pswitch_2e
    const/16 v0, 0x11

    goto :goto_4

    .line 435
    :pswitch_31
    const/16 v0, 0x12

    goto :goto_4

    .line 437
    :pswitch_34
    const/16 v0, 0x13

    goto :goto_4

    .line 377
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_4
        :pswitch_4
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_34
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_16
        :pswitch_1c
    .end packed-switch
.end method

.method private setWeatherIcon(I)V
    .registers 6
    .parameter "iconNum"

    .prologue
    .line 360
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    .line 372
    .local v1, unlock_weather_drawables:[I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findDrawableId(I)I

    move-result v0

    .line 373
    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    return-void

    .line 360
    nop

    :array_14
    .array-data 0x4
        0xaet 0x7t 0x8t 0x1t
        0xaft 0x7t 0x8t 0x1t
        0xb0t 0x7t 0x8t 0x1t
        0xb1t 0x7t 0x8t 0x1t
        0xb2t 0x7t 0x8t 0x1t
        0xb3t 0x7t 0x8t 0x1t
        0xb4t 0x7t 0x8t 0x1t
        0xb5t 0x7t 0x8t 0x1t
        0xb6t 0x7t 0x8t 0x1t
        0xb7t 0x7t 0x8t 0x1t
        0xb8t 0x7t 0x8t 0x1t
        0xb9t 0x7t 0x8t 0x1t
        0xb9t 0x7t 0x8t 0x1t
        0xbat 0x7t 0x8t 0x1t
        0xbbt 0x7t 0x8t 0x1t
        0xbct 0x7t 0x8t 0x1t
        0xbdt 0x7t 0x8t 0x1t
        0xbet 0x7t 0x8t 0x1t
        0xbft 0x7t 0x8t 0x1t
        0xc0t 0x7t 0x8t 0x1t
        0xc1t 0x7t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .registers 11

    .prologue
    const v9, 0x10405de

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 445
    const-string v0, ""

    .line 447
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    if-nez v7, :cond_d

    move-object v1, v0

    .line 463
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_c
    return-object v1

    .line 450
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_d
    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "aw_daemon_service_key_temp_scale"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_92

    .line 451
    .local v5, isCelsius:Z
    :goto_1b
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 452
    .local v4, currentTemp:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_weather_text"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, TtsWeather:Ljava/lang/String;
    if-eqz v5, :cond_94

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x10405dc

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, TtsDegreeText:Ljava/lang/String;
    :goto_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    const-string v6, "ClockWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 463
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto/16 :goto_c

    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #TtsDegreeText:Ljava/lang/String;
    .end local v3           #TtsWeather:Ljava/lang/String;
    .end local v4           #currentTemp:F
    .end local v5           #isCelsius:Z
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_92
    move v5, v6

    .line 450
    goto :goto_1b

    .line 458
    .restart local v3       #TtsWeather:Ljava/lang/String;
    .restart local v4       #currentTemp:F
    .restart local v5       #isCelsius:Z
    :cond_94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x10405dd

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #TtsDegreeText:Ljava/lang/String;
    goto :goto_5c
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 240
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_24

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 246
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v1, "com.sec.android.widgetapp.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Weather;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->updateWeatherInfo()V

    .line 267
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 271
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    :cond_e
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 283
    const v0, 0x102039d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v1, 0x10405cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 285
    const v0, 0x102039e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/RelativeLayout;

    .line 286
    const v0, 0x10203a0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    .line 287
    const v0, 0x10203a2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    .line 288
    const v0, 0x10203a3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnitImage:Landroid/widget/ImageView;

    .line 289
    const v0, 0x10203a4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 290
    return-void
.end method

.method public updateWeatherInfo()V
    .registers 14

    .prologue
    const/16 v12, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 298
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 299
    .local v5, mAppServiceStatus:I
    and-int/lit8 v9, v5, 0x1

    if-ne v9, v7, :cond_e6

    move v4, v7

    .line 301
    .local v4, isServiceEnable:Z
    :goto_15
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_loc_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, cityId:Ljava/lang/String;
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isServiceEnable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v4, :cond_e9

    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e9

    .line 306
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, And data is ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 308
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 310
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 328
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_current_temp"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, currentTemp:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_temp_scale"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 330
    .local v6, tempScale:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_icon_num"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 331
    .local v3, iconNum:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_city_name"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, cityName:Ljava/lang/String;
    const-string v8, "ClockWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Weather Data : currentTemp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tempScale = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " iconNum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cityName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 341
    if-ne v6, v7, :cond_11c

    .line 342
    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnitImage:Landroid/widget/ImageView;

    const v8, 0x1080782

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    :cond_dd
    :goto_dd
    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setWeatherIcon(I)V

    .line 352
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #currentTemp:Ljava/lang/String;
    .end local v3           #iconNum:I
    .end local v6           #tempScale:I
    :goto_e5
    return-void

    .end local v0           #cityId:Ljava/lang/String;
    .end local v4           #isServiceEnable:Z
    :cond_e6
    move v4, v8

    .line 299
    goto/16 :goto_15

    .line 311
    .restart local v0       #cityId:Ljava/lang/String;
    .restart local v4       #isServiceEnable:Z
    :cond_e9
    if-eqz v4, :cond_10f

    if-eqz v0, :cond_f3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 312
    :cond_f3
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, But data is not ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 314
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 316
    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_e5

    .line 320
    :cond_10f
    const-string v7, "ClockWidget"

    const-string v9, "Weather Demon is not running, Set visibility to GONE"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0, v12}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 322
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_e5

    .line 343
    .restart local v1       #cityName:Ljava/lang/String;
    .restart local v2       #currentTemp:Ljava/lang/String;
    .restart local v3       #iconNum:I
    .restart local v6       #tempScale:I
    :cond_11c
    if-nez v6, :cond_dd

    .line 344
    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnitImage:Landroid/widget/ImageView;

    const v8, 0x1080783

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_dd
.end method
