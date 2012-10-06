.class public abstract Lcom/vmware/mvp/vm/IMvpPower$Stub;
.super Landroid/os/Binder;
.source "IMvpPower.java"

# interfaces
.implements Lcom/vmware/mvp/vm/IMvpPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vmware/mvp/vm/IMvpPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vmware/mvp/vm/IMvpPower$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vmware.mvp.vm.IMvpPower"

.field static final TRANSACTION_getPowerState:I = 0x1

.field static final TRANSACTION_powerOff:I = 0x3

.field static final TRANSACTION_powerOn:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.vmware.mvp.vm.IMvpPower"

    invoke-virtual {p0, p0, v0}, Lcom/vmware/mvp/vm/IMvpPower$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vmware/mvp/vm/IMvpPower;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "com.vmware.mvp.vm.IMvpPower"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/vmware/mvp/vm/IMvpPower;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/vmware/mvp/vm/IMvpPower;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/vmware/mvp/vm/IMvpPower$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/vmware/mvp/vm/IMvpPower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_3c

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 46
    :sswitch_9
    const-string v1, "com.vmware.mvp.vm.IMvpPower"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 51
    :sswitch_f
    const-string v1, "com.vmware.mvp.vm.IMvpPower"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/vmware/mvp/vm/IMvpPower$Stub;->getPowerState()Z

    move-result v0

    .line 53
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v0, :cond_22

    move v1, v2

    :goto_1e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_22
    const/4 v1, 0x0

    goto :goto_1e

    .line 59
    .end local v0           #_result:Z
    :sswitch_24
    const-string v1, "com.vmware.mvp.vm.IMvpPower"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/vmware/mvp/vm/IMvpPower$Stub;->powerOn()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 66
    :sswitch_30
    const-string v1, "com.vmware.mvp.vm.IMvpPower"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/vmware/mvp/vm/IMvpPower$Stub;->powerOff()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 42
    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_30
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
