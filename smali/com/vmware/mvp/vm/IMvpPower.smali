.class public interface abstract Lcom/vmware/mvp/vm/IMvpPower;
.super Ljava/lang/Object;
.source "IMvpPower.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vmware/mvp/vm/IMvpPower$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPowerState()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract powerOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract powerOn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
