.class public Lcom/mediatek/ims/ril/RadioNetworkProxy;
.super Lcom/mediatek/ims/ril/RadioServiceProxy;
.source "RadioNetworkProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioNetworkProxy"


# instance fields
.field private volatile mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 71
    return-void
.end method

.method public getAidl()Landroid/hardware/radio/network/IRadioNetwork;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

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

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {v0}, Landroid/hardware/radio/network/IRadioNetwork;->responseAcknowledgement()V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    .line 94
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/network/IRadioNetwork;)Lcom/android/internal/telephony/HalVersion;
    .locals 5
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "network"    # Landroid/hardware/radio/network/IRadioNetwork;

    .line 43
    const-string v0, "RadioNetworkProxy"

    move-object v1, p1

    .line 45
    .local v1, "version":Lcom/android/internal/telephony/HalVersion;
    :try_start_0
    invoke-interface {p2}, Landroid/hardware/radio/network/IRadioNetwork;->getInterfaceVersion()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getAospServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v2

    .line 47
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

    .line 49
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v1, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 50
    iput-object p2, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 51
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mIsAidl:Z

    .line 52
    const-string v2, "AIDL initialized"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method
