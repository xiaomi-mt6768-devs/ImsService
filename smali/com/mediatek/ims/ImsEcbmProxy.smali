.class public Lcom/mediatek/ims/ImsEcbmProxy;
.super Landroid/telephony/ims/stub/ImsEcbmImplBase;
.source "ImsEcbmProxy.java"


# static fields
.field protected static final EVENT_ON_ENTER_ECBM:I = 0x1

.field protected static final EVENT_ON_EXIT_ECBM:I = 0x2

.field protected static final EVENT_ON_NO_ECBM:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ImsEcbmProxy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandleExitEcbmInd:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "phoneId"    # I

    .line 99
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    .line 71
    new-instance v0, Lcom/mediatek/ims/ImsEcbmProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/ImsEcbmProxy$1;-><init>(Lcom/mediatek/ims/ImsEcbmProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandler:Landroid/os/Handler;

    .line 100
    const-string v1, "new EcbmProxy"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 103
    iput p3, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    .line 104
    invoke-static {p3}, Lcom/mediatek/ims/ImsServiceCallTracker;->getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 106
    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    if-nez v1, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnEnterECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnExitECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->registerForOnNoECBM(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsEcbmProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;

    .line 57
    invoke-direct {p0}, Lcom/mediatek/ims/ImsEcbmProxy;->shouldEnterImsEcbm()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsEcbmProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;

    .line 57
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/ims/ImsEcbmProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsEcbmProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsEcbmProxy;

    .line 57
    invoke-direct {p0}, Lcom/mediatek/ims/ImsEcbmProxy;->tryTurnOffVolteAfterE911()V

    return-void
.end method

.method private logWithPhoneId(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEcbmProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method private shouldEnterImsEcbm()Z
    .locals 6

    .line 152
    iget v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 153
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 154
    .local v0, "isSimAbsent":Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    .line 155
    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 156
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVolteAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isWifiCallingAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    const-string v4, "persist.vendor.operator.optr"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "OP12"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    return v2

    .line 164
    :cond_2
    return v1

    .line 157
    :cond_3
    :goto_1
    return v2
.end method

.method private tryTurnOffVolteAfterE911()V
    .locals 8

    .line 131
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 132
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v1

    .line 133
    .local v1, "volteEnabledByPlatform":Z
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v2

    .line 134
    .local v2, "volteEnabledByUser":Z
    const-string v3, "persist.vendor.mtk.volte.enable"

    iget v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v3

    .line 137
    .local v3, "volteOn":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getEnableVolteForImsEcc()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v7, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v4, v6, v7, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->triggerSendCfgForVolte(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;II)V

    .line 140
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVolteForImsEcc(Z)V

    .line 141
    const/4 v3, 0x0

    .line 144
    :cond_1
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->getEnableVowifiForImsEcc()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v4

    if-nez v4, :cond_2

    .line 145
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    iget v7, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mPhoneId:I

    invoke-static {v4, v6, v7, v3, v5}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->triggerSendCfgForVowifi(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;III)V

    .line 146
    iget-object v4, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsServiceCT:Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->setEnableVowifiForImsEcc(Z)V

    .line 148
    :cond_2
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "request exit ECBM"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mHandleExitEcbmInd:Z

    .line 123
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mImsRILAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->requestExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 125
    :cond_0
    const-string v0, "request exit ECBM failed"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsEcbmProxy;->logWithPhoneId(Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void
.end method

.method public getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 169
    .local v0, "facotry":Lcom/mediatek/ims/plugin/OemPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/ImsEcbmProxy;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v1

    return-object v1
.end method
