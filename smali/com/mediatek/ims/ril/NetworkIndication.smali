.class public Lcom/mediatek/ims/ril/NetworkIndication;
.super Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;
.source "NetworkIndication.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 35
    invoke-direct {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mediatek/ims/ril/NetworkIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 37
    return-void
.end method


# virtual methods
.method public barringInfoChanged(ILandroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "cellIdentity"    # Landroid/hardware/radio/network/CellIdentity;
    .param p3, "barringInfos"    # [Landroid/hardware/radio/network/BarringInfo;

    .line 49
    return-void
.end method

.method public cdmaPrlChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "version"    # I

    .line 57
    return-void
.end method

.method public cellInfoList(I[Landroid/hardware/radio/network/CellInfo;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "records"    # [Landroid/hardware/radio/network/CellInfo;

    .line 66
    return-void
.end method

.method public currentLinkCapacityEstimate(ILandroid/hardware/radio/network/LinkCapacityEstimate;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "lce"    # Landroid/hardware/radio/network/LinkCapacityEstimate;

    .line 75
    return-void
.end method

.method public currentPhysicalChannelConfigs(I[Landroid/hardware/radio/network/PhysicalChannelConfig;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "configs"    # [Landroid/hardware/radio/network/PhysicalChannelConfig;

    .line 84
    return-void
.end method

.method public currentSignalStrength(ILandroid/hardware/radio/network/SignalStrength;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "signalStrength"    # Landroid/hardware/radio/network/SignalStrength;

    .line 93
    return-void
.end method

.method public emergencyNetworkScanResult(ILandroid/hardware/radio/network/EmergencyRegResult;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/network/EmergencyRegResult;

    .line 191
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 198
    const-string v0, "1b6608f238bd0b1c642df315621a7b605eafc883"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 203
    const/4 v0, 0x2

    return v0
.end method

.method public imsNetworkStateChanged(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 100
    return-void
.end method

.method public networkScanResult(ILandroid/hardware/radio/network/NetworkScanResult;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "result"    # Landroid/hardware/radio/network/NetworkScanResult;

    .line 109
    return-void
.end method

.method public networkStateChanged(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 116
    return-void
.end method

.method public nitzTimeReceived(ILjava/lang/String;JJ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "nitzTime"    # Ljava/lang/String;
    .param p3, "receivedTimeMs"    # J
    .param p5, "ageMs"    # J

    .line 131
    return-void
.end method

.method public onNetworkInitiatedLocationResult(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "locationResponseType"    # I

    .line 194
    return-void
.end method

.method public registrationFailed(ILandroid/hardware/radio/network/CellIdentity;Ljava/lang/String;III)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "cellIdentity"    # Landroid/hardware/radio/network/CellIdentity;
    .param p3, "chosenPlmn"    # Ljava/lang/String;
    .param p4, "domain"    # I
    .param p5, "causeCode"    # I
    .param p6, "additionalCauseCode"    # I

    .line 145
    return-void
.end method

.method public restrictedStateChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "state"    # I

    .line 153
    return-void
.end method

.method public suppSvcNotify(ILandroid/hardware/radio/network/SuppSvcNotification;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "suppSvcNotification"    # Landroid/hardware/radio/network/SuppSvcNotification;

    .line 162
    iget-object v0, p0, Lcom/mediatek/ims/ril/NetworkIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(II)V

    .line 164
    new-instance v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 165
    .local v0, "notification":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    iget-boolean v1, p2, Landroid/hardware/radio/network/SuppSvcNotification;->isMT:Z

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 166
    iget v1, p2, Landroid/hardware/radio/network/SuppSvcNotification;->code:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 167
    iget v1, p2, Landroid/hardware/radio/network/SuppSvcNotification;->index:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    .line 168
    iget v1, p2, Landroid/hardware/radio/network/SuppSvcNotification;->type:I

    iput v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    .line 169
    iget-object v1, p2, Landroid/hardware/radio/network/SuppSvcNotification;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/mediatek/ims/ril/NetworkIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/mediatek/ims/ril/NetworkIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/mediatek/ims/ril/NetworkIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 179
    :cond_0
    return-void
.end method

.method public voiceRadioTechChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "rat"    # I

    .line 187
    return-void
.end method
