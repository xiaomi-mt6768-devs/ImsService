.class public Lcom/mediatek/ims/ril/VoiceIndication;
.super Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;
.source "VoiceIndication.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 34
    invoke-direct {p0}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 36
    return-void
.end method


# virtual methods
.method public callRing(IZLandroid/hardware/radio/voice/CdmaSignalInfoRecord;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "isGsm"    # Z
    .param p3, "record"    # Landroid/hardware/radio/voice/CdmaSignalInfoRecord;

    .line 48
    return-void
.end method

.method public callStateChanged(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 55
    return-void
.end method

.method public cdmaCallWaiting(ILandroid/hardware/radio/voice/CdmaCallWaiting;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "callWaitingRecord"    # Landroid/hardware/radio/voice/CdmaCallWaiting;

    .line 64
    return-void
.end method

.method public cdmaInfoRec(I[Landroid/hardware/radio/voice/CdmaInformationRecord;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "records"    # [Landroid/hardware/radio/voice/CdmaInformationRecord;

    .line 73
    return-void
.end method

.method public cdmaOtaProvisionStatus(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "status"    # I

    .line 81
    return-void
.end method

.method public currentEmergencyNumberList(I[Landroid/hardware/radio/voice/EmergencyNumber;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "emergencyNumberList"    # [Landroid/hardware/radio/voice/EmergencyNumber;

    .line 91
    return-void
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 99
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(II)V

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEnterECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 106
    :cond_0
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 114
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(II)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mediatek/ims/ril/VoiceIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mExitECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 121
    :cond_0
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 184
    const-string v0, "8c5e0d53dc67b5ed221b2da0570a17684d973a20"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 189
    const/4 v0, 0x2

    return v0
.end method

.method public indicateRingbackTone(IZ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "start"    # Z

    .line 129
    return-void
.end method

.method public onSupplementaryServiceIndication(ILandroid/hardware/radio/voice/StkCcUnsolSsResult;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "ss"    # Landroid/hardware/radio/voice/StkCcUnsolSsResult;

    .line 139
    return-void
.end method

.method public onUssd(IILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "ussdModeType"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 149
    return-void
.end method

.method public resendIncallMute(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 156
    return-void
.end method

.method public srvccStateNotify(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "state"    # I

    .line 164
    return-void
.end method

.method public stkCallControlAlphaNotify(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "alpha"    # Ljava/lang/String;

    .line 172
    return-void
.end method

.method public stkCallSetup(IJ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "timeout"    # J

    .line 180
    return-void
.end method
