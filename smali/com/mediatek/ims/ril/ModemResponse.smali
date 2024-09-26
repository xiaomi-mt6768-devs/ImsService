.class public Lcom/mediatek/ims/ril/ModemResponse;
.super Landroid/hardware/radio/modem/IRadioModemResponse$Stub;
.source "ModemResponse.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 31
    invoke-direct {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mediatek/ims/ril/ModemResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 33
    return-void
.end method


# virtual methods
.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 42
    iget-object v0, p0, Lcom/mediatek/ims/ril/ModemResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processRequestAck(I)V

    .line 43
    return-void
.end method

.method public enableModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 49
    return-void
.end method

.method public getBasebandVersionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "version"    # Ljava/lang/String;

    .line 56
    return-void
.end method

.method public getDeviceIdentityResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imeisv"    # Ljava/lang/String;
    .param p4, "esn"    # Ljava/lang/String;
    .param p5, "meid"    # Ljava/lang/String;

    .line 67
    return-void
.end method

.method public getHardwareConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/modem/HardwareConfig;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "config"    # [Landroid/hardware/radio/modem/HardwareConfig;

    .line 83
    return-void
.end method

.method public getImeiResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ImeiInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "imeiInfo"    # Landroid/hardware/radio/modem/ImeiInfo;

    .line 75
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 161
    const-string v0, "09927560afccc75a063944fbbab3af48099261ca"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 166
    const/4 v0, 0x2

    return v0
.end method

.method public getModemActivityInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ActivityStatsInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "activityInfo"    # Landroid/hardware/radio/modem/ActivityStatsInfo;

    .line 91
    return-void
.end method

.method public getModemStackStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "isEnabled"    # Z

    .line 98
    return-void
.end method

.method public getRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "radioCapability"    # Landroid/hardware/radio/modem/RadioCapability;

    .line 106
    return-void
.end method

.method public nvReadItemResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;

    .line 113
    return-void
.end method

.method public nvResetConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 119
    return-void
.end method

.method public nvWriteCdmaPrlResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 125
    return-void
.end method

.method public nvWriteItemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 131
    return-void
.end method

.method public requestShutdownResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 137
    return-void
.end method

.method public sendDeviceStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 143
    return-void
.end method

.method public setRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "radioCapability"    # Landroid/hardware/radio/modem/RadioCapability;

    .line 151
    return-void
.end method

.method public setRadioPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 157
    return-void
.end method
