.class Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeKeyDoubleClickConcept"
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG_HKDC:Ljava/lang/String; = "HomeKeyDoubleClick"


# instance fields
.field private mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

.field private mHomeActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentExplicit:Landroid/content/Intent;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPostDelay:J

.field private mPosted:Z

.field private mSentHomeDownToApp:Z

.field private mStatusBar:Landroid/app/StatusBarManager;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 4
    .parameter

    .prologue
    .line 5419
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 5360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    .line 5361
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPostDelay:J

    .line 5362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mIntentExplicit:Landroid/content/Intent;

    .line 5363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPm:Landroid/content/pm/PackageManager;

    .line 5371
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    .line 5420
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 5358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isSingleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 5358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->singleClickJob()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 5358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isDoubleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 5358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->doubleClickJob()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 5358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V

    return-void
.end method

.method private doubleClickJob()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 5612
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    if-nez v1, :cond_56

    .line 5613
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 5615
    :try_start_d
    const-string v1, "HomeKeyDoubleClick"

    const-string v3, "in startVoiceCommandActivity(), use explicit internal Intent"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5616
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v3, "homekey"

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 5617
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5618
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    :goto_3a
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5620
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_48} :catch_4d

    .line 5630
    :cond_48
    :goto_48
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 5631
    return-void

    :cond_4b
    move v1, v2

    .line 5618
    goto :goto_3a

    .line 5621
    :catch_4d
    move-exception v0

    .line 5622
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "HomeKeyDoubleClick"

    const-string v3, "Fail to launch voice talk"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 5626
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    :cond_56
    const-string v1, "HomeKeyDoubleClick"

    const-string v3, "in startVoiceCommandActivity(), Secure lock is off, but mSentHomeDownToApp is true. now set mSentHomeDownToApp to false and do nothing."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method private isDoubleClick()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5480
    const-string v0, "HomeKeyDoubleClick"

    const-string v3, "isDoubleClick() is called"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5483
    monitor-enter p0

    .line 5484
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_59

    .line 5485
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_59

    .line 5489
    const-string v0, "HomeKeyDoubleClick"

    const-string v2, "in isDoubleClick() true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5490
    monitor-exit p0

    move v0, v1

    .line 5496
    :goto_58
    return v0

    .line 5495
    :cond_59
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in isDoubleClick() false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    monitor-exit p0

    move v0, v2

    goto :goto_58

    .line 5497
    :catchall_63
    move-exception v0

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_a .. :try_end_65} :catchall_63

    throw v0
.end method

.method private isSingleClick()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5462
    const-string v0, "HomeKeyDoubleClick"

    const-string v3, "isSingleClick() is called"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5465
    monitor-enter p0

    .line 5466
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_44

    .line 5467
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_44

    .line 5469
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in isSingleClick() true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5470
    monitor-exit p0

    move v0, v2

    .line 5475
    :goto_43
    return v0

    .line 5474
    :cond_44
    const-string v0, "HomeKeyDoubleClick"

    const-string v2, "in isSingleClick() false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    monitor-exit p0

    move v0, v1

    goto :goto_43

    .line 5476
    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_a .. :try_end_50} :catchall_4e

    throw v0
.end method

.method private printList()V
    .registers 6

    .prologue
    .line 5515
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 5516
    .local v0, buff:Ljava/lang/String;
    const-string v0, "list value = "

    .line 5518
    monitor-enter p0

    .line 5519
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5520
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_3b

    .line 5521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5520
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 5523
    :cond_3b
    const-string v3, "HomeKeyDoubleClick"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5524
    monitor-exit p0

    .line 5525
    return-void

    .line 5524
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_42
    move-exception v3

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_42

    throw v3
.end method

