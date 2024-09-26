.class public abstract Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.super Ljava/lang/Object;
.source "MtkRadioExServiceProxy.java"


# instance fields
.field mHalVersion:Lcom/android/internal/telephony/HalVersion;

.field mIsAidl:Z

.field volatile mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 65
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    .line 67
    return-void
.end method

.method public getHidl()Landroid/hidl/base/V1_0/IBase;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    return-object v0
.end method

.method public isAidl()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mIsAidl:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

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

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isAidl()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 86
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 89
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 92
    :cond_2
    :goto_0
    return-void
.end method

.method public setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hidl/base/V1_0/IBase;)V
    .locals 1
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "radio"    # Landroid/hidl/base/V1_0/IBase;

    .line 48
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 49
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->mIsAidl:Z

    .line 51
    return-void
.end method
