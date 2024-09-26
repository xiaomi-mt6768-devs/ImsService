.class public abstract Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;
.super Landroid/os/Binder;
.source "ISipChannel.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/ISipChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/ISipChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x3

.field static final TRANSACTION_isAvailable:I = 0x4

.field static final TRANSACTION_readConfiguration:I = 0x5

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendMessageAsync:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-eqz v1, :cond_1

    .line 52
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object v1

    .line 54
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 58
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    .line 63
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 74
    packed-switch p1, :pswitch_data_1

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 116
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->readConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v2

    .line 117
    .local v2, "_result":Lcom/mediatek/ims/rcsua/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-static {p3, v2, v1}, Lcom/mediatek/ims/rcsua/service/ISipChannel$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 119
    goto :goto_0

    .line 109
    .end local v2    # "_result":Lcom/mediatek/ims/rcsua/Configuration;
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->isAvailable()Z

    move-result v2

    .line 110
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    goto :goto_0

    .line 101
    .end local v2    # "_result":Z
    :pswitch_3
    new-instance v2, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v2}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 102
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-static {p3, v2, v1}, Lcom/mediatek/ims/rcsua/service/ISipChannel$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 105
    goto :goto_0

    .line 91
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 93
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->sendMessageAsync([BLjava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    goto :goto_0

    .line 79
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 81
    .restart local v2    # "_arg0":[B
    new-instance v3, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v3}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 82
    .local v3, "_arg1":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->sendMessage([BLcom/mediatek/ims/rcsua/service/RcsUaException;)I

    move-result v4

    .line 83
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-static {p3, v3, v1}, Lcom/mediatek/ims/rcsua/service/ISipChannel$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 86
    nop

    .line 126
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    .end local v4    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
