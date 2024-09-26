.class public Lcom/mediatek/ims/ril/ModemIndication;
.super Landroid/hardware/radio/modem/IRadioModemIndication$Stub;
.source "ModemIndication.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 31
    invoke-direct {p0}, Landroid/hardware/radio/modem/IRadioModemIndication$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mediatek/ims/ril/ModemIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 33
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "09927560afccc75a063944fbbab3af48099261ca"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 96
    const/4 v0, 0x2

    return v0
.end method

.method public hardwareConfigChanged(I[Landroid/hardware/radio/modem/HardwareConfig;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "configs"    # [Landroid/hardware/radio/modem/HardwareConfig;

    .line 42
    return-void
.end method

.method public modemReset(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 52
    return-void
.end method

.method public radioCapabilityIndication(ILandroid/hardware/radio/modem/RadioCapability;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "radioCapability"    # Landroid/hardware/radio/modem/RadioCapability;

    .line 62
    return-void
.end method

.method public radioStateChanged(II)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "radioState"    # I

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/ril/ModemIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processIndication(II)V

    .line 71
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioState(I)I

    move-result v0

    .line 74
    .local v0, "newState":I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ModemIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogMore(ILjava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/mediatek/ims/ril/ModemIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->setRadioState(IZ)V

    .line 79
    iget-object v1, p0, Lcom/mediatek/ims/ril/ModemIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->notifyRadioStateChanged(I)V

    .line 80
    return-void
.end method

.method public rilConnected(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 87
    return-void
.end method
