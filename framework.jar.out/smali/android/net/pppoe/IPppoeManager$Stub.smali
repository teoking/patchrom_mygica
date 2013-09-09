.class public abstract Landroid/net/pppoe/IPppoeManager$Stub;
.super Landroid/os/Binder;
.source "IPppoeManager.java"

# interfaces
.implements Landroid/net/pppoe/IPppoeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/pppoe/IPppoeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/pppoe/IPppoeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.pppoe.IPppoeManager"

.field static final TRANSACTION_UpdatePppoeDevInfo:I = 0x4

.field static final TRANSACTION_getDeviceNameList:I = 0x1

.field static final TRANSACTION_getDhcpInfo:I = 0xa

.field static final TRANSACTION_getPppoeState:I = 0x3

.field static final TRANSACTION_getSavedPppoeConfig:I = 0x6

.field static final TRANSACTION_getTotalInterface:I = 0x7

.field static final TRANSACTION_isPppoeConfigured:I = 0x5

.field static final TRANSACTION_isPppoeDeviceUp:I = 0x9

.field static final TRANSACTION_setPppoeMode:I = 0x8

.field static final TRANSACTION_setPppoeState:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/pppoe/IPppoeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/pppoe/IPppoeManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "android.net.pppoe.IPppoeManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/pppoe/IPppoeManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/net/pppoe/IPppoeManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/net/pppoe/IPppoeManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/pppoe/IPppoeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_da

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v2, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v2, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/net/pppoe/IPppoeManager$Stub;->getDeviceNameList()[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_9

    .line 55
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_20
    const-string v2, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/pppoe/IPppoeManager$Stub;->setPppoeState(I)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 64
    .end local v0           #_arg0:I
    :sswitch_30
    const-string v2, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/net/pppoe/IPppoeManager$Stub;->getPppoeState()I

    move-result v1

    .line 66
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v1           #_result:I
    :sswitch_40
    const-string v2, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5a

    .line 75
    sget-object v2, Landroid/net/pppoe/PppoeDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/pppoe/PppoeDevInfo;

    .line 80
    .local v0, _arg0:Landroid/net/pppoe/PppoeDevInfo;
    :goto_53
    invoke-virtual {p0, v0}, Landroid/net/pppoe/IPppoeManager$Stub;->UpdatePppoeDevInfo(Landroid/net/pppoe/PppoeDevInfo;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 78
    .end local v0           #_arg0:Landroid/net/pppoe/PppoeDevInfo;
    :cond_5a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/pppoe/PppoeDevInfo;
    goto :goto_53

    .line 86
    .end local v0           #_arg0:Landroid/net/pppoe/PppoeDevInfo;
    :sswitch_5c
    const-string v4, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/net/pppoe/IPppoeManager$Stub;->isPppoeConfigured()Z

    move-result v1

    .line 88
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v1, :cond_6b

    move v2, v3

    :cond_6b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v1           #_result:Z
    :sswitch_6f
    const-string v4, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/net/pppoe/IPppoeManager$Stub;->getSavedPppoeConfig()Landroid/net/pppoe/PppoeDevInfo;

    move-result-object v1

    .line 96
    .local v1, _result:Landroid/net/pppoe/PppoeDevInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v1, :cond_84

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v1, p3, v3}, Landroid/net/pppoe/PppoeDevInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 102
    :cond_84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 108
    .end local v1           #_result:Landroid/net/pppoe/PppoeDevInfo;
    :sswitch_88
    const-string v2, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/net/pppoe/IPppoeManager$Stub;->getTotalInterface()I

    move-result v1

    .line 110
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v1           #_result:I
    :sswitch_99
    const-string v2, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/pppoe/IPppoeManager$Stub;->setPppoeMode(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 125
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_aa
    const-string v4, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/net/pppoe/IPppoeManager$Stub;->isPppoeDeviceUp()Z

    move-result v1

    .line 127
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v1, :cond_b9

    move v2, v3

    :cond_b9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v1           #_result:Z
    :sswitch_be
    const-string v4, "android.net.pppoe.IPppoeManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/net/pppoe/IPppoeManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 135
    .local v1, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v1, :cond_d4

    .line 137
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v1, p3, v3}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 141
    :cond_d4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    nop

    :sswitch_data_da
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_88
        0x8 -> :sswitch_99
        0x9 -> :sswitch_aa
        0xa -> :sswitch_be
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
