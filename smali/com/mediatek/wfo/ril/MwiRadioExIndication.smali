.class public Lcom/mediatek/wfo/ril/MwiRadioExIndication;
.super Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;
.source "MwiRadioExIndication.java"


# instance fields
.field private mPhoneId:I

.field private mRil:Lcom/mediatek/wfo/ril/MwiRIL;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/ril/MwiRIL;I)V
    .locals 2
    .param p1, "ril"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .param p2, "phoneId"    # I

    .line 13
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    .line 15
    iput p2, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mPhoneId:I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MwiRadioExIndication, phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLogv(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private addPhoneIdToArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "input"    # [Ljava/lang/String;

    .line 163
    array-length v0, p1

    .line 164
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 165
    .local v1, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 166
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v2, v2, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 169
    return-object v1
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 174
    const-string v0, "0857e51e04bcb3ae03f5ee374ee6d3ca41478e7b"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onLocationRequest(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc08

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLog(I)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestGeoLocationRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestGeoLocationRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 93
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->addPhoneIdToArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onNattKeepAliveChanged(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc0e

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLog(I)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mNattKeepAliveChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mNattKeepAliveChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 119
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->addPhoneIdToArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onPdnHandover(I[I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I

    .line 60
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 62
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc04

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnHandoverRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnHandoverRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onWfcPdnError(I[I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I

    .line 47
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 49
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc07

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnErrorRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnErrorRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onWfcPdnStateChanged(I[I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I

    .line 99
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 101
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc09

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWfcPdnStateChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWfcPdnStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onWifiLock(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc37

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiLockRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiLockRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 145
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->addPhoneIdToArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onWifiMonitoringThreshouldChanged(I[I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I

    .line 21
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 23
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc06

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRssiThresholdChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRssiThresholdChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 30
    :cond_0
    return-void
.end method

.method public onWifiPdnActivate(I[I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I

    .line 34
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 36
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc05

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnActivatedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnActivatedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onWifiPdnOOS(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc10

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnOosRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnOosRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 132
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->addPhoneIdToArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 131
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onWifiPingRequest(I[I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I

    .line 151
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc0f

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPingRequestRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPingRequestRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onWifiRoveout(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-virtual {v0, p1}, Lcom/mediatek/wfo/ril/MwiRIL;->processIndication(I)V

    .line 75
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    const/16 v1, 0xc03

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/wfo/ril/MwiRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnRoveOutRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->mRil:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mWifiPdnRoveOutRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    .line 80
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/ril/MwiRadioExIndication;->addPhoneIdToArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 82
    :cond_0
    return-void
.end method
