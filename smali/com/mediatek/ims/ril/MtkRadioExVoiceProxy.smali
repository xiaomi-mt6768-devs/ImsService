.class public Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;
.super Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.source "MtkRadioExVoiceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioExVoiceProxy"


# instance fields
.field private volatile mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    .line 86
    return-void
.end method

.method public getAidl()Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    return-object v0
.end method

.method public getColp(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->getColp(II)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 146
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getColp(I)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 149
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getColp(I)V

    .line 151
    :goto_0
    return-void
.end method

.method public getColr(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->getColr(II)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 165
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getColr(I)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 168
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getColr(I)V

    .line 170
    :goto_0
    return-void
.end method

.method public hangupAll(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->hangupAll(II)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 424
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->hangupAll(I)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 427
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->hangupAll(I)V

    .line 429
    :goto_0
    return-void
.end method

.method public hangupWithReason(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->hangupWithReason(IIII)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 381
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->hangupWithReason(III)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 384
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->hangupWithReason(III)V

    .line 386
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queryCallForwardInTimeSlotStatus(III)V
    .locals 6
    .param p1, "serial"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    const-string v0, ""

    .line 183
    .local v0, "number":Ljava/lang/String;
    const-string v1, ""

    .line 184
    .local v1, "timeSlotBegin":Ljava/lang/String;
    const-string v2, ""

    .line 186
    .local v2, "timeSlotEnd":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 188
    new-instance v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    invoke-direct {v3}, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;-><init>()V

    .line 190
    .local v3, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    iput p2, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->reason:I

    .line 191
    iput p3, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->serviceClass:I

    .line 192
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->toa:I

    .line 193
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 194
    iput v4, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSeconds:I

    .line 195
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 196
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 198
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v3, v5}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;I)V

    .line 200
    .end local v3    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    new-instance v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 203
    .local v3, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    iput p2, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    .line 204
    iput p3, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 205
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    .line 206
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 207
    iput v4, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 208
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 209
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 211
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 212
    invoke-interface {v4, p1, v3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 213
    .end local v3    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    goto :goto_0

    .line 214
    :cond_2
    new-instance v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 216
    .local v3, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    iput p2, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    .line 217
    iput p3, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    .line 218
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    .line 219
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 220
    iput v4, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    .line 221
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 222
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v4, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 225
    invoke-interface {v4, p1, v3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryCallForwardInTimeSlotStatus(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 227
    .end local v3    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :goto_0
    return-void
.end method

.method public resetSuppServ(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->resetSuppServ(II)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 127
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->resetSuppServ(I)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 130
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->resetSuppServ(I)V

    .line 132
    :goto_0
    return-void
.end method

.method public responseAcknowledgementMtk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 108
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 111
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 113
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;)Lcom/android/internal/telephony/HalVersion;
    .locals 5
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "voice"    # Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    .line 50
    const-string v0, "MtkRadioExVoiceProxy"

    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 51
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mIsAidl:Z

    .line 55
    :try_start_0
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->getInterfaceVersion()I

    move-result v1

    .line 56
    .local v1, "version":I
    nop

    .line 58
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    .line 61
    .local v2, "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIDL version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", halVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    iput-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "version":I
    .end local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    :cond_0
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method public setCallForwardInTimeSlot(IIIILjava/lang/String;I[J)V
    .locals 6
    .param p1, "serial"    # I
    .param p2, "action"    # I
    .param p3, "cfReason"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "timeSeconds"    # I
    .param p7, "timeSlot"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    const-string v0, ""

    .line 244
    .local v0, "timeSlotBegin":Ljava/lang/String;
    const-string v1, ""

    .line 247
    .local v1, "timeSlotEnd":Ljava/lang/String;
    if-eqz p7, :cond_1

    array-length v2, p7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 248
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p7

    if-ge v2, v3, :cond_1

    .line 249
    new-instance v3, Ljava/util/Date;

    aget-wide v4, p7, v2

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 250
    .local v3, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 251
    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "GMT+8"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 253
    if-nez v2, :cond_0

    .line 254
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 256
    :cond_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/text/SimpleDateFormat;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;-><init>()V

    .line 265
    .local v2, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->status:I

    .line 266
    iput p3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->reason:I

    .line 267
    iput p4, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->serviceClass:I

    .line 268
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->toa:I

    .line 269
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 270
    iput p6, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSeconds:I

    .line 271
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 272
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 274
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v2, v4}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;I)V

    .line 276
    .end local v2    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;
    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;-><init>()V

    .line 279
    .local v2, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->status:I

    .line 280
    iput p3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->reason:I

    .line 281
    iput p4, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->serviceClass:I

    .line 282
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->toa:I

    .line 283
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 284
    iput p6, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSeconds:I

    .line 285
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 286
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 288
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 289
    invoke-interface {v3, p1, v2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;)V

    .line 290
    .end local v2    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V3_0/CallForwardInfoEx;
    goto :goto_2

    .line 291
    :cond_4
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;-><init>()V

    .line 293
    .local v2, "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    iput p2, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->status:I

    .line 294
    iput p3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->reason:I

    .line 295
    iput p4, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->serviceClass:I

    .line 296
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->toa:I

    .line 297
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->number:Ljava/lang/String;

    .line 298
    iput p6, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSeconds:I

    .line 299
    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    .line 300
    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    .line 302
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v3, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 303
    invoke-interface {v3, p1, v2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallForwardInTimeSlot(ILvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;)V

    .line 305
    .end local v2    # "cfInfoEx":Lvendor/mediatek/hardware/mtkradioex/V2_0/CallForwardInfoEx;
    :goto_2
    return-void
.end method

.method public setCallIndication(IIIII)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .param p3, "callId"    # I
    .param p4, "seqNumber"    # I
    .param p5, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setCallIndication(IIIIII)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 406
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallIndication(IIIII)V

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 409
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallIndication(IIIII)V

    .line 411
    :goto_0
    return-void
.end method

.method public setClip(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setClip(III)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 320
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setClip(II)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 323
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setClip(II)V

    .line 325
    :goto_0
    return-void
.end method

.method public setColp(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setColp(III)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 340
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setColp(II)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 343
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setColp(II)V

    .line 345
    :goto_0
    return-void
.end method

.method public setColr(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mVoiceProxyMtk:Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoice;->setColr(III)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 360
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setColr(II)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 363
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setColr(II)V

    .line 365
    :goto_0
    return-void
.end method
