.class public interface abstract Lcom/benq/cdserver/IPCMBinder;
.super Ljava/lang/Object;
.source "IPCMBinder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benq/cdserver/IPCMBinder$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/benq/cdserver/IPCMCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/benq/cdserver/IPCMCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
