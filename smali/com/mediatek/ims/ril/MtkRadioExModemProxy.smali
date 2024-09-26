.class public Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
.super Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.source "MtkRadioExModemProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioExModemProxy"


# instance fields
.field private volatile mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    .line 82
    return-void
.end method

.method public getAidl()Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public responseAcknowledgementMtk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 104
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 107
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 109
    :goto_0
    return-void
.end method

.method public runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "nafFqdn"    # Ljava/lang/String;
    .param p3, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p4, "forceRun"    # Z
    .param p5, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    const/4 v7, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZII)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 119
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 122
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 124
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;)Lcom/android/internal/telephony/HalVersion;
    .locals 5
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "modem"    # Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    .line 46
    const-string v0, "MtkRadioExModemProxy"

    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 47
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mIsAidl:Z

    .line 51
    :try_start_0
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->getInterfaceVersion()I

    move-result v1

    .line 52
    .local v1, "version":I
    nop

    .line 54
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    .line 57
    .local v2, "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AIDL version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", halVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    iput-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "version":I
    .end local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    :cond_0
    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAidl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method public setVendorSetting(IILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "setting"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->setVendorSetting(IILjava/lang/String;I)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 134
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 137
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    .line 139
    :goto_0
    return-void
.end method
