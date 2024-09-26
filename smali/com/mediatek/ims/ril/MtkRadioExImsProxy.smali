.class public Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
.super Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.source "MtkRadioExImsProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkRadioExImsProxy"


# instance fields
.field private volatile mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    return-void
.end method


# virtual methods
.method public acknowledgeLastIncomingCdmaSmsEx(IZI)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Landroid/hardware/radio/messaging/CdmaSmsAck;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/CdmaSmsAck;-><init>()V

    .line 163
    .local v0, "msg":Landroid/hardware/radio/messaging/CdmaSmsAck;
    iput-boolean p2, v0, Landroid/hardware/radio/messaging/CdmaSmsAck;->errorClass:Z

    .line 164
    iput p3, v0, Landroid/hardware/radio/messaging/CdmaSmsAck;->smsCauseCode:I

    .line 165
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/messaging/CdmaSmsAck;I)V

    .line 167
    .end local v0    # "msg":Landroid/hardware/radio/messaging/CdmaSmsAck;
    goto :goto_0

    .line 168
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 170
    .local v0, "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    xor-int/lit8 v1, p2, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    .line 171
    iput p3, v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    .line 172
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 174
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 177
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 180
    .end local v0    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsEx(IZI)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->acknowledgeLastIncomingGsmSmsEx(IZII)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 204
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 207
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 209
    :goto_0
    return-void
.end method

