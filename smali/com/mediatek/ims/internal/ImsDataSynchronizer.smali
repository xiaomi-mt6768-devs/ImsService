.class public Lcom/mediatek/ims/internal/ImsDataSynchronizer;
.super Ljava/lang/Object;
.source "ImsDataSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;,
        Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVATION:I = 0x1

.field public static final ACTION_DEACTIVATION:I = 0x0

.field public static final EVENT_BEARER_STATE_CHANGED:I = 0x8

.field public static final EVENT_CONNECT:I = 0x0

.field public static final EVENT_CONNECT_DONE:I = 0x1

.field public static final EVENT_DISCONNECT:I = 0x2

.field public static final EVENT_DISCONNECT_DONE:I = 0x3

.field public static final EVENT_IMS_DATA_INFO:I = 0x7

.field public static final EVENT_MD_RESTART:I = 0x5

.field public static final EVENT_RADIO_ON_1:I = 0x9

.field public static final EVENT_RADIO_ON_2:I = 0xa

.field public static final EVENT_SET_BEARER_NOTIFICATION_DONE:I = 0x6

.field public static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x4


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

.field private mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

.field private mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

.field private mImsDcHandlerThread:Landroid/os/HandlerThread;

.field private mPhoneId:I

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/internal/ImsDataTracker;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataTracker"    # Lcom/mediatek/ims/internal/ImsDataTracker;
    .param p3, "phoneId"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->TAG:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 55
    iput p3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mPhoneId:I

    .line 56
    invoke-static {p3}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsDcHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDcHandlerThread:Landroid/os/HandlerThread;

    .line 58
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDcHandlerThread:Landroid/os/HandlerThread;

    .line 60
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x4

    const-string v3, "ims"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer;Ljava/lang/String;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 62
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDcHandlerThread:Landroid/os/HandlerThread;

    .line 63
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v2, 0xa

    const-string v3, "emergency"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;-><init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer;Ljava/lang/String;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    .line 65
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 28
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->earlyConfirmReqNetworkToMd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 28
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 28
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mPhoneId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Lcom/mediatek/ims/internal/ImsDataTracker;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 28
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mDataTracker:Lcom/mediatek/ims/internal/ImsDataTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/ImsDataSynchronizer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer;

    .line 28
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private earlyConfirmReqNetworkToMd()Z
    .locals 2

    .line 122
    const-string v0, "persist.vendor.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP07"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public notifyClearCodesEvent(II)V
    .locals 2
    .param p1, "cause"    # I
    .param p2, "capability"    # I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyClearCodesEvent,cause= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " capability= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->logd(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public notifyMdRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->logd(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getCapability()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "emergency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getCapability()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 77
    .local v0, "emcHandle":Landroid/os/Handler;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->putRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V

    .line 78
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    goto :goto_2

    .line 71
    .end local v0    # "emcHandle":Landroid/os/Handler;
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 72
    .local v0, "imsHandle":Landroid/os/Handler;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->putRequest(Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;)V

    .line 73
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->getRequest()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    nop

    .line 84
    .end local v0    # "imsHandle":Landroid/os/Handler;
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x197cf -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyMdRestart()V
    .locals 3

    .line 87
    const-string v0, "notifyMdRestart"

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->logd(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 89
    .local v0, "imsHandle":Landroid/os/Handler;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 91
    .local v2, "emcHandle":Landroid/os/Handler;
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 3

    .line 108
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mPhoneId:I

    invoke-static {v0}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 109
    .local v0, "newSubId":I
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    if-ne v1, v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionsChanged: subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->logd(Ljava/lang/String;)V

    .line 113
    iput v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mSubId:I

    .line 115
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mImsDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->onSubscriptionsChanged()V

    .line 116
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer;->mEmcDataConnection:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->onSubscriptionsChanged()V

    .line 117
    return-void
.end method
