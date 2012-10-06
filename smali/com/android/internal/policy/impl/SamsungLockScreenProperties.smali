.class public Lcom/android/internal/policy/impl/SamsungLockScreenProperties;
.super Ljava/lang/Object;
.source "SamsungLockScreenProperties.java"


# static fields
.field private static mChecked:Z

.field private static mDivideMissedEventChecked:Z

.field private static mShouldbeDisplaySalesCode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static isAUSFeature()Z
    .registers 2

    .prologue
    .line 86
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "HUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "XSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 88
    :cond_2e
    const/4 v1, 0x1

    .line 90
    :goto_2f
    return v1

    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method public static isDivideMissedEventEnable()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 67
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, SalesCode:Ljava/lang/String;
    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, CountryCode:Ljava/lang/String;
    const-string v3, "Germany"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "DBT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 82
    :cond_1d
    :goto_1d
    return v2

    .line 74
    :cond_1e
    const-string v3, "SKT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "KTT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "LGT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 78
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 82
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method public static isPLMNEnable()Z
    .registers 2

    .prologue
    .line 23
    const-string v0, "GT-I9100"

    const-string v1, "SGH-I777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "GT-I9100"

    const-string v1, "GT-I9100M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "GT-I9100"

    const-string v1, "SGH-T869"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 24
    :cond_1e
    const/4 v0, 0x1

    .line 27
    :goto_1f
    return v0

    :cond_20
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isShouldbeDisplayForSalesCode()Z

    move-result v0

    goto :goto_1f
.end method

.method private static isShouldbeDisplayForSalesCode()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 35
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    if-nez v1, :cond_8f

    .line 36
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "TLP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "PAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "XSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "TMH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "HUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "OPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "EPL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 55
    :cond_8b
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 61
    :cond_8d
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 63
    :cond_8f
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    return v1
.end method
