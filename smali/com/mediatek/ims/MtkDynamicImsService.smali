.class public Lcom/mediatek/ims/MtkDynamicImsService;
.super Landroid/telephony/ims/ImsService;
.source "MtkDynamicImsService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "MtkDynamicImsService"


# instance fields
.field protected final mImsConfig:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/stub/ImsConfigImplBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImsReg:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/stub/ImsRegistrationImplBase;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMmTel:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/MmTelFeature;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRcs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/RcsFeature;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSipTrans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/stub/SipTransportImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 138
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 139
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    sput-boolean v1, Lcom/mediatek/ims/MtkDynamicImsService;->DEBUG:Z

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsConfig:Landroid/util/SparseArray;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mSipTrans:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/MtkDynamicImsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/MtkDynamicImsService;
    .param p1, "x1"    # I

    .line 134
    invoke-direct {p0, p1}, Lcom/mediatek/ims/MtkDynamicImsService;->updateRcsFeatureTag(I)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 474
    const-string v0, "MtkDynamicImsService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 482
    const-string v0, "MtkDynamicImsService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 478
    const-string v0, "MtkDynamicImsService"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method private updateRcsFeatureTag(I)V
    .locals 6
    .param p1, "slotId"    # I

    .line 458
    const-string v0, "Failed to updateImsRegstration!"

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    .line 459
    .local v2, "srv":Lcom/mediatek/ims/ImsService;
    if-eqz v2, :cond_0

    .line 461
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/mediatek/ims/ImsService;->getRadioTech(I)I

    move-result v3

    .line 462
    .local v3, "radioTech":I
    nop

    .line 464
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ImsService;->convertImsRegistrationTech(I)I

    move-result v4

    .line 462
    const/4 v5, 0x2

    invoke-virtual {v2, p1, v5, v4, v1}, Lcom/mediatek/ims/ImsService;->updateImsRegstration(IIILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "radioTech":I
    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 465
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 466
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->loge(Ljava/lang/String;)V

    .line 469
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 471
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 3
    .param p1, "slotId"    # I

    .line 283
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MmTelFeature;

    .line 284
    .local v0, "feature":Landroid/telephony/ims/feature/MmTelFeature;
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;-><init>(I)V

    move-object v0, v1

    .line 286
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMmTelFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDynamicImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v0
.end method

.method public createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .locals 3
    .param p1, "slotId"    # I

    .line 302
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/RcsFeature;

    .line 303
    .local v0, "feature":Landroid/telephony/ims/feature/RcsFeature;
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    new-instance v1, Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-direct {v1, p1, p0}, Lcom/mediatek/ims/feature/MtkRcsFeature;-><init>(ILandroid/content/Context;)V

    move-object v0, v1

    .line 305
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] createRcsFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDynamicImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-object v0
.end method

.method public disableIms(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 263
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 264
    .local v0, "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 265
    .local v1, "rcsFeature":Lcom/mediatek/ims/feature/MtkRcsFeature;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disable >> RCSFEATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MMTELFEATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkDynamicImsService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->disableIms(I)V

    .line 269
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->disableIms(I)V

    .line 272
    :cond_1
    return-void
.end method

.method public enableIms(I)V
    .locals 4
    .param p1, "slotId"    # I

    .line 246
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 247
    .local v0, "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 248
    .local v1, "rcsFeature":Lcom/mediatek/ims/feature/MtkRcsFeature;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCSFEATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , MMTELFEATURE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkDynamicImsService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "MMTELFEATURE >> enableIms"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->enableIms(I)V

    .line 253
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->enableIms(I)V

    .line 256
    :cond_1
    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 6
    .param p1, "slotId"    # I

    .line 319
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsConfig:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsConfigImplBase;

    .line 320
    .local v0, "config":Landroid/telephony/ims/stub/ImsConfigImplBase;
    const-string v1, "MtkDynamicImsService"

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 322
    .local v2, "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    iget-object v3, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mRcs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 324
    .local v3, "rcsFeature":Lcom/mediatek/ims/feature/MtkRcsFeature;
    if-eqz v2, :cond_0

    .line 325
    new-instance v4, Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;-><init>(Lcom/android/ims/internal/IImsConfig;I)V

    move-object v0, v4

    goto :goto_0

    .line 326
    :cond_0
    if-eqz v3, :cond_1

    .line 327
    new-instance v4, Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v3}, Lcom/mediatek/ims/feature/MtkRcsFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;-><init>(Lcom/android/ims/internal/IImsConfig;I)V

    move-object v0, v4

    .line 328
    sget-boolean v4, Lcom/mediatek/ims/MtkDynamicImsService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 329
    const-string v4, "RCSFEATURE >> getConfig"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsConfig:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    .end local v2    # "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .end local v3    # "rcsFeature":Lcom/mediatek/ims/feature/MtkRcsFeature;
    :cond_2
    sget-boolean v2, Lcom/mediatek/ims/MtkDynamicImsService;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] getConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_3
    return-object v0
