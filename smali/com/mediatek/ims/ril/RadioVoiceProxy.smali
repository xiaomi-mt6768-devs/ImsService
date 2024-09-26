.class public Lcom/mediatek/ims/ril/RadioVoiceProxy;
.super Lcom/mediatek/ims/ril/RadioServiceProxy;
.source "RadioVoiceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioVoiceProxy"


# instance fields
.field private volatile mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-void
.end method

.method static synthetic lambda$emergencyDial$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 150
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->acceptCall(I)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->acceptCall(I)V

    .line 97
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    .line 74
    return-void
.end method

.method public conference(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->conference(I)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->conference(I)V

    .line 111
    :goto_0
    return-void
.end method

.method public dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/voice/IRadioVoice;->dial(ILandroid/hardware/radio/voice/Dial;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/radio/V1_0/IRadio;->dial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 129
    :goto_0
    return-void
.end method

.method public emergencyDial(ILjava/lang/String;Landroid/telephony/ims/ImsCallProfile;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 9
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p4, "clirMode"    # I
    .param p5, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    .line 147
    invoke-static {p2, p4, p5}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v3

    .line 148
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v4

    .line 149
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/mediatek/ims/ril/RadioVoiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/mediatek/ims/ril/RadioVoiceProxy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    move-object v5, v0

    .line 152
    :goto_0
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v6

    const/4 v7, 0x0

    .line 155
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v8

    .line 146
    move v2, p1

    invoke-interface/range {v1 .. v8}, Landroid/hardware/radio/voice/IRadioVoice;->emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V

    goto/16 :goto_3

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/V1_6/IRadio;

    .line 158
    invoke-static {p2, p4, p5}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v3

    .line 159
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v4

    .line 160
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    goto :goto_1

    .line 162
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 163
    :goto_1
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v6

    const/4 v7, 0x0

    .line 166
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v8

    .line 157
    move v2, p1

    invoke-interface/range {v1 .. v8}, Landroid/hardware/radio/V1_6/IRadio;->emergencyDial_1_6(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    goto :goto_3

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/V1_4/IRadio;

    .line 170
    invoke-static {p2, p4, p5}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v3

    .line 171
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v4

    .line 172
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    goto :goto_2

    .line 174
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 175
    :goto_2
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v6

    const/4 v7, 0x0

    .line 178
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v8

    .line 169
    move v2, p1

    invoke-interface/range {v1 .. v8}, Landroid/hardware/radio/V1_4/IRadio;->emergencyDial(ILandroid/hardware/radio/V1_0/Dial;ILjava/util/ArrayList;IZZ)V

    .line 180
    :goto_3
    return-void

    .line 144
    :cond_6
    :goto_4
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->exitEmergencyCallbackMode(I)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->exitEmergencyCallbackMode(I)V

    .line 194
    :goto_0
    return-void
.end method

.method public explicitCallTransfer(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->explicitCallTransfer(I)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->explicitCallTransfer(I)V

    .line 208
    :goto_0
    return-void
.end method

.method public getAidl()Landroid/hardware/radio/voice/IRadioVoice;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    return-object v0
.end method

.method public getCallForwardStatus(IIILjava/lang/String;)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CallForwardInfo;-><init>()V

    .line 224
    .local v0, "cfInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    .line 225
    iput p3, v0, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    .line 226
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    .line 227
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    .line 228
    iput v1, v0, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    .line 229
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v1, p1, v0}, Landroid/hardware/radio/voice/IRadioVoice;->getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 230
    .end local v0    # "cfInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    goto :goto_0

    .line 231
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 233
    .local v0, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 234
    iput p3, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 235
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 236
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 237
    iput v1, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 238
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v1, p1, v0}, Landroid/hardware/radio/V1_0/IRadio;->getCallForwardStatus(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 240
    .end local v0    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :goto_0
    return-void
.end method

.method public getCallWaiting(II)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->getCallWaiting(II)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->getCallWaiting(II)V

    .line 255
    :goto_0
    return-void
.end method

.method public getClip(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getClip(I)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getClip(I)V

    .line 269
    :goto_0
    return-void
.end method

.method public getClir(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getClir(I)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getClir(I)V

    .line 283
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getLastCallFailCause(I)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getLastCallFailCause(I)V

    .line 297
    :goto_0
    return-void
.end method

.method public getPreferredVoicePrivacy(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getPreferredVoicePrivacy(I)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getPreferredVoicePrivacy(I)V

    .line 311
    :goto_0
    return-void
.end method

.method public getTtyMode(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->getTtyMode(I)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->getTTYMode(I)V

    .line 325
    :goto_0
    return-void
.end method

.method public hangup(II)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->hangup(II)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->hangup(II)V

    .line 340
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public responseAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0}, Landroid/hardware/radio/voice/IRadioVoice;->responseAcknowledgement()V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    .line 366
    :goto_0
    return-void
.end method

.method public sendDtmf(ILjava/lang/String;)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->sendDtmf(ILjava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->sendDtmf(ILjava/lang/String;)V

    .line 381
    :goto_0
    return-void
.end method

.method public separateConnection(II)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "gsmIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->separateConnection(II)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->separateConnection(II)V

    .line 396
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/voice/IRadioVoice;)Lcom/android/internal/telephony/HalVersion;
    .locals 4
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "voice"    # Landroid/hardware/radio/voice/IRadioVoice;

    .line 47
    move-object v0, p1

    .line 49
    .local v0, "version":Lcom/android/internal/telephony/HalVersion;
    :try_start_0
    invoke-interface {p2}, Landroid/hardware/radio/voice/IRadioVoice;->getInterfaceVersion()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getAospServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
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

    const-string v3, "RadioVoiceProxy"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 54
    iput-object p2, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mIsAidl:Z

    .line 56
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v1
.end method

.method public setCallForward(IIIILjava/lang/String;I)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "action"    # I
    .param p3, "cfReason"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    new-instance v0, Landroid/hardware/radio/voice/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/voice/CallForwardInfo;-><init>()V

    .line 414
    .local v0, "cfInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    iput p2, v0, Landroid/hardware/radio/voice/CallForwardInfo;->status:I

    .line 415
    iput p3, v0, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    .line 416
    iput p4, v0, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    .line 417
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    .line 418
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    .line 419
    iput p6, v0, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    .line 420
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v1, p1, v0}, Landroid/hardware/radio/voice/IRadioVoice;->setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 421
    .end local v0    # "cfInfo":Landroid/hardware/radio/voice/CallForwardInfo;
    goto :goto_0

    .line 422
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/CallForwardInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CallForwardInfo;-><init>()V

    .line 424
    .local v0, "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    iput p2, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    .line 425
    iput p3, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    .line 426
    iput p4, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    .line 427
    invoke-static {p5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    .line 428
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    .line 429
    iput p6, v0, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    .line 430
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v1, p1, v0}, Landroid/hardware/radio/V1_0/IRadio;->setCallForward(ILandroid/hardware/radio/V1_0/CallForwardInfo;)V

    .line 432
    .end local v0    # "cfInfo":Landroid/hardware/radio/V1_0/CallForwardInfo;
    :goto_0
    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/radio/voice/IRadioVoice;->setCallWaiting(IZI)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/radio/V1_0/IRadio;->setCallWaiting(IZI)V

    .line 449
    :goto_0
    return-void
.end method

.method public setClir(II)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setClir(II)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setClir(II)V

    .line 464
    :goto_0
    return-void
.end method

.method public setMute(IZ)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->setMute(IZ)V

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->setMute(IZ)V

    .line 479
    :goto_0
    return-void
.end method

.method public startDtmf(ILjava/lang/String;)V
    .locals 1
    .param p1, "serial"    # I
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/voice/IRadioVoice;->startDtmf(ILjava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1, p2}, Landroid/hardware/radio/V1_0/IRadio;->startDtmf(ILjava/lang/String;)V

    .line 507
    :goto_0
    return-void
.end method

.method public stopDtmf(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->stopDtmf(I)V

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->stopDtmf(I)V

    .line 521
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(I)V
    .locals 1
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mVoiceProxy:Landroid/hardware/radio/voice/IRadioVoice;

    invoke-interface {v0, p1}, Landroid/hardware/radio/voice/IRadioVoice;->switchWaitingOrHoldingAndActive(I)V

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioVoiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0, p1}, Landroid/hardware/radio/V1_0/IRadio;->switchWaitingOrHoldingAndActive(I)V

    .line 535
    :goto_0
    return-void
.end method
