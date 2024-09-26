.class public abstract Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;
.super Landroid/os/Binder;
.source "IImsEventCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IImsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeregStarted:I = 0x3

.field static final TRANSACTION_onReregistered:I = 0x2

.field static final TRANSACTION_onStatusChanged:I = 0x1

.field static final TRANSACTION_onVopsIndication:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.mediatek.ims.rcsua.service.IImsEventCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.IImsEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const-string v0, "com.mediatek.ims.rcsua.service.IImsEventCallback"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 68
    packed-switch p1, :pswitch_data_1

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 94
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->onVopsIndication(I)V

    .line 96
    goto :goto_0

    .line 87
    .end local v2    # "_arg0":I
    :pswitch_2
    sget-object v2, Lcom/mediatek/ims/rcsua/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 88
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->onDeregStarted(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 89
    goto :goto_0

    .line 80
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :pswitch_3
    sget-object v2, Lcom/mediatek/ims/rcsua/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 81
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->onReregistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 82
    goto :goto_0

    .line 73
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :pswitch_4
    sget-object v2, Lcom/mediatek/ims/rcsua/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/RegistrationInfo;

    .line 74
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->onStatusChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 75
    nop

    .line 103
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
