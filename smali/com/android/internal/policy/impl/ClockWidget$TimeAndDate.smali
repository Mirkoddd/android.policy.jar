.class Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeAndDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;
    }
.end annotation


# instance fields
.field private mAM:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDate_Month:Landroid/widget/TextView;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 474
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;

    .line 555
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    .line 556
    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "hourString"
    .parameter "minString"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 670
    const/16 v4, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_76

    .line 678
    .local v3, unlock_clock_drawables:[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [I

    .line 679
    .local v0, choiceHourNumber:[I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [I

    .line 680
    .local v1, choiceMinNumber:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2d

    .line 681
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v2

    .line 680
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 683
    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_45

    .line 684
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 688
    :cond_45
    aget v4, v0, v7

    if-ne v4, v6, :cond_6c

    .line 690
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 694
    :goto_50
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 695
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin01:Landroid/widget/ImageView;

    aget v5, v1, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 696
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin02:Landroid/widget/ImageView;

    aget v5, v1, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 697
    return-void

    .line 692
    :cond_6c
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    aget v5, v0, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_50

    .line 670
    :array_76
    .array-data 0x4
        0xcct 0x7t 0x8t 0x1t
        0xcet 0x7t 0x8t 0x1t
        0xd1t 0x7t 0x8t 0x1t
        0xd3t 0x7t 0x8t 0x1t
        0xd5t 0x7t 0x8t 0x1t
        0xd7t 0x7t 0x8t 0x1t
        0xd9t 0x7t 0x8t 0x1t
        0xdbt 0x7t 0x8t 0x1t
        0xddt 0x7t 0x8t 0x1t
        0xdft 0x7t 0x8t 0x1t
    .end array-data
.end method

.method public static getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .parameter "context"

    .prologue
    .line 646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 648
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 649
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 650
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 652
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 653
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    array-length v7, v2

    if-ge v3, v7, :cond_3b

    .line 654
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_1e

    .line 655
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_1e
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_27

    .line 658
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_27
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_30

    .line 661
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_30
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_38

    .line 664
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 666
    :cond_3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private refreshTimeAndDate()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 608
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 611
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v9, :cond_8f

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "HH"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 613
    .local v1, hourFormat:Ljava/text/SimpleDateFormat;
    :goto_19
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, hourString:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "mm"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 616
    .local v4, minuteFormat:Ljava/text/SimpleDateFormat;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, minString:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v9, :cond_97

    const/16 v6, 0x8

    :goto_43
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_99

    .line 623
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v8, 0x104008c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :goto_62
    const-string v0, ""

    .line 633
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, value:Ljava/lang/String;
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a

    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 635
    :cond_7a
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10400cc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 641
    :cond_83
    :goto_83
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mDate_Month:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    return-void

    .line 611
    .end local v0           #dateFormat:Ljava/lang/String;
    .end local v1           #hourFormat:Ljava/text/SimpleDateFormat;
    .end local v2           #hourString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v4           #minuteFormat:Ljava/text/SimpleDateFormat;
    .end local v5           #value:Ljava/lang/String;
    :cond_8f
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "hh"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_19

    .line 621
    .restart local v1       #hourFormat:Ljava/text/SimpleDateFormat;
    .restart local v2       #hourString:Ljava/lang/String;
    .restart local v3       #minString:Ljava/lang/String;
    .restart local v4       #minuteFormat:Ljava/text/SimpleDateFormat;
    :cond_97
    const/4 v6, 0x0

    goto :goto_43

    .line 625
    :cond_99
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v8, 0x104008d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_62

    .line 636
    .restart local v0       #dateFormat:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_ac
    const-string v6, "dd-MM-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 637
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10400cb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_83
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 701
    const-string v0, ""

    .line 703
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10400c6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, dateFormat:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 708
    .local v2, dateText:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 709
    .local v5, timeText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 710
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "HH"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 712
    .local v4, minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10405e0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 725
    :goto_56
    move-object v0, v5

    .line 726
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

    .line 728
    return-object v0

    .line 715
    .end local v3           #hourText:Ljava/lang/String;
    .end local v4           #minuteText:Ljava/lang/String;
    :cond_70
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "hh"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 716
    .restart local v3       #hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 717
    .restart local v4       #minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_b4

    .line 718
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10405d4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_56

    .line 720
    :cond_b4
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10405d5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_56
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 560
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 563
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_29

    .line 564
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;-><init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 565
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 566
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 573
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_42

    .line 574
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 575
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 579
    :cond_42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V

    .line 580
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 584
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 588
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1d

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 591
    :cond_1d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 595
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 596
    const v0, 0x1020390

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    .line 597
    const v0, 0x1020391

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour02:Landroid/widget/ImageView;

    .line 598
    const v0, 0x1020393

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin01:Landroid/widget/ImageView;

    .line 599
    const v0, 0x1020394

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin02:Landroid/widget/ImageView;

    .line 600
    const v0, 0x1020395

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    .line 601
    const v0, 0x1020397

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mDate_Month:Landroid/widget/TextView;

    .line 602
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    .line 603
    return-void
.end method
