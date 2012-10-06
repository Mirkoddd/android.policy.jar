.class synthetic Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 314
    invoke-static {}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->values()[Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
