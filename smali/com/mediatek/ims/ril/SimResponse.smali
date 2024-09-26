.class public Lcom/mediatek/ims/ril/SimResponse;
.super Landroid/hardware/radio/sim/IRadioSimResponse$Stub;
.source "SimResponse.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 33
    invoke-direct {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mediatek/ims/ril/SimResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 35
    return-void
.end method

.method private responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Landroid/hardware/radio/sim/IccIoResult;

    .line 39
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

    .line 78
    .local p3, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/SimResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 80
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 82
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 83
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_0
    iget v2, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 86
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/SimResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 88
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/SimResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 90
    .end local v1    # "ret":[I
    :cond_2
    return-void
.end method

.method private varargs responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 71
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/mediatek/ims/ril/SimResponse;->responseIntArrayList(ILandroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 74
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 57
    if-eqz p0, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 59
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 48
    iget-object v0, p0, Lcom/mediatek/ims/ril/SimResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processRequestAck(I)V

    .line 49
    return-void
.end method

.method public areUiccApplicationsEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enabled"    # Z

    .line 98
    return-void
.end method

.method public changeIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 105
    return-void
.end method

.method public changeIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 112
    return-void
.end method

.method public enableUiccApplicationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 118
    return-void
.end method

.method public getAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CarrierRestrictions;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "carrierRestrictions"    # Landroid/hardware/radio/sim/CarrierRestrictions;
    .param p3, "multiSimPolicy"    # I

    .line 128
    return-void
.end method

.method public getCdmaSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "hSid"    # Ljava/lang/String;
    .param p4, "hNid"    # Ljava/lang/String;
    .param p5, "min"    # Ljava/lang/String;
    .param p6, "prl"    # Ljava/lang/String;

    .line 142
    return-void
.end method

.method public getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "source"    # I

    .line 149
    return-void
.end method

.method public getFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "response"    # I

    .line 157
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/SimResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 158
    return-void
.end method

.method public getIccCardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CardStatus;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "cardStatus"    # Landroid/hardware/radio/sim/CardStatus;

    .line 166
    return-void
.end method

.method public getImsiForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "imsi"    # Ljava/lang/String;

    .line 173
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 366
    const-string v0, "4f348cc7aca716cc41c09ea95895c4b261231035"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 371
    const/4 v0, 0x2

    return v0
.end method

.method public getSimPhonebookCapacityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/PhonebookCapacity;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "pbCapacity"    # Landroid/hardware/radio/sim/PhonebookCapacity;

    .line 181
    return-void
.end method

.method public getSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 187
    return-void
.end method

.method public iccCloseLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 193
    return-void
.end method

.method public iccCloseLogicalChannelWithSessionInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 199
    return-void
.end method

.method public iccIoForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;

    .line 207
    return-void
.end method

.method public iccOpenLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;I[B)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "channelId"    # I
    .param p3, "selectResponse"    # [B

    .line 217
    return-void
.end method

.method public iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;

    .line 225
    return-void
.end method

.method public iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;

    .line 233
    return-void
.end method

.method public reportStkServiceIsRunningResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 239
    return-void
.end method

.method public requestIccSimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;

    .line 247
    return-void
.end method

.method public requestIsimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 256
    return-void
.end method

.method public sendEnvelopeResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "commandResponse"    # Ljava/lang/String;

    .line 264
    return-void
.end method

.method public sendEnvelopeWithStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "iccIo"    # Landroid/hardware/radio/sim/IccIoResult;

    .line 272
    return-void
.end method

.method public sendTerminalResponseToSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 278
    return-void
.end method

.method public setAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 284
    return-void
.end method

.method public setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 290
    return-void
.end method

.method public setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 296
    return-void
.end method

.method public setFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "retry"    # I

    .line 303
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/SimResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 304
    return-void
.end method

.method public setSimCardPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 310
    return-void
.end method

.method public setUiccSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 316
    return-void
.end method

.method public supplyIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 323
    return-void
.end method

.method public supplyIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 330
    return-void
.end method

.method public supplyIccPuk2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 337
    return-void
.end method

.method public supplyIccPukForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingAttempts"    # I

    .line 344
    return-void
.end method

.method public supplySimDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "persoType"    # I
    .param p3, "remainingRetries"    # I

    .line 354
    return-void
.end method

.method public updateSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "updatedRecordIndex"    # I

    .line 362
    return-void
.end method
