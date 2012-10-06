.class public Lcom/android/internal/policy/impl/CircleUnlockView;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;,
        Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;
    }
.end annotation


# instance fields
.field private final ALPHA_ANI_DURATION:J

.field private final ALPHA_ANI_END:F

.field private final ALPHA_ANI_START:F

.field private final ARROW_REPEAT_ANI_DURATION:I

.field private final ARROW_REPEAT_ANI_OFFSET:I

.field private final ARROW_SCALE_ANI_END:F

.field private final ARROW_SCALE_ANI_START:F

.field private final ARROW_START_ANI_DURATION:I

.field private final ARROW_START_ANI_OFFSET:I

.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_MIN_ALPHA:I

.field private DBG:Z

.field private final SCALE_ANI_DURATION:J

.field private final SCALE_ANI_END:F

.field private final SCALE_ANI_START:F

.field private TAG:Ljava/lang/String;

.field private final UNLOCK_DRAG_THRESHOLD:D

.field private final UNLOCK_RELEASE_THRESHOLD:D

.field private alphaAnim:Landroid/view/animation/AlphaAnimation;

.field private arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

.field private arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

.field private arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

.field private arrowStartAnim1:Landroid/view/animation/AnimationSet;

.field private arrowStartAnim2:Landroid/view/animation/AnimationSet;

.field private arrowStartAnim3:Landroid/view/animation/AnimationSet;

.field private arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

.field private arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

.field private arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

.field private circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

.field private circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleAniFlag:Z

.field private mCircleArrow1:Landroid/widget/ImageView;

.field private mCircleArrow1_1:Landroid/widget/ImageView;

.field private mCircleArrow2:Landroid/widget/ImageView;

.field private mCircleArrow2_1:Landroid/widget/ImageView;

.field private mCircleArrow3:Landroid/widget/ImageView;

.field private mCircleArrow3_1:Landroid/widget/ImageView;

.field private mCircleCenter:Landroid/widget/ImageView;

.field private mCircleIn:Landroid/widget/ImageView;

.field private mCircleMain:Landroid/widget/FrameLayout;

.field private mCircleOut:Landroid/widget/ImageView;

.field private mCircleRoot:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mIsFirst:Z

.field private mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

.field private mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

.field private mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

.field private mX:F

.field private mY:F

.field private originalCircleX:F

.field private originalCircleY:F

.field private scaleAnim:Landroid/view/animation/ScaleAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 8
    .parameter "context"
    .parameter "callback"

    .prologue
    const/16 v4, 0x96

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v0, "CircleLockScreen"

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    .line 43
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->DBG:Z

    .line 48
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_MAX_ALPHA:I

    .line 49
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->CIRCLE_MIN_ALPHA:I

    .line 50
    const-wide/16 v0, 0x352

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ALPHA_ANI_DURATION:J

    .line 51
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ALPHA_ANI_START:F

    .line 52
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ALPHA_ANI_END:F

    .line 53
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SCALE_ANI_DURATION:J

    .line 54
    const v0, 0x3edc28f6

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SCALE_ANI_START:F

    .line 55
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->SCALE_ANI_END:F

    .line 56
    const v0, 0x3f8ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_SCALE_ANI_START:F

    .line 57
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_SCALE_ANI_END:F

    .line 58
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_START_ANI_DURATION:I

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_START_ANI_OFFSET:I

    .line 60
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_REPEAT_ANI_DURATION:I

    .line 61
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->ARROW_REPEAT_ANI_OFFSET:I

    .line 66
    const-wide v0, 0x3fe99999a0000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    .line 67
    const-wide v0, 0x3ff4ccccc0000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->setLayout()V

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAnimation()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method private circleUnlockAnimation(D)V
    .registers 15
    .parameter "value"

    .prologue
    const/16 v11, 0xff

    const/4 v10, 0x4

    const/4 v5, 0x0

    const-wide v8, 0x3fe99999a0000000L

    const-wide v6, 0x3fc999999999999aL

    .line 481
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "circleUnlockAnimation value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    cmpg-double v2, p1, v6

    if-gez v2, :cond_42

    .line 484
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 485
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 486
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    if-eqz v2, :cond_41

    .line 487
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    .line 488
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 504
    :cond_41
    :goto_41
    return-void

    .line 490
    :cond_42
    cmpl-double v2, p1, v6

    if-lez v2, :cond_7e

    cmpg-double v2, p1, v8

    if-gez v2, :cond_7e

    .line 491
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleAniFlag:Z

    .line 492
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    .line 493
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAllCircleArrowVisibility(I)V

    .line 495
    const-wide v2, 0x4058fffff7aaaaadL

    sub-double v4, p1, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 496
    .local v1, outerCircleOpacity:I
    const-wide v2, -0x3f9b2aaab19c71c5L

    sub-double v4, p1, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 497
    .local v0, innerCircleOpacity:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    mul-int/lit16 v3, v0, 0xff

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 498
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    mul-int/lit16 v3, v1, 0xff

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_41

    .line 499
    .end local v0           #innerCircleOpacity:I
    .end local v1           #outerCircleOpacity:I
    :cond_7e
    cmpl-double v2, p1, v8

    if-ltz v2, :cond_41

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    .line 501
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAllCircleArrowVisibility(I)V

    .line 502
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_41
.end method