.end method

.method public getImsServiceCapabilities()J
    .locals 2

    .line 381
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-wide/16 v0, 0x2

    return-wide v0

    .line 385
    :cond_0
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->getImsServiceCapabilities()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 3
    .param p1, "slotId"    # I

    .line 347
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    .line 348
    .local v0, "reg":Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    new-instance v1, Lcom/mediatek/ims/MtkImsRegistrationImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/MtkImsRegistrationImpl;-><init>(I)V

    move-object v0, v1

    .line 350
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] getRegistration, reg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDynamicImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-object v0
.end method

.method public getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;
    .locals 2
    .param p1, "slotId"    # I

    .line 363
    sget-boolean v0, Lcom/mediatek/ims/MtkDynamicImsService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] getSipTransport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->log(Ljava/lang/String;)V

    .line 366
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    const/4 v0, 0x0

    return-object v0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mSipTrans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/SipTransportImplBase;

    .line 371
    .local v0, "sipTrans":Landroid/telephony/ims/stub/SipTransportImplBase;
    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 373
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mSipTrans:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    :cond_2
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 152
    const-string v0, "android.telephony.ims.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "MtkDynamicImsService Bound."

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->log(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 164
    const-string v0, "onUnbind..."

    invoke-static {v0}, Lcom/mediatek/ims/MtkDynamicImsService;->logi(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 167
    .local v1, "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->close()V

    .line 169
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mMmTel:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/MtkImsRegistrationImpl;

    .line 172
    .local v2, "reg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {v2}, Lcom/mediatek/ims/MtkImsRegistrationImpl;->close()V

    .line 174
    iget-object v3, p0, Lcom/mediatek/ims/MtkDynamicImsService;->mImsReg:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 165
    .end local v1    # "feature":Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .end local v2    # "reg":Lcom/mediatek/ims/MtkImsRegistrationImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Landroid/telephony/ims/ImsService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 3

    .line 191
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;-><init>()V

    .line 192
    .local v0, "builder":Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 195
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported Ims Features: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkDynamicImsService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public readyForFeatureCreation()V
    .locals 7

    .line 213
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v0

    .line 214
    .local v0, "singleRegCapable":Z
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->callComposerCapable()Z

    move-result v1

    .line 215
    .local v1, "callComposerCapable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readyForFeatureCreation >> singleRegCapable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkDynamicImsService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, 0x0

    .line 217
    .local v2, "callback":Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;
    if-eqz v0, :cond_0

    .line 218
    new-instance v3, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/mediatek/ims/MtkDynamicImsService$ImsEventCallbackExt;-><init>(Lcom/mediatek/ims/MtkDynamicImsService;Landroid/os/Handler;)V

    move-object v2, v3

    .line 220
    :cond_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_1

    goto :goto_1

    .line 230
    :cond_1
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v3

    .line 231
    .local v3, "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getDefaultRcsPhoneId()I

    move-result v4

    .line 232
    .local v4, "phoneId":I
    if-eqz v3, :cond_6

    .line 233
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 234
    invoke-virtual {v3, v5}, Lcom/mediatek/ims/rcs/UaServiceManager;->stopService(I)V

    .line 233
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    .end local v5    # "i":I
    :cond_2
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->deleteInstance()V

    goto :goto_3

    .line 221
    .end local v3    # "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    .end local v4    # "phoneId":I
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/mediatek/ims/rcs/UaServiceManager;->createInstance(Landroid/content/Context;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v3

    .line 222
    .restart local v3    # "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 223
    move v5, v4

    .line 224
    .local v5, "phoneId":I
    invoke-virtual {v3, v5}, Lcom/mediatek/ims/rcs/UaServiceManager;->startService(I)V

    .line 225
    if-eqz v2, :cond_4

    .line 226
    invoke-virtual {v3, v5, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->registerStateCallback(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    .line 222
    .end local v5    # "phoneId":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 229
    .end local v3    # "uaMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    .end local v4    # "i":I
    :cond_5
    nop

    .line 239
    :cond_6
    :goto_3
    return-void
.end method
