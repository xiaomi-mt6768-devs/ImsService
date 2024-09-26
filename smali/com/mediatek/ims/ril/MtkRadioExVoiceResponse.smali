.class public Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;
.super Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse$Stub;
.source "MtkRadioExVoiceResponse.java"


# instance fields
.field private mPhoneId:I

.field mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 62
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceResponse$Stub;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 64
    iput p2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->mPhoneId:I

    .line 65
    return-void
.end method

.method private responseCallForwardInfoEx(Landroid/hardware/radio/RadioResponseInfo;[Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;)V
    .locals 12
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "callForwardInfoExs"    # [Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    .line 161
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 162
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_5

    .line 163
    array-length v3, p2

    new-array v3, v3, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 164
    .local v3, "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_3

    .line 165
    new-array v5, v1, [J

    .line 166
    .local v5, "timeSlot":[J
    new-array v6, v1, [Ljava/lang/String;

    .line 168
    .local v6, "timeSlotStr":[Ljava/lang/String;
    new-instance v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    invoke-direct {v7}, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;-><init>()V

    aput-object v7, v3, v4

    .line 169
    aget-object v7, v3, v4

    aget-object v8, p2, v4

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->status:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    .line 170
    aget-object v7, v3, v4

    aget-object v8, p2, v4

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->reason:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    .line 171
    aget-object v7, v3, v4

    aget-object v8, p2, v4

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->serviceClass:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    .line 172
    aget-object v7, v3, v4

    aget-object v8, p2, v4

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->toa:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    .line 173
    aget-object v7, v3, v4

    aget-object v8, p2, v4

    iget-object v8, v8, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->number:Ljava/lang/String;

    iput-object v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    .line 174
    aget-object v7, v3, v4

    aget-object v8, p2, v4

    iget v8, v8, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSeconds:I

    iput v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    .line 175
    aget-object v7, p2, v4

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotBegin:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 176
    aget-object v7, p2, v4

    iget-object v7, v7, Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;->timeSlotEnd:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 178
    aget-object v7, v6, v8

    if-eqz v7, :cond_2

    aget-object v7, v6, v2

    if-nez v7, :cond_0

    goto :goto_2

    .line 182
    :cond_0
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v1, :cond_1

    .line 183
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "HH:mm"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    .local v8, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v9, "GMT+8"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 186
    :try_start_0
    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 187
    .local v9, "date":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    aput-wide v10, v5, v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v9    # "date":Ljava/util/Date;
    nop

    .line 182
    .end local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 188
    .restart local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v9

    .line 189
    .local v9, "e":Ljava/text/ParseException;
    invoke-virtual {v9}, Ljava/text/ParseException;->printStackTrace()V

    .line 190
    const/4 v5, 0x0

    .line 191
    nop

    .line 194
    .end local v7    # "j":I
    .end local v8    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v9    # "e":Ljava/text/ParseException;
    :cond_1
    aget-object v7, v3, v4

    iput-object v5, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    goto :goto_3

    .line 179
    :cond_2
    :goto_2
    aget-object v7, v3, v4

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    .line 164
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 197
    .end local v4    # "i":I
    .end local v5    # "timeSlot":[J
    .end local v6    # "timeSlotStr":[Ljava/lang/String;
    :cond_3
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_4

    .line 198
    iget-object v1, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v3}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1, v0, p1, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 202
    .end local v3    # "ret":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    :cond_5
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

    .line 120
    .local p3, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 122
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 124
    .local v1, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 125
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "i":I
    :cond_0
    iget v2, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 128
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 132
    .end local v1    # "ret":[I
    :cond_2
    return-void
.end method

.method private varargs responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 113
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseIntArrayList(ILandroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 116
    return-void
.end method

.method private responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 94
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;Z)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v0

    .line 96
    .local v0, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-eqz v0, :cond_1

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 99
    iget-object v2, v0, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v2, v0, p1, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processResponseDone(Lcom/mediatek/ims/ril/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    .line 103
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 83
    if-eqz p0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 85
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processRequestAck(I)V

    .line 75
    return-void
.end method

.method public getCallSubAddressResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "enable"    # I

    .line 272
    return-void
.end method

.method public getColpResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 142
    filled-new-array {p2, p3}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 143
    return-void
.end method

.method public getColrResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 1
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "n"    # I

    .line 153
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseInts(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 154
    return-void
.end method

.method public getEccNumResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 273
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 290
    const-string v0, "6fb707faf11116647ab6b8daa3ee47c2662abaa2"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public hangupAllResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 265
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 266
    return-void
.end method

.method public hangupWithReasonResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 269
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 270
    return-void
.end method

.method public queryCallForwardInTimeSlotStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "callForwardInfoExs"    # [Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseCallForwardInfoEx(Landroid/hardware/radio/RadioResponseInfo;[Lvendor/mediatek/hardware/mtkradioex/voice/CallForwardInfoEx;)V

    .line 214
    return-void
.end method

.method public resetSuppServResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 221
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 222
    return-void
.end method

.method public sendCnapResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "n"    # I
    .param p3, "m"    # I

    .line 224
    return-void
.end method

.method public setCallForwardInTimeSlotResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 232
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 233
    return-void
.end method

.method public setCallIndicationResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 276
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 277
    return-void
.end method

.method public setCallSubAddressResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 279
    return-void
.end method

.method public setCallValidTimerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 280
    return-void
.end method

.method public setClipResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 241
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 242
    return-void
.end method

.method public setColpResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 250
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 251
    return-void
.end method

.method public setColrResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 259
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ril/MtkRadioExVoiceResponse;->responseVoid(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 260
    return-void
.end method

.method public setEccModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 281
    return-void
.end method

.method public setEccNumResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 282
    return-void
.end method

.method public setGwsdModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 283
    return-void
.end method

.method public setIgnoreSameNumberIntervalResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 284
    return-void
.end method

.method public setKeepAliveByIpDataResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 285
    return-void
.end method

.method public setKeepAliveByPDCPCtrlPDUResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 286
    return-void
.end method

.method public setSuppServPropertyResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 262
    return-void
.end method
