.class Lcom/android/internal/policy/impl/SignatureLockScreen$ReorderLayout;
.super Landroid/widget/FrameLayout;
.source "SignatureLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SignatureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReorderLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 572
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 575
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SignatureLockScreen$ReorderLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 576
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .registers 6
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 580
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/SignatureLockScreen$ReorderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    .line 585
    .local v0, id:I
    move v1, p2

    .line 587
    .local v1, order:I
    const v2, 0x10202e7

    if-ne v2, v0, :cond_11

    .line 588
    add-int/lit8 v1, p1, -0x2

    .line 593
    :cond_10
    :goto_10
    return v1

    .line 589
    :cond_11
    const v2, 0x10202eb

    if-ne v2, v0, :cond_10

    .line 590
    add-int/lit8 v1, p1, -0x1

    goto :goto_10
.end method