.method public cancelUssi(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->cancelUssi(II)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 460
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->cancelUssi(I)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 463
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->cancelUssi(I)V

    .line 465
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 88
    return-void
.end method

.method public conferenceDial(I[Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "participants"    # [Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "isVideoCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 673
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;-><init>()V

    .line 678
    .local v0, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->clir:I

    .line 679
    iput-boolean p4, v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->isVideoCall:Z

    .line 680
    iput-object p2, v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->dialNumbers:[Ljava/lang/String;

    .line 682
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;I)V

    .line 684
    .end local v0    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;
    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 685
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;-><init>()V

    .line 687
    .local v0, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->clir:I

    .line 688
    iput-boolean p4, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->isVideoCall:Z

    .line 689
    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p2, v1

    .line 690
    .local v3, "dialNumber":Ljava/lang/String;
    iget-object v4, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->dialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    .end local v3    # "dialNumber":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 698
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;)V

    .line 699
    .end local v0    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    goto :goto_2

    .line 700
    :cond_3
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;-><init>()V

    .line 702
    .local v0, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->clir:I

    .line 703
    iput-boolean p4, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->isVideoCall:Z

    .line 704
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, p2, v1

    .line 705
    .restart local v3    # "dialNumber":Ljava/lang/String;
    iget-object v4, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->dialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v3    # "dialNumber":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 712
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 713
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;)V

    .line 715
    .end local v0    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    :goto_2
    return-void
.end method

.method public controlCall(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->controlCall(IIII)V

    goto :goto_0

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 733
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlCall(III)V

    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 736
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->controlCall(III)V

    .line 738
    :goto_0
    return-void
.end method

.method public controlImsConferenceCallMember(IIILjava/lang/String;I)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "confCallId"    # I
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->controlImsConferenceCallMember(IIILjava/lang/String;II)V

    goto :goto_0

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 758
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    goto :goto_0

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 761
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 763
    :goto_0
    return-void
.end method

.method public dialWithSipUri(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 773
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->dialWithSipUri(ILjava/lang/String;I)V

    goto :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 780
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->dialWithSipUri(ILjava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 783
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->dialWithSipUri(ILjava/lang/String;)V

    .line 785
    :goto_0
    return-void
.end method

.method public eccRedialApprove(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "approve"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->eccRedialApprove(IIII)V

    goto :goto_0

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 803
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->eccRedialApprove(III)V

    goto :goto_0

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 806
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->eccRedialApprove(III)V

    .line 808
    :goto_0
    return-void
.end method

.method public forceReleaseCall(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 816
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->forceReleaseCall(III)V

    goto :goto_0

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 822
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 823
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->forceReleaseCall(II)V

    goto :goto_0

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 826
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->forceReleaseCall(II)V

    .line 828
    :goto_0
    return-void
.end method

.method public getAidl()Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    return-object v0
.end method

.method public getBarringCalls(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getBarringCalls(III)V

    .line 538
    :cond_1
    return-void
.end method

.method public getImsCfgFeatureValue(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 996
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 998
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getImsCfgFeatureValue(IIII)V

    goto :goto_0

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1003
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgFeatureValue(III)V

    goto :goto_0

    .line 1005
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1006
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getImsCfgFeatureValue(III)V

    .line 1008
    :goto_0
    return-void
.end method

.method public getImsCfgProvisionValue(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getImsCfgProvisionValue(III)V

    goto :goto_0

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1025
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgProvisionValue(II)V

    goto :goto_0

    .line 1027
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1028
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getImsCfgProvisionValue(II)V

    .line 1030
    :goto_0
    return-void
.end method

.method public getImsCfgResourceCapValue(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1042
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getImsCfgResourceCapValue(III)V

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1047
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgResourceCapValue(II)V

    goto :goto_0

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1050
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getImsCfgResourceCapValue(II)V

    .line 1052
    :goto_0
    return-void
.end method

.method public getVoiceDomainPreference(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getVoiceDomainPreference(II)V

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1071
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getVoiceDomainPreference(I)V

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1074
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getVoiceDomainPreference(I)V

    .line 1076
    :goto_0
    return-void
.end method

.method public getXcapStatus(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getXcapStatus(II)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 478
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getXcapStatus(I)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 481
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getXcapStatus(I)V

    .line 483
    :goto_0
    return-void
.end method

.method public imsBearerStateConfirm(IIII)V
    .locals 7
    .param p1, "serial"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->imsBearerStateConfirm(IIIII)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 116
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsBearerStateConfirm(IIII)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 119
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->imsBearerStateConfirm(IIII)V

    .line 121
    :goto_0
    return-void
.end method

.method public imsEctCommand(ILjava/lang/String;I)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->imsEctCommand(ILjava/lang/String;II)V

    goto :goto_0

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 845
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 846
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsEctCommand(ILjava/lang/String;I)V

    goto :goto_0

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 849
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->imsEctCommand(ILjava/lang/String;I)V

    .line 851
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pullCall(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "isVideoCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 862
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 864
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->pullCall(ILjava/lang/String;ZI)V

    goto :goto_0

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 868
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 869
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->pullCall(ILjava/lang/String;Z)V

    goto :goto_0

    .line 871
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 872
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->pullCall(ILjava/lang/String;Z)V

    .line 874
    :goto_0
    return-void
.end method

.method public querySsacStatus(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1250
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1252
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->querySsacStatus(II)V

    goto :goto_0

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1257
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->querySsacStatus(I)V

    goto :goto_0

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1260
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->querySsacStatus(I)V

    .line 1262
    :goto_0
    return-void
.end method

.method public queryVopsStatus(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->queryVopsStatus(II)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 418
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->queryVopsStatus(I)V

    goto :goto_0

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 421
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryVopsStatus(I)V

    .line 423
    :goto_0
    return-void
.end method

.method public responseAcknowledgementMtk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1272
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1274
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1277
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1278
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 1280
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1281
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 1283
    :goto_0
    return-void
.end method

.method public rttModifyRequestResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->rttModifyRequestResponse(IIII)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 299
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->rttModifyRequestResponse(III)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 302
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->rttModifyRequestResponse(III)V

    .line 304
    :goto_0
    return-void
.end method

.method public sendImsSmsEx(ILjava/lang/String;Ljava/lang/String;[BZI)V
    .locals 4
    .param p1, "serial"    # I
    .param p2, "smscPdu"    # Ljava/lang/String;
    .param p3, "gsmPdu"    # Ljava/lang/String;
    .param p4, "cdmaPdu"    # [B
    .param p5, "retry"    # Z
    .param p6, "messageRef"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 233
    new-instance v0, Landroid/hardware/radio/messaging/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/ImsSmsMessage;-><init>()V

    .line 235
    .local v0, "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 236
    iput v2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->tech:I

    goto :goto_0

    .line 237
    :cond_1
    if-eqz p4, :cond_4

    .line 238
    iput v1, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->tech:I

    .line 243
    :goto_0
    iput-boolean p5, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->retry:Z

    .line 244
    iput p6, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->messageRef:I

    .line 245
    if-eqz p3, :cond_2

    .line 246
    new-array v3, v2, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    iput-object v3, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 247
    nop

    .line 248
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object v3

    filled-new-array {v3}, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object v3

    iput-object v3, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 250
    :cond_2
    if-eqz p4, :cond_3

    .line 251
    nop

    .line 252
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object v3

    filled-new-array {v3}, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object v3

    iput-object v3, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 253
    new-array v2, v2, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    iput-object v2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendImsSmsEx(ILandroid/hardware/radio/messaging/ImsSmsMessage;I)V

    .line 256
    .end local v0    # "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    goto :goto_1

    .line 240
    .restart local v0    # "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    :cond_4
    return-void

    .line 257
    .end local v0    # "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    :cond_5
    new-instance v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 259
    .local v0, "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    iput-boolean p5, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 260
    iput p6, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 261
    if-eqz p3, :cond_6

    .line 262
    iput v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 263
    iget-object v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_6
    if-eqz p4, :cond_7

    .line 266
    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 267
    iget-object v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_7
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 270
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 271
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto :goto_1

    .line 273
    :cond_8
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 274
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 277
    .end local v0    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :goto_1
    return-void
.end method

.method public sendRttModifyRequest(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "newMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendRttModifyRequest(IIII)V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 322
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendRttModifyRequest(III)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 325
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendRttModifyRequest(III)V

    .line 327
    :goto_0
    return-void
.end method

.method public sendRttText(IIILjava/lang/String;)V
    .locals 7
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "lenOfString"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendRttText(IIILjava/lang/String;I)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 346
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendRttText(IIILjava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 349
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendRttText(IIILjava/lang/String;)V

    .line 351
    :goto_0
    return-void
.end method

.method public sendUssi(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "ussiString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendUssi(ILjava/lang/String;I)V

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 497
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendUssi(ILjava/lang/String;)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 500
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendUssi(ILjava/lang/String;)V

    .line 502
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;)Lcom/android/internal/telephony/HalVersion;
    .locals 5
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "ims"    # Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 52
    const-string v0, "MtkRadioExImsProxy"

    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 53
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mIsAidl:Z

    .line 57
    :try_start_0
    invoke-interface {p2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getInterfaceVersion()I

    move-result v1

    .line 58
    .local v1, "version":I
    nop

    .line 60
    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    .line 63
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

    .line 64
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iput-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "version":I
    .end local v2    # "newHalVersion":Lcom/android/internal/telephony/HalVersion;
    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
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

    .line 70
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    return-object v0
.end method

.method public setBarringCalls(I[Lcom/mediatek/ims/MtkImsBarringCall;)V
    .locals 4
    .param p1, "serial"    # I
    .param p2, "calls"    # [Lcom/mediatek/ims/MtkImsBarringCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    array-length v0, p2

    new-array v0, v0, [Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;

    .line 553
    .local v0, "bCalls":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 554
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;-><init>()V

    aput-object v2, v0, v1

    .line 555
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->status:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->status:I

    .line 556
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->serviceClass:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->serviceClass:I

    .line 557
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->toa:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->toa:I

    .line 558
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget-object v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    if-eqz v3, :cond_1

    aget-object v3, p2, v1

    iget-object v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->number:Ljava/lang/String;

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setBarringCalls(I[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;I)V

    .line 564
    .end local v0    # "bCalls":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    :cond_3
    return-void
.end method

.method public setCallAdditionalInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 887
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 889
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 891
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 892
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 893
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 894
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 895
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 896
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 898
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setCallAdditionalInfo(I[Ljava/lang/String;I)V

    .line 900
    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 902
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 904
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 905
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    .line 907
    :goto_0
    return-void
.end method

.method public setImsBearerNotification(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsBearerNotification(III)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 138
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsBearerNotification(II)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 141
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsBearerNotification(II)V

    .line 143
    :goto_0
    return-void
.end method

.method public setImsCallMode(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 917
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 919
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsCallMode(III)V

    goto :goto_0

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 924
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCallMode(II)V

    goto :goto_0

    .line 926
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 927
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsCallMode(II)V

    .line 929
    :goto_0
    return-void
.end method

.method public setImsCfgFeatureValue(IIIII)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I
    .param p5, "isLast"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1092
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsCfgFeatureValue(IIIIII)V

    goto :goto_0

    .line 1096
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1098
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCfgFeatureValue(IIIII)V

    goto :goto_0

    .line 1101
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1102
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsCfgFeatureValue(IIIII)V

    .line 1105
    :goto_0
    return-void
.end method

.method public setImsCfgProvisionValue(IILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1116
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1118
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsCfgProvisionValue(IILjava/lang/String;I)V

    goto :goto_0

    .line 1121
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1123
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCfgProvisionValue(IILjava/lang/String;)V

    goto :goto_0

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1126
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 1128
    :goto_0
    return-void
.end method

.method public setImsRegistrationReport(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsRegistrationReport(II)V

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 439
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsRegistrationReport(I)V

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 442
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsRegistrationReport(I)V

    .line 444
    :goto_0
    return-void
.end method

.method public setImscfg(IZZZZZZ)V
    .locals 11
    .param p1, "serial"    # I
    .param p2, "volteEnable"    # Z
    .param p3, "vilteEnable"    # Z
    .param p4, "vowifiEnable"    # Z
    .param p5, "viwifiEnable"    # Z
    .param p6, "smsEnable"    # Z
    .param p7, "eimsEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1144
    move-object v0, p0

    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1147
    iget-object v2, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v10, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImscfg(IZZZZZZI)V

    goto :goto_0

    .line 1150
    :cond_1
    iget-object v1, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1151
    iget-object v1, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v2, v1

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1152
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImscfg(IZZZZZZ)V

    goto :goto_0

    .line 1159
    :cond_2
    iget-object v1, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v2, v1

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1160
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImscfg(IZZZZZZ)V

    .line 1167
    :goto_0
    return-void
.end method

.method public setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "serial"    # I
    .param p2, "keys"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1233
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1234
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1237
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1239
    :goto_0
    return-void
.end method

.method public setRttMode(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setRttMode(III)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 370
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setRttMode(II)V

    goto :goto_0

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 373
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setRttMode(II)V

    .line 375
    :goto_0
    return-void
.end method

.method public setSipHeader(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 939
    .local p2, "arrListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 941
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 943
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 944
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 945
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 946
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 948
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setSipHeader(I[Ljava/lang/String;I)V

    .line 950
    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 952
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setSipHeader(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 954
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 955
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSipHeader(ILjava/util/ArrayList;)V

    .line 957
    :goto_0
    return-void
.end method

.method public setSipHeaderReport(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 967
    .local p2, "arrListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 971
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 972
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 974
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setSipHeaderReport(I[Ljava/lang/String;I)V

    .line 976
    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 978
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setSipHeaderReport(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 980
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 981
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSipHeaderReport(ILjava/util/ArrayList;)V

    .line 983
    :goto_0
    return-void
.end method

.method public setVoiceDomainPreference(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "vdp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1177
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setVoiceDomainPreference(III)V

    goto :goto_0

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1184
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVoiceDomainPreference(II)V

    goto :goto_0

    .line 1186
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1187
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVoiceDomainPreference(II)V

    .line 1189
    :goto_0
    return-void
.end method

.method public setWfcProfile(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "wfcPreference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1200
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setWfcProfile(III)V

    goto :goto_0

    .line 1205
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1206
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1207
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWfcProfile(II)V

    goto :goto_0

    .line 1209
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1210
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setWfcProfile(II)V

    .line 1212
    :goto_0
    return-void
.end method

.method public setupXcapUserAgentString(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setupXcapUserAgentString(ILjava/lang/String;I)V

    goto :goto_0

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 518
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setupXcapUserAgentString(ILjava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 521
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 523
    :goto_0
    return-void
.end method

.method public toggleRttAudioIndication(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "audio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->toggleRttAudioIndication(IIII)V

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 393
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->toggleRttAudioIndication(III)V

    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 396
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->toggleRttAudioIndication(III)V

    .line 398
    :goto_0
    return-void
.end method

.method public videoCallAccept(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "videoMode"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->videoCallAccept(IIII)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 583
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->videoCallAccept(III)V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 586
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->videoCallAccept(III)V

    .line 588
    :goto_0
    return-void
.end method

.method public videoRingtoneEventRequest(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 601
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 604
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/String;

    .line 605
    .local v1, "data":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 606
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v1, v3}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->videoRingtoneEventRequest(I[Ljava/lang/String;I)V

    .line 611
    .end local v0    # "length":I
    .end local v1    # "data":[Ljava/lang/String;
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 613
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    goto :goto_1

    .line 615
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;

    .line 616
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    .line 618
    :goto_1
    return-void
.end method

.method public vtDial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->vtDial(ILandroid/hardware/radio/voice/Dial;I)V

    goto :goto_0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 635
    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 638
    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 640
    :goto_0
    return-void
.end method

.method public vtDialWithSipUri(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->vtDialWithSipUri(ILjava/lang/String;I)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 656
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->vtDialWithSipUri(ILjava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 659
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 661
    :goto_0
    return-void
.end method
