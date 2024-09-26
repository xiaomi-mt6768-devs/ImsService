.class public Lcom/mediatek/ims/ril/MtkRadioExModemResponse;
.super Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse$Stub;
.source "MtkRadioExModemResponse.java"


# instance fields
.field mMtkRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 39
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemResponse$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->mMtkRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 41
    iput p2, p0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->mPhoneId:I

    .line 42
    return-void
.end method

.method private responseStringArrayList(Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p2, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->mMtkRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 82
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "ret":[Ljava/lang/String;
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 86
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 87
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "i":I
    :cond_0
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->mMtkRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 93
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->mMtkRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 63
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 66
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->mMtkRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 70
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 50
    if-eqz p0, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 52
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->mMtkRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processRequestAck(I)V

    .line 103
    return-void
.end method

.method public getEngineeringModeInfoResponse(Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # [Ljava/lang/String;

    .line 104
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "9f5d2f5ee70445878bed35289d95edaea4489af4"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public modifyModemTypeResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "applyType"    # I

    .line 105
    return-void
.end method

.method public registerCellQltyReportResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 126
    return-void
.end method

.method public restartRILDResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 106
    return-void
.end method

.method public runGbaAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "resList"    # [Ljava/lang/String;

    .line 109
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->responseStringArrayList(Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 110
    return-void
.end method

.method public sendEmbmsAtCommandResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "data"    # Ljava/lang/String;

    .line 112
    return-void
.end method

.method public sendRequestRawResponse(Landroid/hardware/radio/RadioResponseInfo;[B)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "data"    # [B

    .line 113
    return-void
.end method

.method public sendRequestStringsResponse(Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "data"    # [Ljava/lang/String;

    .line 114
    return-void
.end method

.method public sendSarIndicatorResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 115
    return-void
.end method

.method public sendWifiAssociatedResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 128
    return-void
.end method

.method public sendWifiEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 127
    return-void
.end method

.method public sendWifiIpAddressResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 129
    return-void
.end method

.method public setModemPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 116
    return-void
.end method

.method public setTrmResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 117
    return-void
.end method

.method public setTxPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 118
    return-void
.end method

.method public setTxPowerStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 119
    return-void
.end method

.method public setVendorSettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExModemResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 123
    return-void
.end method

.method public triggerModeSwitchByEccResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 125
    return-void
.end method
