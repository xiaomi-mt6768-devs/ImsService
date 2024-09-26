.class public Lcom/mediatek/ims/ril/NetworkResponse;
.super Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;
.source "NetworkResponse.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 29
    invoke-direct {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mediatek/ims/ril/NetworkResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 31
    return-void
.end method


# virtual methods
.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 40
    iget-object v0, p0, Lcom/mediatek/ims/ril/NetworkResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processRequestAck(I)V

    .line 41
    return-void
.end method

.method public cancelEmergencyNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 302
    return-void
.end method

.method public exitEmergencyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 299
    return-void
.end method

.method public getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "halRadioAccessFamilyBitmap"    # I

    .line 49
    return-void
.end method

.method public getAvailableBandModesResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "bandModes"    # [I

    .line 56
    return-void
.end method

.method public getAvailableNetworksResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/OperatorInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "networkInfos"    # [Landroid/hardware/radio/network/OperatorInfo;

    .line 64
    return-void
.end method

.method public getBarringInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "cellIdentity"    # Landroid/hardware/radio/network/CellIdentity;
    .param p3, "barringInfos"    # [Landroid/hardware/radio/network/BarringInfo;

    .line 74
    return-void
.end method

.method public getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "type"    # I

    .line 81
    return-void
.end method

.method public getCellInfoListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/CellInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "cellInfo"    # [Landroid/hardware/radio/network/CellInfo;

    .line 89
    return-void
.end method

.method public getDataRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "dataRegResponse"    # Landroid/hardware/radio/network/RegStateResult;

    .line 97
    return-void
.end method

.method public getImsRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "isRegistered"    # Z
    .param p3, "ratFamily"    # I

    .line 106
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 326
    const-string v0, "1b6608f238bd0b1c642df315621a7b605eafc883"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 331
    const/4 v0, 0x2

    return v0
.end method

.method public getLocationPrivacySettingResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "shareLocation"    # Z

    .line 322
    return-void
.end method

.method public getNetworkSelectionModeResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "selection"    # Z

    .line 113
    return-void
.end method

.method public getOperatorResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "longName"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;
    .param p4, "numeric"    # Ljava/lang/String;

    .line 123
    return-void
.end method

.method public getSignalStrengthResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/SignalStrength;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "signalStrength"    # Landroid/hardware/radio/network/SignalStrength;

    .line 131
    return-void
.end method

.method public getSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/RadioAccessSpecifier;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "halSpecifiers"    # [Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 139
    return-void
.end method

.method public getUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "usageSetting"    # I

    .line 289
    return-void
.end method

.method public getVoiceRadioTechnologyResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "rat"    # I

    .line 146
    return-void
.end method

.method public getVoiceRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "voiceRegResponse"    # Landroid/hardware/radio/network/RegStateResult;

    .line 154
    return-void
.end method

.method public isN1ModeEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "isEnabled"    # Z

    .line 312
    return-void
.end method

.method public isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "isEnabled"    # Z

    .line 163
    return-void
.end method

.method public isNullCipherAndIntegrityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "isEnabled"    # Z

    .line 309
    return-void
.end method

.method public pullLceDataResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/LceDataInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "lceInfo"    # Landroid/hardware/radio/network/LceDataInfo;

    .line 171
    return-void
.end method

.method public setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 177
    return-void
.end method

.method public setBandModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 183
    return-void
.end method

.method public setBarringPasswordResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 189
    return-void
.end method

.method public setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 195
    return-void
.end method

.method public setCellInfoListRateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 201
    return-void
.end method

.method public setEmergencyModeResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/EmergencyRegResult;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "regState"    # Landroid/hardware/radio/network/EmergencyRegResult;

    .line 293
    return-void
.end method

.method public setIndicationFilterResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 207
    return-void
.end method

.method public setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 213
    return-void
.end method

.method public setLocationPrivacySettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 318
    return-void
.end method

.method public setLocationUpdatesResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 219
    return-void
.end method

.method public setN1ModeEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 315
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 225
    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 231
    return-void
.end method

.method public setNrDualConnectivityStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 237
    return-void
.end method

.method public setNullCipherAndIntegrityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 305
    return-void
.end method

.method public setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 243
    return-void
.end method

.method public setSuppServiceNotificationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 249
    return-void
.end method

.method public setSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 255
    return-void
.end method

.method public setUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 281
    return-void
.end method

.method public startNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 261
    return-void
.end method

.method public stopNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 267
    return-void
.end method

.method public supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "retriesRemaining"    # I

    .line 275
    return-void
.end method

.method public triggerEmergencyNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 296
    return-void
.end method