.method private getUnlockscreenLockImageIdAt(D)I
    .registers 8
    .parameter "value"

    .prologue
    .line 701
    const/16 v2, 0x14

    new-array v1, v2, [I

    fill-array-data v1, :array_40

    .line 714
    .local v1, unlockscreen_lock_drawables:[I
    const-wide v2, 0x3fb999999999999aL

    cmpg-double v2, p1, v2

    if-gez v2, :cond_2c

    .line 715
    const/4 v0, 0x0

    .line 721
    .local v0, index:I
    :goto_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    aget v2, v1, v0

    return v2

    .line 716
    .end local v0           #index:I
    :cond_2c
    const-wide v2, 0x3ff0cccccccccccdL

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_39

    .line 717
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_11

    .line 719
    .end local v0           #index:I
    :cond_39
    array-length v2, v1

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0       #index:I
    goto :goto_11

    .line 701
    :array_40
    .array-data 0x4
        0x87t 0x7t 0x8t 0x1t
        0x88t 0x7t 0x8t 0x1t
        0x89t 0x7t 0x8t 0x1t
        0x8at 0x7t 0x8t 0x1t
        0x8bt 0x7t 0x8t 0x1t
        0x8ct 0x7t 0x8t 0x1t
        0x8dt 0x7t 0x8t 0x1t
        0x8et 0x7t 0x8t 0x1t
        0x8ft 0x7t 0x8t 0x1t
        0x90t 0x7t 0x8t 0x1t
        0x91t 0x7t 0x8t 0x1t
        0x92t 0x7t 0x8t 0x1t
        0x93t 0x7t 0x8t 0x1t
        0x94t 0x7t 0x8t 0x1t
        0x95t 0x7t 0x8t 0x1t
        0x96t 0x7t 0x8t 0x1t
        0x97t 0x7t 0x8t 0x1t
        0x98t 0x7t 0x8t 0x1t
        0x99t 0x7t 0x8t 0x1t
        0x9at 0x7t 0x8t 0x1t
    .end array-data
.end method

.method private setCenterImage(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 685
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 686
    return-void
.end method

.method private setCenterImage(Landroid/view/View;D)V
    .registers 7
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 689
    if-nez p1, :cond_d

    .line 691
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/CircleUnlockView;->getUnlockscreenLockImageIdAt(D)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 698
    :goto_c
    return-void

    .line 694
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 695
    invoke-virtual {p1, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 696
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 697
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_c
.end method


# virtual methods
.method public clearAllAnimation()V
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 729
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 730
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 731
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 733
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 734
    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 31
    .parameter "view"
    .parameter "event"

    .prologue
    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handleTouchEvent() in CircleUnlockView event = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 528
    .local v18, touchedEventX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 531
    .local v19, touchedEventY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    if-nez v22, :cond_3e

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "Occured Divided by zero Exception caused by mCircleMain-Null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v22, 0x0

    .line 678
    :goto_3d
    return v22

    .line 534
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v22

    if-nez v22, :cond_58

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "Occured Divided by zero Exception caused by mCircleMain.getHeight() == 0"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/16 v22, 0x0

    goto :goto_3d

    .line 537
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v22

    if-nez v22, :cond_72

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "Occured Divided by zero Exception caused by mCircleMain.getWidth() == 0"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v22, 0x0

    goto :goto_3d

    .line 542
    :cond_72
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    packed-switch v22, :pswitch_data_426

    .line 678
    :cond_79
    :goto_79
    const/16 v22, 0x1

    goto :goto_3d

    .line 546
    :pswitch_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_91

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;->onCircleTouchDown(Landroid/view/View;)V

    .line 550
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mX:F

    .line 557
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mY:F

    .line 558
    if-eqz p1, :cond_186

    .line 559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    move/from16 v22, v0

    sub-float v22, v22, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 560
    .local v20, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    move/from16 v22, v0

    sub-float v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 567
    .local v21, yOffset:I
    :goto_116
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 571
    .local v11, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v15, v22, v20

    .line 572
    .local v15, rightMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v4, v22, v21

    .line 573
    .local v4, bottomMargin:I
    move/from16 v0, v20

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 574
    iput v15, v11, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 575
    move/from16 v0, v21

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 576
    iput v4, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockAnimation(D)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_79

    .line 562
    .end local v4           #bottomMargin:I
    .end local v11           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15           #rightMargin:I
    .end local v20           #xOffset:I
    .end local v21           #yOffset:I
    :cond_186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 563
    .restart local v20       #xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .restart local v21       #yOffset:I
    goto/16 :goto_116

    .line 587
    .end local v20           #xOffset:I
    .end local v21           #yOffset:I
    :pswitch_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d9

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;->onCircleTouchMove(Landroid/view/View;)V

    .line 591
    :cond_1d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 594
    const/4 v5, 0x0

    .line 595
    .local v5, diffX:I
    const/4 v6, 0x0

    .line 596
    .local v6, diffY:I
    if-eqz p1, :cond_2fb

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    div-int/lit8 v12, v22, 0x2

    .line 599
    .local v12, mCircleCenterX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    div-int/lit8 v13, v22, 0x2

    .line 600
    .local v13, mCircleCenterY:I
    int-to-float v0, v12

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v5, v0

    .line 601
    int-to-float v0, v13

    move/from16 v22, v0

    sub-float v22, v19, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v23

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v23

    div-int v6, v22, v23

    .line 608
    .end local v12           #mCircleCenterX:I
    .end local v13           #mCircleCenterY:I
    :goto_21c
    int-to-double v0, v5

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    int-to-double v0, v6

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v9, v22, v24

    .line 609
    .local v9, distance_square:D
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 610
    .local v7, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_32d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    .line 611
    .local v14, min:I
    :goto_258
    div-int/lit8 v22, v14, 0x2

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 612
    .local v16, threshold:D
    div-double v22, v7, v16

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    .line 613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->DBG:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onTouchEvent() : threshold="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", distance="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", distanceRatio ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_2ab
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockAnimation(D)V

    .line 617
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockView;->setCenterImage(Landroid/view/View;D)V

    .line 620
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff4ccccc0000000L

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_79

    .line 621
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    move/from16 v22, v0

    if-eqz v22, :cond_79

    .line 622
    if-nez p1, :cond_339

    .line 626
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    .line 627
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_79

    .line 604
    .end local v7           #distance:D
    .end local v9           #distance_square:D
    .end local v14           #min:I
    .end local v16           #threshold:D
    :cond_2fb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    move/from16 v0, v22

    float-to-int v5, v0

    .line 605
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mY:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v23

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v23

    div-int v6, v22, v23

    goto/16 :goto_21c

    .line 610
    .restart local v7       #distance:D
    .restart local v9       #distance_square:D
    :cond_32d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    goto/16 :goto_258

    .line 634
    .restart local v14       #min:I
    .restart local v16       #threshold:D
    :cond_339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_79

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto/16 :goto_79

    .line 644
    .end local v5           #diffX:I
    .end local v6           #diffY:I
    .end local v7           #distance:D
    .end local v9           #distance_square:D
    .end local v14           #min:I
    .end local v16           #threshold:D
    :pswitch_350
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockView;->clearAllAnimation()V

    .line 645
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setAllCircleArrowVisibility(I)V

    .line 646
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_379

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;->onCircleTouchUp(Landroid/view/View;)V

    .line 654
    :cond_379
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->DBG:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onTouchEvent(ACTION_UP) : distanceRatio ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_3a3
    const-wide v22, 0x3fe99999a0000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v24, v0

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_407

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff4ccccc0000000L

    cmpg-double v22, v22, v24

    if-gez v22, :cond_407

    .line 656
    if-nez p1, :cond_3f1

    .line 658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3e4

    .line 659
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    .line 660
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/CircleUnlockView;->mDistanceRatio:D

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 674
    :cond_3e4
    :goto_3e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_79

    .line 665
    :cond_3f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3e4

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;->onCircleUnlocked(Landroid/view/View;)V

    goto :goto_3e4

    .line 670
    :cond_407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3e4

    .line 542
    :pswitch_data_426
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_350
        :pswitch_1c4
        :pswitch_350
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleX:F

    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->originalCircleY:F

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    .line 752
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mIsFirst:Z

    .line 748
    return-void
.end method

.method public setAllCircleArrowVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    return-void
.end method

.method public setAnimation()V
    .registers 10

    .prologue
    .line 228
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3edc28f6

    const/high16 v2, 0x3f80

    const v3, 0x3edc28f6

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 234
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3ecccccd

    const v2, 0x3ecccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x352

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$1;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 261
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->scaleAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOutCircleAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->alphaAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 265
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 270
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$2;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 288
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim1:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 294
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 299
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$3;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 317
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim2:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 324
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f8ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 328
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$4;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 346
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartScaleAnim3:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 352
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$5;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 373
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$6;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 394
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f333333

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$7;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 415
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 417
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewAlphaAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$8;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 435
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3eb33333

    const/high16 v3, 0x3f80

    const v4, 0x3eb33333

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->circleUnlockViewScaleAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleUnlockView$9;-><init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 457
    return-void
.end method

.method public setLayout()V
    .registers 9

    .prologue
    const v7, 0x1080737

    const/4 v6, -0x1

    const/16 v5, 0x66

    const/4 v4, -0x2

    const/4 v3, 0x4

    .line 149
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    .line 156
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    const v2, 0x108073a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    const v2, 0x108073b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    const v2, 0x1080738

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    const v2, 0x1080739

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    .line 187
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    const v2, 0x1080738

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    .line 192
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    const v2, 0x1080739

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    const v2, 0x108073e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 201
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v6, v6}, Lcom/android/internal/policy/impl/CircleUnlockView;->addView(Landroid/view/View;II)V

    .line 216
    return-void
.end method

.method public setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V
    .registers 2
    .parameter "onCircleTouchListener"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;

    .line 475
    return-void
.end method

.method public setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;)V
    .registers 2
    .parameter "onCircleUnlockListener"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView;->mOnCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    .line 466
    return-void
.end method
