.class Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationBarHideConcept"
.end annotation


# instance fields
.field private mComponentNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 3
    .parameter

    .prologue
    .line 5214
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5215
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5214
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public isNavigationBarCanHide(Landroid/content/ComponentName;)Z
    .registers 3
    .parameter "componentName"

    .prologue
    .line 5233
    if-nez p1, :cond_4

    .line 5234
    const/4 v0, 0x0

    .line 5238
    :goto_3
    return v0

    .line 5237
    :cond_4
    monitor-enter p0

    .line 5238
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    goto :goto_3

    .line 5239
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public setNavigationBarCanHide(Landroid/content/ComponentName;Z)Z
    .registers 4
    .parameter "componentName"
    .parameter "canHide"

    .prologue
    .line 5218
    if-nez p1, :cond_4

    .line 5219
    const/4 v0, 0x0

    .line 5228
    :goto_3
    return v0

    .line 5222
    :cond_4
    monitor-enter p0

    .line 5223
    if-eqz p2, :cond_12

    .line 5224
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5228
    :goto_c
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_3

    .line 5229
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0

    .line 5226
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NavigationBarHideConcept;->mComponentNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    goto :goto_c
.end method
