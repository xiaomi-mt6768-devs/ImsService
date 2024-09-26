.class public Lcom/mediatek/ims/MtkImsCallSessionProxy;
.super Ljava/lang/Object;
.source "MtkImsCallSessionProxy.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsCallSessionProxy$ImsCallLogLevel;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsCallSessionProxy"


# instance fields
.field private mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

.field private mCacheCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

.field private mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "phoneId"    # I

    .line 154
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkImsCallSessionProxy() : RILAdapter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v1, p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    move-object v3, p0

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 157
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p4, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "ci"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p7, "callId"    # Ljava/lang/String;
    .param p8, "phoneId"    # I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/MtkImsCallSessionProxy$1;-><init>(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 148
    return-void
.end method

.method private logWithCallId(Ljava/lang/String;I)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lvl"    # I

    .line 448
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, "MtkImsCallSessionProxy"

    if-nez v0, :cond_0

    .line 449
    const-string v0, "logWithCallId with mAospImsCallSessionProxy = null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void

    .line 453
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "mCallId":Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "] "

    const-string v4, "[callId = "

    if-ne v2, p2, :cond_1

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 458
    :cond_1
    const/4 v2, 0x2

    if-ne v2, p2, :cond_2

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 460
    :cond_2
    const/4 v2, 0x3

    if-ne v2, p2, :cond_3

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_3
    const/4 v2, 0x4

    if-ne v2, p2, :cond_4

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    :cond_4
    const/4 v2, 0x5

    if-ne v2, p2, :cond_5

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_0
    return-void
.end method


# virtual methods
.method public approveEccRedial(Z)V
    .locals 2
    .param p1, "isAprroved"    # Z

    .line 237
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->approveEccRedial(Z)V

    .line 243
    return-void

    .line 238
    :cond_1
    :goto_0
    const-string v0, "approveEccRedial() : mCallSessionImpl is null"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 240
    return-void
.end method

.method public callTerminated()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 283
    const-string v0, "callTerminated() : mAospImsCallSessionProxy is null"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 285
    return-void

    .line 288
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->callTerminated()V

    .line 289
    return-void
.end method

.method public close()V
    .locals 2

    .line 161
    const-string v0, "close() : MtkImsCallSessionProxy is going to be closed!!! "

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->close()V

    .line 166
    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 168
    :cond_0
    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 169
    iput-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mCacheCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 170
    return-void
.end method

