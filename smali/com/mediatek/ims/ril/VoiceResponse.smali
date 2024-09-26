.class public Lcom/mediatek/ims/ril/VoiceResponse;
.super Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;
.source "VoiceResponse.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 38
    invoke-direct {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 40
    return-void
.end method

.method private responseIntArrayList(ILandroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/radio/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p3, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 97
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 99
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 100
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "i":I
    :cond_0
    iget v2, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 103
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/VoiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 107
    .end local v1    # "ret":[I
    :cond_2
    return-void
.end method

.method private varargs responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 88
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/mediatek/ims/ril/VoiceResponse;->responseIntArrayList(ILandroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 91
    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 69
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 71
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 74
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/VoiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 78
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 58
    if-eqz p0, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 60
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 113
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 114
    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 49
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processRequestAck(I)V

    .line 50
    return-void
.end method

.method public cancelPendingUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 120
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 121
    return-void
.end method

.method public conferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 127
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 128
    return-void
.end method

.method public dialResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 134
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 135
    return-void
.end method

.method public emergencyDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 141
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 142
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 149
    return-void
.end method

.method public explicitCallTransferResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 155
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 156
    return-void
.end method

.method public getCallForwardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/CallForwardInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "callForwardInfos"    # [Landroid/hardware/radio/voice/CallForwardInfo;

    .line 165
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 166
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 167
    array-length v1, p2

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 168
    .local v1, "ret":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 169
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 170
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Landroid/hardware/radio/voice/CallForwardInfo;->status:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 171
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Landroid/hardware/radio/voice/CallForwardInfo;->reason:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 172
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Landroid/hardware/radio/voice/CallForwardInfo;->serviceClass:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 173
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Landroid/hardware/radio/voice/CallForwardInfo;->toa:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 174
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget-object v4, v4, Landroid/hardware/radio/voice/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 175
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Landroid/hardware/radio/voice/CallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 178
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/VoiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 182
    .end local v1    # "ret":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    return-void
.end method

.method public getCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I

    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/VoiceResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 195
    return-void
.end method

.method public getClipResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "status"    # I

    .line 202
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/VoiceResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 203
    return-void
.end method

.method public getClirResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 211
    filled-new-array {p2, p3}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/VoiceResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 212
    return-void
.end method

.method public getCurrentCallsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/Call;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "calls"    # [Landroid/hardware/radio/voice/Call;

    .line 220
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const-string v1, "No implementation in getCurrentCallsResponse"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLoge(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 422
    const-string v0, "8c5e0d53dc67b5ed221b2da0570a17684d973a20"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 427
    const/4 v0, 0x2

    return v0
.end method

.method public getLastCallFailCauseResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/voice/LastCallFailCauseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "fcInfo"    # Landroid/hardware/radio/voice/LastCallFailCauseInfo;

    .line 232
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 234
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 235
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 236
    .local v1, "ret":Lcom/android/internal/telephony/LastCallFailCause;
    iget v2, p2, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 237
    iget-object v2, p2, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 238
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 239
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/VoiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 243
    .end local v1    # "ret":Lcom/android/internal/telephony/LastCallFailCause;
    :cond_1
    return-void
.end method

.method public getMuteResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enable"    # Z

    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/VoiceResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 251
    return-void
.end method

.method public getPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enable"    # Z

    .line 259
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/VoiceResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 260
    return-void
.end method

.method public getTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "mode"    # I

    .line 267
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/VoiceResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 268
    return-void
.end method

.method public handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 274
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 275
    return-void
.end method

.method public hangupConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 281
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 282
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 288
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 289
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 295
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 296
    return-void
.end method

.method public isVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enable"    # Z

    .line 303
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/VoiceResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 304
    return-void
.end method

.method public rejectCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 310
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 311
    return-void
.end method

.method public sendBurstDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 317
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 318
    return-void
.end method

.method public sendCdmaFeatureCodeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 324
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 325
    return-void
.end method

.method public sendDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 331
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 332
    return-void
.end method

.method public sendUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 338
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 339
    return-void
.end method

.method public separateConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 345
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 346
    return-void
.end method

.method public setCallForwardResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 352
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 353
    return-void
.end method

.method public setCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 359
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 360
    return-void
.end method

.method public setClirResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 366
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 367
    return-void
.end method

.method public setMuteResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 373
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 374
    return-void
.end method

.method public setPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 380
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 381
    return-void
.end method

.method public setTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 387
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 388
    return-void
.end method

.method public setVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 394
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 395
    return-void
.end method

.method public startDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 401
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleDtmfQueueNext(I)V

    .line 402
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 403
    return-void
.end method

.method public stopDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 409
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->handleDtmfQueueNext(I)V

    .line 410
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 411
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 417
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/VoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 418
    return-void
.end method