.method private reset()V
    .registers 4

    .prologue
    .line 5501
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "reset() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5502
    monitor-enter p0

    .line 5503
    :try_start_8
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    if-eqz v0, :cond_15

    .line 5504
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5506
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 5507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 5508
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5509
    const-string v0, "HomeKeyDoubleClick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in reset()  after reset, mPosted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mHomeActionList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    monitor-exit p0

    .line 5511
    return-void

    .line 5510
    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method private singleClickJob()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 5528
    const-string v6, "HomeKeyDoubleClick"

    const-string v7, "singleClickJob() is called."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    const/4 v1, 0x0

    .line 5536
    .local v1, incomingRinging:Z
    const/4 v3, 0x0

    .line 5537
    .local v3, isVoIPRinging:Z
    const/4 v2, 0x0

    .line 5539
    .local v2, isAnyKeyMode:Z
    :try_start_b
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v5

    .line 5540
    .local v5, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v5, :cond_41

    .line 5541
    invoke-interface {v5}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_49

    move-result v3

    .line 5549
    .end local v5           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :goto_15
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "anykey_mode"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_52

    .line 5550
    const/4 v2, 0x0

    .line 5557
    :goto_27
    :try_start_27
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 5558
    .local v4, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_31

    .line 5559
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_30} :catch_54

    move-result v1

    .line 5566
    .end local v4           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_31
    :goto_31
    if-eqz v3, :cond_6e

    .line 5567
    if-eqz v2, :cond_3e

    .line 5569
    :try_start_35
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v5

    .line 5570
    .restart local v5       #voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v5, :cond_5d

    .line 5571
    invoke-interface {v5}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3e} :catch_65

    .line 5608
    .end local v5           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_3e
    :goto_3e
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 5609
    return-void

    .line 5543
    .restart local v5       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_41
    :try_start_41
    const-string v6, "WindowManager"

    const-string v7, "Unable to find IVoIPInterface interface"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49

    goto :goto_15

    .line 5545
    .end local v5           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_49
    move-exception v0

    .line 5546
    .local v0, ex:Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 5552
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_52
    const/4 v2, 0x1

    goto :goto_27

    .line 5561
    :catch_54
    move-exception v0

    .line 5562
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException from getTelephonyService()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 5573
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v5       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_5d
    :try_start_5d
    const-string v6, "WindowManager"

    const-string v7, "Unable to find IVoIPInterface interface"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_64} :catch_65

    goto :goto_3e

    .line 5575
    .end local v5           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_65
    move-exception v0

    .line 5576
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 5580
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_6e
    if-eqz v1, :cond_78

    .line 5581
    const-string v6, "WindowManager"

    const-string v7, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 5599
    :cond_78
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    if-nez v6, :cond_89

    .line 5600
    const-string v6, "HomeKeyDoubleClick"

    const-string v7, "  in singleClickJob(), mSentHomeDownToApp is false. Now call launchHomeFromHotKey()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5601
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_3e

    .line 5603
    :cond_89
    const-string v6, "HomeKeyDoubleClick"

    const-string v7, "  in singleClickJob(), mSentHomeDownToApp is true. now set mSentHomeDownToApp to false and do nothing."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method


# virtual methods
.method public addAction(IIZ)V
    .registers 7
    .parameter "action"
    .parameter "repeatCount"
    .parameter "canceled"

    .prologue
    .line 5438
    const-string v0, "HomeKeyDoubleClick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAction() is called.  action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  canceled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    monitor-enter p0

    .line 5441
    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    :try_start_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_30

    .line 5442
    monitor-exit p0

    .line 5459
    :goto_2f
    return-void

    .line 5445
    :cond_30
    if-nez p3, :cond_34

    if-eqz p2, :cond_43

    .line 5446
    :cond_34
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in addAction(), action is canceled OR repeatCount is not zero. now call reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5447
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V

    .line 5448
    monitor-exit p0

    goto :goto_2f

    .line 5458
    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    throw v0

    .line 5451
    :cond_43
    :try_start_43
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in addAction(), now add"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5454
    if-nez p1, :cond_60

    .line 5455
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in addAction(), down event. now call postCheckRunnable()."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->postCheckRunnable()V

    .line 5458
    :cond_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_43 .. :try_end_61} :catchall_40

    goto :goto_2f
.end method

.method public postCheckRunnable()V
    .registers 5

    .prologue
    .line 5423
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "postCheckRunnable() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    monitor-enter p0

    .line 5425
    :try_start_8
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    if-nez v0, :cond_2b

    .line 5426
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in postCheckRunnable(), now posting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5427
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPostDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5428
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in postCheckRunnable(), posting success."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    :goto_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 5434
    :cond_2b
    monitor-exit p0

    .line 5435
    return-void

    .line 5430
    :cond_2d
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in postCheckRunnable(), posting failure."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 5434
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public setHomeDownEventSent()V
    .registers 2

    .prologue
    .line 5634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 5635
    return-void
.end method
