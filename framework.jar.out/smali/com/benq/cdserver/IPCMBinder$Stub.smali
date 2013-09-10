.class public abstract Lcom/benq/cdserver/IPCMBinder$Stub;
.super Landroid/os/Binder;
.source "IPCMBinder.java"

# interfaces
.implements Lcom/benq/cdserver/IPCMBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benq/cdserver/IPCMBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/benq/cdserver/IPCMBinder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.benq.cdserver.IPCMBinder"

.field static final TRANSACTION_getPid:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.benq.cdserver.IPCMBinder"

    invoke-virtual {p0, p0, v0}, Lcom/benq/cdserver/IPCMBinder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/benq/cdserver/IPCMBinder;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.benq.cdserver.IPCMBinder"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/benq/cdserver/IPCMBinder;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/benq/cdserver/IPCMBinder;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/benq/cdserver/IPCMBinder$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/benq/cdserver/IPCMBinder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.benq.cdserver.IPCMBinder"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.benq.cdserver.IPCMBinder"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/benq/cdserver/IPCMBinder$Stub;->getPid()I

    move-result v1

    .line 49
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v1           #_result:I
    :sswitch_2
    const-string v3, "com.benq.cdserver.IPCMBinder"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/benq/cdserver/IPCMCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/benq/cdserver/IPCMCallback;

    move-result-object v0

    .line 58
    .local v0, _arg0:Lcom/benq/cdserver/IPCMCallback;
    invoke-virtual {p0, v0}, Lcom/benq/cdserver/IPCMBinder$Stub;->registerCallback(Lcom/benq/cdserver/IPCMCallback;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v0           #_arg0:Lcom/benq/cdserver/IPCMCallback;
    :sswitch_3
    const-string v3, "com.benq.cdserver.IPCMBinder"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/benq/cdserver/IPCMCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/benq/cdserver/IPCMCallback;

    move-result-object v0

    .line 67
    .restart local v0       #_arg0:Lcom/benq/cdserver/IPCMCallback;
    invoke-virtual {p0, v0}, Lcom/benq/cdserver/IPCMBinder$Stub;->unregisterCallback(Lcom/benq/cdserver/IPCMCallback;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