.method public getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v1, ""

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "getCallId() : RemoteException getCallId()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 182
    return-object v1

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const-string v0, "getCallId() : mCallSessionImpl is null"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 175
    return-object v1
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "getCallProfile() : RemoteException getCallProfile()"

    invoke-direct {p0, v3, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 197
    return-object v1

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const-string v0, "getCallProfile() : mCallSessionImpl is null"

    invoke-direct {p0, v0, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 189
    return-object v1
.end method

.method getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 413
    const-string v0, "ConferenceEventListener() : mAospImsCallSessionProxy is null"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 415
    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getConfEvtListener()Lcom/mediatek/ims/ImsCallSessionProxy$ConferenceEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCallId()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getHeaderCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "getIImsCallSession() : mAospImsCallSessionProxy is null"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getServiceImpl()Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    return-object v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->isIncomingCallMultiparty()Z

    move-result v0

    return v0

    .line 229
    :cond_1
    :goto_0
    const-string v0, "isIncomingCallMultiparty() : mCallSessionImpl is null"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCallSessionBusy()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 377
    const-string v0, "notifyCallSessionBusy() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 378
    return-void

    .line 381
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyCallSessionBusy() : RemoteException notifyCallSessionBusy()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyCallSessionCalling()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 365
    const-string v0, "notifyCallSessionCalling() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 366
    return-void

    .line 369
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyCallSessionCalling() : RemoteException notifyCallSessionCalling()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 373
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyCallSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 3
    .param p1, "mtkConfSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 323
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 324
    const-string v0, "notifyCallSessionMergeComplete() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 326
    return-void

    .line 329
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyCallSessionMergeComplete() : RemoteException when MTK session merged started"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 334
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyCallSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "mtkConfSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 309
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 310
    const-string v0, "notifyCallSessionMergeStarted() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 312
    return-void

    .line 315
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyCallSessionMergeStarted() : RemoteException when MTK session merged started"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyCallSessionRinging(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "imsCallProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 350
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 351
    const-string v0, "notifyCallSessionRinging() : mMtkListener is nullcached ringing call notify"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 353
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mCacheCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 354
    return-void

    .line 357
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyCallSessionRinging() : RemoteException notifyCallSessionRinging()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyNotificationRingtone(ILjava/lang/String;)V
    .locals 3
    .param p1, "causeNum"    # I
    .param p2, "causeText"    # Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 401
    const-string v0, "notifyNotificationRingtone() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 402
    return-void

    .line 405
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionNotificationRingtoneReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyNotificationRingtone() : RemoteException callSessionVideoRingtoneEvent()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method notifyRedialEcc(Z)V
    .locals 3
    .param p1, "isNeedUserConfirm"    # Z

    .line 337
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 338
    const-string v0, "notifyRedialEcc() : mMtkListener is null"

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 339
    return-void

    .line 342
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v2, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "notifyRedialEcc() : RemoteException callSessionRedialEcc()"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 347
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyRttECCRedialEvent()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const-string v1, "MtkImsCallSessionProxy"

    if-nez v0, :cond_0

    .line 262
    const-string v0, "notifyRttECCRedialEvent() listener is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 266
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    const/16 v3, 0x89

    invoke-interface {v0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException callSessionRttEventReceived()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyTextCapabilityChanged(IIII)V
    .locals 7
    .param p1, "localCapability"    # I
    .param p2, "remoteCapability"    # I
    .param p3, "localTextStatus"    # I
    .param p4, "realRemoteCapability"    # I

    .line 247
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    const-string v6, "MtkImsCallSessionProxy"

    if-nez v0, :cond_0

    .line 248
    const-string v0, "notifyTextCapabilityChanged() listener is null"

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteException callSessionTextCapabilityChanged()"

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public notifyVideoRingtoneEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "event"    # Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_0

    .line 389
    const-string v0, "notifyVideoRingtoneEvent() : mMtkListener is null"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 390
    return-void

    .line 393
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, v1, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;->callSessionVideoRingtoneEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "notifyVideoRingtoneEvent() : RemoteException callSessionVideoRingtoneEvent()"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public removeLastParticipant()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->removeLastParticipant()V

    .line 297
    return-void
.end method

.method public resume()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 274
    const-string v0, "resume() : mAospImsCallSessionProxy is null"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 275
    return-void

    .line 278
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 279
    return-void
.end method

.method public setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0
    .param p1, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 441
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 442
    return-void
.end method

.method setIImsCallSession(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .line 222
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V

    .line 225
    :cond_0
    return-void
.end method

.method public setImsCallMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 292
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->setImsCallMode(I)V

    .line 293
    return-void
.end method

.method public setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 203
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mMtkListener:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 205
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mCacheCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "setListener() :notify cached ringing call"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mCacheCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->notifyCallSessionRinging(Landroid/telephony/ims/ImsCallProfile;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mCacheCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 210
    :cond_0
    return-void
.end method

.method public setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 0
    .param p1, "serviceImpl"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 433
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 434
    return-void
.end method

.method terminate(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 421
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-nez v0, :cond_0

    .line 422
    const-string v0, "terminate() : mAospImsCallSessionProxy is null"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->logWithCallId(Ljava/lang/String;I)V

    .line 423
    return-void

    .line 425
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy;->terminate(I)V

    .line 426
    return-void
.end method

.method public videoScreenOperation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy;->mAospImsCallSessionProxy:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ims/ImsCallSessionProxy;->videoScreenOperation(ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method
