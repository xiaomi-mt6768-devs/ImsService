.class public Lcom/mediatek/ims/internal/ImsDataTracker;
.super Ljava/lang/Object;
.source "ImsDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;
    }
.end annotation


# static fields
.field private static final EVENT_RADIO_AVAILABLE:I = 0xa


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mIsBearerNotify:I

.field private mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

.field private mModemEmergencyPdnState:[I

.field private mModemImsPdnState:[I

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mPdnStateLock:Ljava/lang/Object;

.field private mPhoneNum:I

.field private mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

.field private mdHander:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    .line 60
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    .line 119
    new-instance v1, Lcom/mediatek/ims/internal/ImsDataTracker$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$1;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    .line 254
    new-instance v1, Lcom/mediatek/ims/internal/ImsDataTracker$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/ImsDataTracker$2;-><init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 63
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    .line 64
    new-array v2, v1, [Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 65
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    .line 66
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    .line 67
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 69
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataTracker;->getImsPdnNotifyRule()V

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    new-instance v3, Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-direct {v3, p1, p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;-><init>(Landroid/content/Context;Lcom/mediatek/ims/internal/ImsDataTracker;I)V

    aput-object v3, v2, v1

    .line 73
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-interface {v2, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForBearerState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForBearerInit(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-interface {v2, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsDataInfoNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    add-int/lit8 v4, v1, 0x9

    invoke-interface {v2, v3, v4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 81
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 82
    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsDataTracker;->setImsBearerNotification(II)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_0
    sget-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->AUTOSETUPIMS:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    .line 85
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->onImsBearerChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->onMdRestart(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->onImsDataInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/ImsDataTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 30
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/ImsDataTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/internal/ImsDataTracker;->setImsBearerNotification(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/ims/internal/ImsDataTracker;)Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 30
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mMdCapability:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/internal/ImsDataTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 30
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/internal/ImsDataTracker;)[Lcom/mediatek/ims/internal/ImsDataSynchronizer;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 30
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    return-object v0
.end method

.method private clearModemPdnState()V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 322
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getImsPdnNotifyRule()V
    .locals 2

    .line 154
    const-string v0, "persist.vendor.radio.ims.pdn.notify"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsBearerNotify rule set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method private onImsBearerChanged(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 159
    const-string v0, "onImsBearerChanged"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 160
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 161
    .local v0, "bearerInfo":[Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 162
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 163
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    .local v1, "phoneId":I
    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 166
    .local v8, "aid":I
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 167
    .local v9, "action":I
    const/4 v3, 0x3

    aget-object v10, v0, v3

    .line 169
    .local v10, "capability":Ljava/lang/String;
    const/4 v4, -0x1

    .line 170
    .local v4, "event":I
    if-ne v9, v2, :cond_0

    .line 171
    const/4 v4, 0x0

    move v11, v4

    goto :goto_0

    .line 172
    :cond_0
    if-nez v9, :cond_1

    .line 173
    const/4 v4, 0x2

    move v11, v4

    goto :goto_0

    .line 175
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    move v11, v4

    .line 178
    .end local v4    # "event":I
    .local v11, "event":I
    :goto_0
    if-ltz v11, :cond_3

    .line 179
    invoke-direct {p0, v1, v10, v11}, Lcom/mediatek/ims/internal/ImsDataTracker;->updateModemPdnState(ILjava/lang/String;I)V

    .line 180
    iget v4, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    if-eq v4, v2, :cond_2

    if-ne v4, v3, :cond_3

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    aget-object v12, v2, v1

    new-instance v13, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    move-object v2, v13

    move v3, v8

    move v4, v9

    move v5, v1

    move v6, v11

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->notifyMdRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V

    .line 185
    .end local v1    # "phoneId":I
    .end local v8    # "aid":I
    .end local v9    # "action":I
    .end local v10    # "capability":Ljava/lang/String;
    .end local v11    # "event":I
    :cond_3
    goto :goto_1

    .line 186
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter format error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_5
    const-string v1, "parameter is NULL"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 191
    :goto_1
    return-void
.end method

.method private onImsDataInfo(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 208
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 209
    .local v0, "bearerInfo":[Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 210
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsDataInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 213
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 214
    .local v1, "phoneId":I
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 215
    .local v2, "capability":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    .line 218
    .local v3, "event":Ljava/lang/String;
    const-string v4, "emergency"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    const/16 v4, 0xa

    .local v4, "cap":I
    goto :goto_0

    .line 221
    .end local v4    # "cap":I
    :cond_0
    const/4 v4, 0x4

    .line 225
    .restart local v4    # "cap":I
    :goto_0
    const-string v5, "ClearCodes"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 227
    .local v5, "cause":I
    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5, v4}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->notifyClearCodesEvent(II)V

    .line 229
    .end local v1    # "phoneId":I
    .end local v2    # "capability":Ljava/lang/String;
    .end local v3    # "event":Ljava/lang/String;
    .end local v4    # "cap":I
    .end local v5    # "cause":I
    :cond_1
    goto :goto_1

    .line 230
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter format error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_3
    const-string v1, "parameter is NULL"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 235
    :goto_1
    return-void
.end method

.method private onMdRestart(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 194
    const-string v0, "onMdRestart"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 195
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 196
    .local v0, "phoneArray":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 201
    .local v1, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMdRestart, reset phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connection state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->notifyMdRestart()V

    .line 203
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataTracker;->clearModemPdnState()V

    .line 204
    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsDataTracker;->setImsBearerNotification(II)V

    .line 205
    return-void

    .line 197
    .end local v1    # "phoneId":I
    :cond_1
    :goto_0
    const-string v1, "can\'t get phone instance"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private setImsBearerNotification(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "enable"    # I

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsBearerNotification enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsBearerNotification(ILandroid/os/Message;)V

    .line 252
    return-void
.end method

.method private updateModemPdnState(ILjava/lang/String;I)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "event"    # I

    .line 297
    const-string v0, "Not handle the capability: "

    const-string v1, "emergency"

    const-string v2, "ims"

    if-nez p3, :cond_2

    .line 298
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto/16 :goto_0

    .line 300
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    .line 303
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_2
    const/4 v3, 0x2

    if-ne p3, v3, :cond_5

    .line 306
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    .line 308
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aput v1, v0, p1

    goto :goto_0

    .line 311
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not handle the event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void
.end method


# virtual methods
.method public getImsNetworkState(I)[I
    .locals 3
    .param p1, "capability"    # I

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capability/mPhoneNum/imsPdnState/emergencyPdnState are : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    .line 278
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    .line 279
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    monitor-exit v0

    return-object v1

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 284
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPdnStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    monitor-exit v0

    return-object v1

    .line 287
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 289
    :cond_1
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    new-array v0, v0, [I

    .line 290
    .local v0, "pdnState":[I
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsNetworkState failed becase of invalid capability : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->loge(Ljava/lang/String;)V

    .line 292
    return-object v0
.end method

.method public notifyMultiSimConfigChanged(I[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 6
    .param p1, "activeModemCount"    # I
    .param p2, "adapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 90
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    array-length v0, v0

    .line 91
    .local v0, "prevActiveModemCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMultiSimConfigChanged, phone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->logi(Ljava/lang/String;)V

    .line 92
    iput p1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mPhoneNum:I

    .line 93
    if-eq v0, p1, :cond_2

    if-le v0, p1, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 99
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 101
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    .line 102
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    .line 104
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 105
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mSynchronizers:[Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    new-instance v3, Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;-><init>(Landroid/content/Context;Lcom/mediatek/ims/internal/ImsDataTracker;I)V

    aput-object v3, v2, v1

    .line 106
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForBearerState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForBearerInit(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mdHander:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForImsDataInfoNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemImsPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 113
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mModemEmergencyPdnState:[I

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aput v3, v2, v1

    .line 114
    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mIsBearerNotify:I

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ims/internal/ImsDataTracker;->setImsBearerNotification(II)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 94
    :cond_2
    :goto_1
    return-void
.end method

.method public responseBearerConfirm(IIIII)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .param p5, "phoneId"    # I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to MD, aid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->logd(Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v1, v1, p5

    invoke-interface {v1, p2, p3, p4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->responseBearerStateConfirm(IIILandroid/os/Message;)V

    goto :goto_0

    .line 241
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataTracker;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v1, v1, p5

    invoke-interface {v1, p2, p3, p4, v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->responseBearerStateConfirm(IIILandroid/os/Message;)V

    .line 242
    nop

    .line 247
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
