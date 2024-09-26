.class public Lcom/mediatek/ims/ril/MtkRadioExImsResponse;
.super Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;
.source "MtkRadioExImsResponse.java"


# instance fields
.field private mPhoneId:I

.field mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 63
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsResponse$Stub;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 65
    iput p2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mPhoneId:I

    .line 66
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

    .line 139
    .local p3, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 141
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 143
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 144
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    :cond_0
    iget v2, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 147
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 151
    .end local v1    # "ret":[I
    :cond_2
    return-void
.end method

.method private varargs responseInts(ILandroid/hardware/radio/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p3, "var"    # [I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 133
    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseIntArrayList(ILandroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 136
    return-void
.end method

.method private responseString(ILandroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p3, "str"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 115
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "ret":Ljava/lang/String;
    iget v2, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 118
    move-object v1, p3

    .line 119
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 123
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V
    .locals 3
    .param p1, "service"    # I
    .param p2, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 98
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 101
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 105
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 85
    if-eqz p0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 87
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public acknowledgeLastIncomingCdmaSmsExResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 224
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsExResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 198
    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 75
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processRequestAck(I)V

    .line 76
    return-void
.end method

.method public cancelUssiResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 369
    return-void
.end method

.method public conferenceDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 562
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 563
    return-void
.end method

.method public controlCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 588
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 589
    return-void
.end method

.method public controlImsConferenceCallMemberResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 602
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 603
    return-void
.end method

.method public dialWithSipUriResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 509
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 510
    return-void
.end method

.method public eccRedialApproveResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 550
    return-void
.end method

.method public forceReleaseCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 576
    return-void
.end method

.method public getBarringCallsResponse(Landroid/hardware/radio/RadioResponseInfo;[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "calls"    # [Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;

    .line 416
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 417
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 418
    array-length v1, p2

    new-array v1, v1, [Lcom/mediatek/ims/MtkImsBarringCall;

    .line 419
    .local v1, "ret":[Lcom/mediatek/ims/MtkImsBarringCall;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 420
    new-instance v3, Lcom/mediatek/ims/MtkImsBarringCall;

    invoke-direct {v3}, Lcom/mediatek/ims/MtkImsBarringCall;-><init>()V

    aput-object v3, v1, v2

    .line 421
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->status:I

    iput v4, v3, Lcom/mediatek/ims/MtkImsBarringCall;->status:I

    .line 422
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->serviceClass:I

    iput v4, v3, Lcom/mediatek/ims/MtkImsBarringCall;->serviceClass:I

    .line 423
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget v4, v4, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->toa:I

    iput v4, v3, Lcom/mediatek/ims/MtkImsBarringCall;->toa:I

    .line 424
    aget-object v3, v1, v2

    aget-object v4, p2, v2

    iget-object v4, v4, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v2    # "i":I
    :cond_0
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 427
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 429
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 431
    .end local v1    # "ret":[Lcom/mediatek/ims/MtkImsBarringCall;
    :cond_2
    return-void
.end method

.method public getImsCfgFeatureValueResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "value"    # I

    .line 706
    const/4 v0, 0x1

    filled-new-array {p2}, [I

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseInts(ILandroid/hardware/radio/RadioResponseInfo;[I)V

    .line 707
    return-void
.end method

.method public getImsCfgProvisionValueResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "value"    # Ljava/lang/String;

    .line 735
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseString(ILandroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public getImsCfgResourceCapValueResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "value"    # I

    .line 750
    const/4 v0, 0x1

    filled-new-array {p2}, [I

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseInts(ILandroid/hardware/radio/RadioResponseInfo;[I)V

    .line 751
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 809
    const-string v0, "e52459812a302acdde2f0131532472cd88eaad52"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 814
    const/4 v0, 0x1

    return v0
.end method

.method public getVoiceDomainPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "vdp"    # I

    .line 787
    const/4 v0, 0x1

    filled-new-array {p2}, [I

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseInts(ILandroid/hardware/radio/RadioResponseInfo;[I)V

    .line 788
    return-void
.end method

.method public getXcapStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 389
    return-void
.end method

.method public imsBearerStateConfirmResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 165
    return-void
.end method

.method public imsEctCommandResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 522
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 523
    return-void
.end method

.method public pullCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 535
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 536
    return-void
.end method

.method public querySsacStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "status"    # [I

    .line 803
    const/4 v0, 0x1

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->primitiveArrayToArrayList([I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseIntArrayList(ILandroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 804
    return-void
.end method

.method public queryVopsStatusResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "vops"    # I

    .line 327
    const/4 v0, 0x1

    filled-new-array {p2}, [I

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseInts(ILandroid/hardware/radio/RadioResponseInfo;[I)V

    .line 328
    return-void
.end method

.method public rttModifyRequestResponseResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 300
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 301
    return-void
.end method

.method public sendImsSmsExResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "sms"    # Landroid/hardware/radio/messaging/SendSmsResult;

    .line 253
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 255
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 256
    new-instance v1, Lcom/mediatek/ims/MtkSmsResponse;

    iget v2, p2, Landroid/hardware/radio/messaging/SendSmsResult;->messageRef:I

    iget-object v3, p2, Landroid/hardware/radio/messaging/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Landroid/hardware/radio/messaging/SendSmsResult;->errorCode:I

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/ims/MtkSmsResponse;-><init>(ILjava/lang/String;I)V

    .line 257
    .local v1, "ret":Lcom/mediatek/ims/MtkSmsResponse;
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 258
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 262
    .end local v1    # "ret":Lcom/mediatek/ims/MtkSmsResponse;
    :cond_1
    return-void
.end method

.method public sendRttModifyRequestResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 282
    return-void
.end method

.method public sendRttTextResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 291
    return-void
.end method

.method public sendUssiResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 356
    return-void
.end method

.method public setBarringCallsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 444
    return-void
.end method

.method public setCallAdditionalInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 653
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 654
    return-void
.end method

.method public setImsBearerNotificationResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 179
    return-void
.end method

.method public setImsCallModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 644
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 645
    return-void
.end method

.method public setImsCfgFeatureValueResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 694
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 695
    return-void
.end method

.method public setImsCfgProvisionValueResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 720
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 721
    return-void
.end method

.method public setImsRegistrationReportResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 341
    return-void
.end method

.method public setImscfgResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 668
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 669
    return-void
.end method

.method public setModemImsCfgResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "results"    # Ljava/lang/String;

    .line 683
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseString(ILandroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public setRttModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 273
    return-void
.end method

.method public setSipHeaderReportResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 630
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 631
    return-void
.end method

.method public setSipHeaderResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 616
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 617
    return-void
.end method

.method public setVoiceDomainPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 776
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 777
    return-void
.end method

.method public setWfcProfileResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 763
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 764
    return-void
.end method

.method public setupXcapUserAgentStringResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 402
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 403
    return-void
.end method

.method public toggleRttAudioIndicationResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 310
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 311
    return-void
.end method

.method public videoCallAcceptResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 485
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 486
    return-void
.end method

.method public videoRingtoneEventResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 494
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 495
    return-void
.end method

.method public vtDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 460
    return-void
.end method

.method public vtDialWithSipUriResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 472
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/ims/ril/MtkRadioExImsResponse;->responseVoid(ILandroid/hardware/radio/RadioResponseInfo;)V

    .line 473
    return-void
.end method
