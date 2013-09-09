.class public abstract Landroid/os/IHardwareService$Stub;
.super Landroid/os/Binder;
.source "IHardwareService.java"

# interfaces
.implements Landroid/os/IHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IHardwareService"

.field static final TRANSACTION_getFlashlightEnabled:I = 0x1

.field static final TRANSACTION_getI2cData:I = 0x3

.field static final TRANSACTION_getI2cDataSize:I = 0x4

.field static final TRANSACTION_getMAC:I = 0x6

.field static final TRANSACTION_getMCID:I = 0x7

.field static final TRANSACTION_setFlashlightEnabled:I = 0x2

.field static final TRANSACTION_writeI2cData:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IHardwareService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.os.IHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IHardwareService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/os/IHardwareService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/os/IHardwareService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_a2

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 43
    :sswitch_a
    const-string v3, "android.os.IHardwareService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/IHardwareService$Stub;->getFlashlightEnabled()Z

    move-result v2

    .line 50
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v2, :cond_1f

    move v3, v4

    :cond_1f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 56
    .end local v2           #_result:Z
    :sswitch_23
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    move v0, v4

    .line 59
    .local v0, _arg0:Z
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/os/IHardwareService$Stub;->setFlashlightEnabled(Z)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0           #_arg0:Z
    :cond_36
    move v0, v3

    .line 58
    goto :goto_2f

    .line 65
    :sswitch_38
    const-string v3, "android.os.IHardwareService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/IHardwareService$Stub;->getI2cData(II)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 77
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_50
    const-string v3, "android.os.IHardwareService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/IHardwareService$Stub;->getI2cDataSize(II)I

    move-result v2

    .line 83
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 89
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_result:I
    :sswitch_68
    const-string v3, "android.os.IHardwareService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IHardwareService$Stub;->writeI2cData(ILjava/lang/String;)I

    move-result v2

    .line 95
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 101
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_80
    const-string v3, "android.os.IHardwareService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/os/IHardwareService$Stub;->getMAC()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 109
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_91
    const-string v3, "android.os.IHardwareService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/os/IHardwareService$Stub;->getMCID()Ljava/lang/String;

    move-result-object v2

    .line 111
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 39
    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_38
        0x4 -> :sswitch_50
        0x5 -> :sswitch_68
        0x6 -> :sswitch_80
        0x7 -> :sswitch_91
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
