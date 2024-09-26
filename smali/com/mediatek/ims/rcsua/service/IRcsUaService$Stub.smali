.class public abstract Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;
.super Landroid/os/Binder;
.source "IRcsUaService.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IRcsUaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activate:I = 0x1

.field static final TRANSACTION_addCapability:I = 0x6

.field static final TRANSACTION_clearAcsConfiguration:I = 0x1a

.field static final TRANSACTION_deactivate:I = 0x2

.field static final TRANSACTION_getAcsConfigInt:I = 0x12

.field static final TRANSACTION_getAcsConfigString:I = 0x13

.field static final TRANSACTION_getAcsConfiguration:I = 0x11

.field static final TRANSACTION_getAcsSwitchState:I = 0x18

.field static final TRANSACTION_getCapabilities:I = 0xd

.field static final TRANSACTION_getOptions:I = 0xc

.field static final TRANSACTION_isAcsConnected:I = 0x14

.field static final TRANSACTION_isActivated:I = 0xe

.field static final TRANSACTION_registerAcsCallback:I = 0xf

.field static final TRANSACTION_registerClient:I = 0x9

.field static final TRANSACTION_removeCapability:I = 0x7

.field static final TRANSACTION_setAcsProvisioningAddress:I = 0x19

.field static final TRANSACTION_setAcsSideLoadingConfiguration:I = 0x1b

.field static final TRANSACTION_setAcsSwitchState:I = 0x16

.field static final TRANSACTION_setOptions:I = 0xb

.field static final TRANSACTION_setRcsClientConfiguration:I = 0x17

.field static final TRANSACTION_triggerAcsRequest:I = 0x15

.field static final TRANSACTION_triggerForceReregistration:I = 0x4

.field static final TRANSACTION_triggerReregistration:I = 0x3

.field static final TRANSACTION_triggerRestoration:I = 0x5

.field static final TRANSACTION_unregisterAcsCallback:I = 0x10

.field static final TRANSACTION_unregisterClient:I = 0xa

.field static final TRANSACTION_updateCapabilities:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 115
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 127
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 128
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v1

    .line 130
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 134
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

    .line 138
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    .line 139
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 150
    packed-switch p1, :pswitch_data_1

    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 146
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v1

    .line 357
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsSideLoadingConfiguration(Ljava/lang/String;)Z

    move-result v3

    .line 359
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    goto/16 :goto_1

    .line 349
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->clearAcsConfiguration()Z

    move-result v2

    .line 350
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    goto/16 :goto_1

    .line 341
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v3

    .line 343
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    goto/16 :goto_1

    .line 333
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsSwitchState()Z

    move-result v2

    .line 334
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    goto/16 :goto_1

    .line 326
    .end local v2    # "_result":Z
    :pswitch_5
    sget-object v2, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/RcsClientConfiguration;

    .line 327
    .local v2, "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    goto/16 :goto_1

    .line 317
    .end local v2    # "_arg0":Landroid/telephony/ims/RcsClientConfiguration;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 318
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsSwitchState(Z)Z

    move-result v3

    .line 319
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    goto/16 :goto_1

    .line 309
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerAcsRequest(I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_1

    .line 301
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isAcsConnected()Z

    move-result v2

    .line 302
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    goto/16 :goto_1

    .line 293
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    goto/16 :goto_1

    .line 284
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 285
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v3

    .line 286
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    goto/16 :goto_1

    .line 276
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_b
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v2

    .line 277
    .local v2, "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-static {p3, v2, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 279
    goto/16 :goto_1

    .line 269
    .end local v2    # "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 270
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_1

    .line 261
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 262
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    goto/16 :goto_1

    .line 253
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_e
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isActivated()Z

    move-result v2

    .line 254
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    goto/16 :goto_1

    .line 246
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v2

    .line 247
    .local v2, "_result":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-static {p3, v2, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 249
    goto/16 :goto_1

    .line 239
    .end local v2    # "_result":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_10
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getOptions()Landroid/os/Bundle;

    move-result-object v2

    .line 240
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-static {p3, v2, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 242
    goto/16 :goto_1

    .line 232
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_11
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 233
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setOptions(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto/16 :goto_1

    .line 224
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    .line 225
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto/16 :goto_1

    .line 213
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    .line 215
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;I)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v4

    .line 217
    .local v4, "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 219
    goto :goto_1

    .line 205
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_14
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 206
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto :goto_1

    .line 197
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_15
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 198
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    goto :goto_1

    .line 189
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_16
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 190
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_1

    .line 182
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_17
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerRestoration()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto :goto_1

    .line 175
    :pswitch_18
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 176
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_1

    .line 167
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_19
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .line 168
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_1

    .line 160
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_1a
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->deactivate()V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    goto :goto_1

    .line 154
    :pswitch_1b
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->activate()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    nop

    .line 368
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
