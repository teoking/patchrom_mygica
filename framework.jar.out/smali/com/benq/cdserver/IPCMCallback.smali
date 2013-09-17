.class public interface abstract Lcom/benq/cdserver/IPCMCallback;
.super Ljava/lang/Object;
.source "IPCMCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benq/cdserver/IPCMCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract actionPerformed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract passString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
