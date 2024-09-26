.class public Lcom/mediatek/ims/MtkImsRegistrationImpl;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.source "MtkImsRegistrationImpl.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkImsRegistrationImpl$ImsRegistrationState;
    }
.end annotation


# static fields
.field private static final DELAY_IMS_SERVICE_IMPL_QUERY_MS:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "MtkImsRegImpl"

.field private static final MAXMUIM_IMS_SERVICE_IMPL_RETRY:I = 0x3

.field public static final REGISTRATION_STATE_DEREGISTERED:I = 0x3

.field public static final REGISTRATION_STATE_REGISTERED:I = 0x2

.field public static final REGISTRATION_STATE_REGISTERING:I = 0x1

.field public static final REGISTRATION_STATE_UNKNOWN:I


# instance fields
.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field private mSlotId:I


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 91
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 92
    iput p1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "retry":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-nez v2, :cond_1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 96
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 98
    if-nez v2, :cond_0

    .line 99
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService is not initialized yet. Query later - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->log(Ljava/lang/String;)V

    .line 100
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "er":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get ImsService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->loge(Ljava/lang/String;)V

    .line 105
    .end local v2    # "er":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 107
    :cond_1
    if-eqz v2, :cond_2

    .line 108
    iget v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v2, v0, p0}, Lcom/mediatek/ims/ImsService;->setImsRegistration(ILcom/mediatek/ims/MtkImsRegistrationImpl;)V

    .line 110
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] MtkImsRegistrationImpl created"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->log(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 185
    const-string v0, "MtkImsRegImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 193
    const-string v0, "MtkImsRegImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 189
    const-string v0, "MtkImsRegImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 115
    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsService;->setImsRegistration(ILcom/mediatek/ims/MtkImsRegistrationImpl;)V

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] MtkImsRegistrationImpl closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->logi(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 2
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerSipDelegateDeregistration >> slotId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],sipCode["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],sipReason["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->logi(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->getSipTransport(I)Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    move-result-object v0

    .line 179
    .local v0, "transport":Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->triggerFullNetworkRegistration(ILjava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method public triggerSipDelegateDeregistration()V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerSipDelegateDeregistration >> slotId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->logi(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->getSipTransport(I)Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    move-result-object v0

    .line 155
    .local v0, "transport":Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->triggerSipDelegateDeregistration()V

    .line 158
    :cond_0
    return-void
.end method

.method public updateSipDelegateRegistration()V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSipDelegateRegistration >> slotId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->logi(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/MtkImsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ImsService;->getSipTransport(I)Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    move-result-object v0

    .line 133
    .local v0, "transport":Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->updateSipDelegateRegistration()V

    .line 136
    :cond_0
    return-void
.end method
