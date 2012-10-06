.class public Lcom/samsung/wakeup/MultipleWakeUp;
.super Ljava/lang/Object;
.source "MultipleWakeUp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMultipleWakeUpIntent(I)Landroid/content/Intent;
    .registers 3
    .parameter "intentType"

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 11
    .local v0, intent:Landroid/content/Intent;
    packed-switch p0, :pswitch_data_22

    .line 44
    :goto_4
    :pswitch_4
    return-object v0

    .line 14
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_4

    .line 18
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 23
    :pswitch_1a
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_4

    .line 11
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_5
        :pswitch_d
        :pswitch_1a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
