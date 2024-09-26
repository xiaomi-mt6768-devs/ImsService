.class public Lcom/mediatek/ims/ril/RadioModemProxy;
.super Lcom/mediatek/ims/ril/RadioServiceProxy;
.source "RadioModemProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioModemProxy"


# instance fields
.field private volatile mModemProxy:Landroid/hardware/radio/modem/IRadioModem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    .line 69
    return-void
.end method

.method public getAidl()Landroid/hardware/radio/modem/IRadioModem;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public responseAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {v0}, Landroid/hardware/radio/modem/IRadioModem;->responseAcknowledgement()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    .line 92
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/modem/IRadioModem;)Lcom/android/internal/telephony/HalVersion;
    .locals 5
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "modem"    # Landroid/hardware/radio/modem/IRadioModem;

    .line 41
    const-string v0, "RadioModemProxy"

    move-object v1, p1

    .line 43
    .local v1, "version":Lcom/android/internal/telephony/HalVersion;
    :try_start_0
    invoke-interface {p2}, Landroid/hardware/radio/modem/IRadioModem;->getInterfaceVersion()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getAospServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 46
    goto :goto_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAidl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v1, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 48
    iput-object p2, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    .line 49
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mIsAidl:Z

    .line 50
    const-string v2, "AIDL initialized"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method
