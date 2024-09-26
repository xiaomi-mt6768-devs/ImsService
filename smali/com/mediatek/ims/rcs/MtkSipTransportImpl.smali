.class public Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
.super Landroid/telephony/ims/stub/SipTransportImplBase;
.source "MtkSipTransportImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY_MILLIS:I = 0x7d0

.field private static final DELAY_IMS_SERVICE_IMPL_QUERY_MS:I = 0x5dc

.field private static final LOG_TAG:Ljava/lang/String; = "[SR-IMS][MtkSipTransportImpl]"

.field private static final MAXMUIM_IMS_SERVICE_IMPL_RETRY:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/ims/rcs/MtkSipDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mImsNetworkAvailable:Z

.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

.field private final mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mShutingdown:Z

.field private mSlotId:I

.field private uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 102
    invoke-direct {p0}, Landroid/telephony/ims/stub/SipTransportImplBase;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mDelegates:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 94
    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$1;-><init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mContext:Landroid/content/Context;

    .line 104
    iput p2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    .line 106
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "IMS-SINGLEREG-WORKER"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 108
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 111
    const/4 v2, 0x0

    .local v2, "retry":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-nez v3, :cond_1

    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 112
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 114
    if-nez v3, :cond_0

    .line 115
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsService is not initialized yet. Query later - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logD(Ljava/lang/String;)V

    .line 116
    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :catch_0
    move-exception v3

    .line 120
    .local v3, "er":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get ImsService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logE(Ljava/lang/String;)V

    goto :goto_2

    .line 121
    .end local v3    # "er":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    nop

    .line 111
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "retry":I
    :cond_1
    if-eqz v3, :cond_2

    .line 124
    iget v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v3, v0, p0}, Lcom/mediatek/ims/ImsService;->setSipTransport(ILcom/mediatek/ims/rcs/MtkSipTransportImpl;)V

    .line 127
    :cond_2
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 128
    if-eqz v0, :cond_3

    .line 129
    iget v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    new-instance v3, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;

    invoke-direct {v3, p0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;-><init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->registerStateCallback(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    .line 130
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->registerNetworkCallback(I)V

    goto :goto_3

    .line 132
    :cond_3
    const-string v0, "MtkSipTransportImpl >> UaServiceManager not ready"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logE(Ljava/lang/String;)V

    .line 134
    :goto_3
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mShutingdown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 70
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mImsNetworkAvailable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
    .param p1, "x1"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mImsNetworkAvailable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mDelegates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 70
    iget v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    return v0
.end method

.method private checkDelegateFeatures(Ljava/util/Set;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation

    .line 246
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 249
    .local v0, "deniedFeatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    .local v2, "ft":Ljava/lang/String;
    new-instance v3, Landroid/telephony/ims/FeatureTagState;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .line 253
    .local v3, "state":Landroid/telephony/ims/FeatureTagState;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v2    # "ft":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_0
    goto/16 :goto_3

    .line 256
    :cond_1
    const/4 v1, 0x1

    .line 257
    .local v1, "serviceAvailable":Z
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    .line 258
    .local v2, "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 259
    :cond_2
    const/4 v1, 0x0

    .line 261
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 262
    .local v4, "ft":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 263
    new-instance v5, Landroid/telephony/ims/FeatureTagState;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .line 265
    .local v5, "state":Landroid/telephony/ims/FeatureTagState;
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 267
    .end local v5    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_4
    new-instance v5, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v5, v4}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    .line 268
    .local v5, "capability":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {v5}, Lcom/mediatek/ims/rcsua/Capability;->toNumeric()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x4

    if-nez v6, :cond_5

    .line 269
    new-instance v6, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v6, v4, v7}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .line 270
    .local v6, "state":Landroid/telephony/ims/FeatureTagState;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    goto :goto_1

    .line 273
    .end local v6    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_5
    iget-object v6, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v6, v4}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 274
    new-instance v6, Landroid/telephony/ims/FeatureTagState;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .line 275
    .restart local v6    # "state":Landroid/telephony/ims/FeatureTagState;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    goto :goto_1

    .line 279
    .end local v6    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_6
    new-instance v6, Lcom/mediatek/ims/rcsua/Capability;

    const-wide/16 v8, 0x4000

    invoke-direct {v6, v8, v9}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    .line 280
    .local v6, "botVersion2":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {v6}, Lcom/mediatek/ims/rcsua/Capability;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 281
    invoke-virtual {v5, v6}, Lcom/mediatek/ims/rcsua/Capability;->remove(Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;

    .line 282
    new-instance v8, Landroid/telephony/ims/FeatureTagState;

    invoke-virtual {v6}, Lcom/mediatek/ims/rcsua/Capability;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    move-object v7, v8

    .line 283
    .local v7, "state":Landroid/telephony/ims/FeatureTagState;
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v4    # "ft":Ljava/lang/String;
    .end local v5    # "capability":Lcom/mediatek/ims/rcsua/Capability;
    .end local v6    # "botVersion2":Lcom/mediatek/ims/rcsua/Capability;
    .end local v7    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_7
    :goto_2
    goto :goto_1

    .line 289
    .end local v1    # "serviceAvailable":Z
    .end local v2    # "uaSrvMgr":Lcom/mediatek/ims/rcs/UaServiceManager;
    :cond_8
    :goto_3
    return-object v0
.end method

.method static synthetic lambda$triggerSipDelegateDeregistration$4(Lcom/mediatek/ims/rcsua/Capability;)Z
    .locals 1
    .param p0, "it"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 225
    const-string v0, "+g.gsma.callcomposer"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$triggerSipDelegateDeregistration$5(Lcom/mediatek/ims/rcsua/Capability;Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p0, "caps"    # Lcom/mediatek/ims/rcsua/Capability;
    .param p1, "it"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 226
    const-string v0, "+g.gsma.callcomposer"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->add(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;

    return-void
.end method

.method static synthetic lambda$updateSipDelegateRegistration$0(Lcom/mediatek/ims/rcsua/Capability;)Z
    .locals 1
    .param p0, "it"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 201
    const-string v0, "+g.gsma.callcomposer"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$updateSipDelegateRegistration$1(Lcom/mediatek/ims/rcsua/Capability;Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p0, "caps"    # Lcom/mediatek/ims/rcsua/Capability;
    .param p1, "it"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 202
    const-string v0, "+g.gsma.callcomposer"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->add(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipTransportImpl]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipTransportImpl]"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipTransportImpl]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method private registerNetworkCallback(I)V
    .locals 4
    .param p1, "subId"    # I

    .line 372
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 373
    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 374
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 375
    aget p1, v1, v0

    .line 377
    .end local v1    # "subIds":[I
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 379
    .local v1, "cm":Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$4;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$4;-><init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V

    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 399
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 401
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 402
    invoke-virtual {v2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 403
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 404
    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    .line 399
    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 405
    const-string v0, "Network callback registered"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logD(Ljava/lang/String;)V

    .line 407
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    return-void
.end method


# virtual methods
.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 8
    .param p1, "subscriptionId"    # I
    .param p2, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p3, "dc"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p4, "mc"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 138
    const-string v0, "request should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v0, "delegate callback should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    const-string v0, "message callback should not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSipDelegate >> subId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], features["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], dc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logI(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->checkDelegateFeatures(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 146
    .local v0, "deniedFeatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSipDelegate >> deniedFeatures["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logD(Ljava/lang/String;)V

    .line 148
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 149
    new-instance v1, Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/util/Set;)V

    .line 150
    .local v1, "requested":Lcom/mediatek/ims/rcsua/Capability;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/FeatureTagState;

    .line 151
    .local v3, "state":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v3}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/ims/rcsua/Capability;->remove(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;

    .line 152
    .end local v3    # "state":Landroid/telephony/ims/FeatureTagState;
    goto :goto_0

    .line 153
    :cond_0
    new-instance v2, Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/Capability;->toFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/telephony/ims/DelegateRequest;-><init>(Ljava/util/Set;)V

    move-object p2, v2

    .line 156
    .end local v1    # "requested":Lcom/mediatek/ims/rcsua/Capability;
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mContext:Landroid/content/Context;

    move-object v2, v1

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/ims/rcs/MtkSipDelegate;-><init>(Landroid/content/Context;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V

    .line 158
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/Capability;->add(Ljava/util/Set;)Lcom/mediatek/ims/rcsua/Capability;

    .line 161
    invoke-interface {p3, v1, v0}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    .line 163
    invoke-static {}, Lcom/mediatek/ims/rcs/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 164
    if-eqz v2, :cond_2

    .line 165
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->registerNetworkCallback(I)V

    .line 166
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mImsNetworkAvailable:Z

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationRegistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 173
    :cond_2
    return-void
.end method

.method public destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .locals 4
    .param p1, "delegate"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p2, "reason"    # I

    .line 177
    const-string v0, "delegate should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroySipDelegate >> delegate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], reason["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logI(Ljava/lang/String;)V

    .line 180
    instance-of v0, p1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    if-nez v0, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 184
    .local v0, "sipDelegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->getStateCallback()Landroid/telephony/ims/DelegateStateCallback;

    move-result-object v1

    .line 186
    .local v1, "stateCallback":Landroid/telephony/ims/DelegateStateCallback;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/Capability;->remove(Ljava/util/Set;)Lcom/mediatek/ims/rcsua/Capability;

    .line 187
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    if-eqz v1, :cond_1

    .line 190
    invoke-interface {v1, p2}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    .line 192
    :cond_1
    return-void
.end method

.method synthetic lambda$triggerFullNetworkRegistration$7$com-mediatek-ims-rcs-MtkSipTransportImpl()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->triggerRestoration(I)V

    goto :goto_0

    .line 240
    :cond_0
    const-string v0, "triggerFullNetworkRegistration >> UA not connected"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logE(Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void
.end method

.method synthetic lambda$triggerSipDelegateDeregistration$6$com-mediatek-ims-rcs-MtkSipTransportImpl()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/Capability;->toNumeric()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    .line 223
    .local v0, "caps":Lcom/mediatek/ims/rcsua/Capability;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->callComposerCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCapabilities(I)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 225
    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda1;-><init>(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 226
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->updateCapabilities(ILcom/mediatek/ims/rcsua/Capability;)V

    .line 229
    .end local v0    # "caps":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_0

    .line 230
    :cond_1
    const-string v0, "updateSipDelegateRegistration >> UA not connected"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logE(Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void
.end method

.method synthetic lambda$updateSipDelegateRegistration$2$com-mediatek-ims-rcs-MtkSipTransportImpl(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "caps"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 208
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->updateCapabilities(ILcom/mediatek/ims/rcsua/Capability;)V

    return-void
.end method

.method synthetic lambda$updateSipDelegateRegistration$3$com-mediatek-ims-rcs-MtkSipTransportImpl()V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->serviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/Capability;->toNumeric()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    .line 199
    .local v0, "caps":Lcom/mediatek/ims/rcsua/Capability;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->callComposerCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCapabilities(I)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda3;-><init>()V

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda4;-><init>(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 202
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/Capability;->toNumeric()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mShutingdown:Z

    if-nez v1, :cond_1

    .line 207
    const-string v1, "Delay handling updateSipDelegateRegistration to avoid Ping-Pong"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logI(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda5;-><init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Lcom/mediatek/ims/rcsua/Capability;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mSlotId:I

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->updateCapabilities(ILcom/mediatek/ims/rcsua/Capability;)V

    .line 212
    .end local v0    # "caps":Lcom/mediatek/ims/rcsua/Capability;
    :goto_0
    goto :goto_1

    .line 213
    :cond_2
    const-string v0, "updateSipDelegateRegistration >> UA not connected"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->logE(Ljava/lang/String;)V

    .line 215
    :goto_1
    return-void
.end method

.method public notifyProvisioningChanged(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "provisioned"    # Z

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "handled":Z
    if-eqz p2, :cond_2

    .line 295
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 296
    .local v2, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    invoke-virtual {v2, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagStateProvisioned(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 299
    .end local v2    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    :cond_0
    goto :goto_0

    .line 300
    :cond_1
    if-eqz v0, :cond_4

    .line 301
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$2;-><init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mDelegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 313
    .restart local v2    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    invoke-virtual {v2, p1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyFeatureTagStateUnprovisioned(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->uaSrvMgr:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-virtual {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;

    invoke-direct {v4, p0, p1, v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$3;-><init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Ljava/lang/String;Lcom/mediatek/ims/rcs/MtkSipDelegate;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    .end local v2    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    :cond_3
    goto :goto_1

    .line 328
    :cond_4
    :goto_2
    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 2
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda2;-><init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method public triggerSipDelegateDeregistration()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda6;-><init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public updateSipDelegateRegistration()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda7;-><init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method
