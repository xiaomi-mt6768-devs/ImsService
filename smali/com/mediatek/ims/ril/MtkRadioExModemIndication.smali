.class public Lcom/mediatek/ims/ril/MtkRadioExModemIndication;
.super Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication$Stub;
.source "MtkRadioExModemIndication.java"


# instance fields
.field mMtkRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 29
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModemIndication$Stub;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemIndication;->mMtkRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 31
    iput p2, p0, Lcom/mediatek/ims/ril/MtkRadioExModemIndication;->mPhoneId:I

    .line 32
    return-void
.end method


# virtual methods
.method public dsbpStateChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "dsbpState"    # I

    .line 33
    return-void
.end method

.method public eMBMSAtInfoIndication(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 34
    return-void
.end method

.method public eMBMSSessionStatusIndication(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 35
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "9f5d2f5ee70445878bed35289d95edaea4489af4"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public iwlanRegistrationStateInd(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # I

    .line 36
    return-void
.end method

.method public oemHookRaw(I[B)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "data"    # [B

    .line 37
    return-void
.end method

.method public onCellularQualityChangedInd(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I

    .line 41
    return-void
.end method

.method public onTxPowerIndication(I[I)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "indPower"    # [I

    .line 38
    return-void
.end method

.method public onTxPowerStatusIndication(I[I)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "indPower"    # [I

    .line 39
    return-void
.end method

.method public worldModeChangedIndication(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "modes"    # [I

    .line 40
    return-void
.end method
