.class public Lcom/mediatek/ims/ril/SimIndication;
.super Landroid/hardware/radio/sim/IRadioSimIndication$Stub;
.source "SimIndication.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 31
    invoke-direct {p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mediatek/ims/ril/SimIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 33
    return-void
.end method


# virtual methods
.method public carrierInfoForImsiEncryption(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 40
    return-void
.end method

.method public cdmaSubscriptionSourceChanged(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "cdmaSource"    # I

    .line 48
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "4f348cc7aca716cc41c09ea95895c4b261231035"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 132
    const/4 v0, 0x2

    return v0
.end method

.method public simPhonebookChanged(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 55
    return-void
.end method

.method public simPhonebookRecordsReceived(IB[Landroid/hardware/radio/sim/PhonebookRecordInfo;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "status"    # B
    .param p3, "records"    # [Landroid/hardware/radio/sim/PhonebookRecordInfo;

    .line 65
    return-void
.end method

.method public simRefresh(ILandroid/hardware/radio/sim/SimRefreshResult;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "refreshResult"    # Landroid/hardware/radio/sim/SimRefreshResult;

    .line 74
    return-void
.end method

.method public simStatusChanged(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 81
    return-void
.end method

.method public stkEventNotify(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 91
    return-void
.end method

.method public stkProactiveCommand(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 100
    return-void
.end method

.method public stkSessionEnd(I)V
    .locals 0
    .param p1, "indicationType"    # I

    .line 107
    return-void
.end method

.method public subscriptionStatusChanged(IZ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "activate"    # Z

    .line 115
    return-void
.end method

.method public uiccApplicationsEnablementChanged(IZ)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "enabled"    # Z

    .line 123
    return-void
.end method
