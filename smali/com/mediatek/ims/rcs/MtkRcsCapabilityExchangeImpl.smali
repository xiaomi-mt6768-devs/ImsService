.class public Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;
.super Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.source "MtkRcsCapabilityExchangeImpl.java"


# static fields
.field private static final PUBLISH_USER_BASE:I = 0x1

.field private static final SUBSCRIBE_USER_BASE:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "[SR-IMS][MtkRcsCapExchangeImpl]"

.field private static sId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mPresenceService:Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

.field private mPublishCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishResponseCallback:Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;

.field private mPublishUserData:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCount:I

.field private mSlotId:I

.field private mSubscribeCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mSubscribeResponseCallback:Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;

.field private mSubscribeUserData:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mtkCapabilityEventListener:Lcom/mediatek/ims/rcs/aidl/IMtkCapabilityExchangeEventListener;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 96
    invoke-direct {p0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPresenceService:Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPublishUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v2, 0x400000

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSubscribeUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPublishCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSubscribeCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mHandler:Landroid/os/Handler;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    .line 93
    iput-boolean v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mDestroyed:Z

    .line 174
    new-instance v2, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;-><init>(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V

    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mtkCapabilityEventListener:Lcom/mediatek/ims/rcs/aidl/IMtkCapabilityExchangeEventListener;

    .line 217
    new-instance v2, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$2;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$2;-><init>(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V

    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPublishResponseCallback:Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;

    .line 258
    new-instance v2, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;-><init>(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V

    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSubscribeResponseCallback:Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;

    .line 379
    new-instance v2, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;-><init>(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V

    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->serviceConnection:Landroid/content/ServiceConnection;

    .line 422
    new-instance v2, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$6;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$6;-><init>(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V

    iput-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput p1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    .line 98
    iput-object p2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    .line 99
    iput-object p3, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 100
    sget-object v3, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iput v3, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mId:I

    .line 101
    const-string v3, "persist.vendor.mtk_uce_support"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 103
    .local v0, "manager":Landroid/os/UserManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const-string v1, "user locked"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->connectToRcsCoreService()V

    .line 110
    .end local v0    # "manager":Landroid/os/UserManager;
    :cond_1
    :goto_0
    const-string v0, "MtkRcsCapabilityExchangeImpl created"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPresenceService:Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;)Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;
    .param p1, "x1"    # Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    .line 74
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPresenceService:Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Lcom/mediatek/ims/rcs/aidl/IMtkCapabilityExchangeEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mtkCapabilityEventListener:Lcom/mediatek/ims/rcs/aidl/IMtkCapabilityExchangeEventListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    invoke-direct {p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->connectToRcsCoreService()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPublishCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSubscribeCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    return p1
.end method

.method static synthetic access$808(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private connectToRcsCoreService()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$4;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$4;-><init>(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method

.method private getPresenceService()Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPresenceService:Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    return-object v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkRcsCapExchangeImpl]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkRcsCapExchangeImpl]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .line 157
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mDestroyed:Z

    .line 159
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPresenceService:Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    if-eqz v0, :cond_0

    .line 161
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;->setRcsCapabilityExchangeAvailable(ZLcom/mediatek/ims/rcs/aidl/IMtkCapabilityExchangeEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Exception found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logE(Ljava/lang/String;)V

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    goto :goto_1

    .line 169
    :catch_1
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logE(Ljava/lang/String;)V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 3
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    .line 115
    const-string v0, "pidfXml should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string v0, "PublishResponseCallback should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishCapabilities >> cb["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    .line 118
    if-nez p2, :cond_0

    .line 119
    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->getPresenceService()Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPublishCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPublishUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->getPresenceService()Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPublishUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mPublishResponseCallback:Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;

    .line 125
    invoke-interface {v0, p1, v1, v2}, Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;->publishMyCap(Ljava/lang/String;ILcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_1
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishCapabilities Fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logE(Ljava/lang/String;)V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 4
    .param p2, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .line 136
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    const-string v0, "Subscribe uris should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    const-string v0, "SubscribeResponseCallback should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeForCapabilities >> cb["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    .line 139
    if-nez p2, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "contactList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->getPresenceService()Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 145
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSubscribeCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSubscribeUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-direct {p0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->getPresenceService()Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSubscribeUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->mSubscribeResponseCallback:Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;

    .line 147
    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;->getContactListCap(Ljava/util/List;ILcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribeForCapabilities fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->logE(Ljava/lang/String;)V

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
