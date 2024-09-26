.class public abstract Lcom/mediatek/ims/ril/RadioServiceProxy;
.super Ljava/lang/Object;
.source "RadioServiceProxy.java"


# instance fields
.field mHalVersion:Lcom/android/internal/telephony/HalVersion;

.field mIsAidl:Z

.field volatile mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 63
    sget-object v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 65
    return-void
.end method

.method public getHidl()Landroid/hardware/radio/V1_0/IRadio;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    return-object v0
.end method

.method public isAidl()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mIsAidl:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

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

    .line 80
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    .line 84
    :cond_1
    return-void
.end method

.method public setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_0/IRadio;)V
    .locals 1
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "radio"    # Landroid/hardware/radio/V1_0/IRadio;

    .line 46
    iput-object p1, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 47
    iput-object p2, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ril/RadioServiceProxy;->mIsAidl:Z

    .line 49
    return-void
.end method
