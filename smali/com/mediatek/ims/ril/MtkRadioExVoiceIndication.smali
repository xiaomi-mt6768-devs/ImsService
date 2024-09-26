.class public Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;
.super Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication$Stub;
.source "MtkRadioExVoiceIndication.java"


# instance fields
.field private mPhoneId:I

.field mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 57
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication$Stub;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 59
    iput p2, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mPhoneId:I

    .line 60
    return-void
.end method


# virtual methods
.method public callAdditionalInfoInd(II[Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "ciType"    # I
    .param p3, "info"    # [Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 66
    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 67
    .local v0, "notification":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 69
    add-int/lit8 v2, v1, 0x1

    aget-object v3, p3, v1

    aput-object v3, v0, v2

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const/16 v3, 0xc36

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallAdditionalInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallAdditionalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 81
    :cond_1
    return-void
.end method

.method public cdmaCallAccepted(I)V
    .locals 0
    .param p1, "type"    # I

    .line 109
    return-void
.end method

.method public cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/voice/CfuStatusNotification;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "cfuStatus"    # Lvendor/mediatek/hardware/mtkradioex/voice/CfuStatusNotification;

    .line 113
    return-void
.end method

.method public cipherIndication(ILvendor/mediatek/hardware/mtkradioex/voice/CipherNotification;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "cipherNotify"    # Lvendor/mediatek/hardware/mtkradioex/voice/CipherNotification;

    .line 117
    return-void
.end method

.method public confSRVCC(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "callIds"    # [I

    .line 121
    return-void
.end method

.method public crssIndication(ILvendor/mediatek/hardware/mtkradioex/voice/CrssNotification;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "crssNotify"    # Lvendor/mediatek/hardware/mtkradioex/voice/CrssNotification;

    .line 125
    return-void
.end method

.method public eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ecc_list_with_card"    # Ljava/lang/String;
    .param p3, "ecc_list_no_card"    # Ljava/lang/String;

    .line 129
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 136
    const-string v0, "6fb707faf11116647ab6b8daa3ee47c2662abaa2"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;

    .line 85
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 88
    .local v0, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;->callId:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 89
    const/4 v2, 0x1

    iget-object v3, p2, Lvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;->number:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 90
    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 91
    const/4 v1, 0x3

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;->callMode:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 92
    const/4 v1, 0x4

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;->seqNo:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 93
    const/4 v1, 0x5

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;->redirectNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 94
    const/4 v1, 0x6

    iget-object v2, p2, Lvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;->toNumber:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 97
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const/16 v3, 0xbc7

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExVoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mIncomingCallIndicationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 105
    :cond_0
    return-void
.end method

.method public suppSvcNotifyEx(ILandroid/hardware/radio/network/SuppSvcNotification;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "suppSvc"    # Landroid/hardware/radio/network/SuppSvcNotification;

    .line 132
    return-void
.end method
