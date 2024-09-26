.class public Lcom/mediatek/wfo/impl/MwiService;
.super Lcom/mediatek/wfo/IMwiService$Stub;
.source "MwiService.java"


# static fields
.field static final MWIS_LOG_TAG:Ljava/lang/String; = "MWIS"

.field private static final VDBG:Z = true

.field private static mInstance:Lcom/mediatek/wfo/impl/MwiService;

.field private static mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mImsLocationHandler:Lcom/mediatek/wfo/impl/ImsLocationHandler;

.field private mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mSimCount:I

.field private mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/mediatek/wfo/impl/MwiService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsLocationHandler(Lcom/mediatek/wfo/impl/MwiService;)Lcom/mediatek/wfo/impl/ImsLocationHandler;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/MwiService;->mImsLocationHandler:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMwiRil(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimCount(Lcom/mediatek/wfo/impl/MwiService;)I
    .locals 0

    iget p0, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcHandler(Lcom/mediatek/wfo/impl/MwiService;)Lcom/mediatek/wfo/impl/WfcHandler;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMwiRil(Lcom/mediatek/wfo/impl/MwiService;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSimCount(Lcom/mediatek/wfo/impl/MwiService;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmWifiPdnHandler()Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .locals 1

    sget-object v0, Lcom/mediatek/wfo/impl/MwiService;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/mediatek/wfo/IMwiService$Stub;-><init>()V

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MwiServiceHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 133
    new-instance v0, Lcom/mediatek/wfo/impl/MwiService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/MwiService$1;-><init>(Lcom/mediatek/wfo/impl/MwiService;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/mediatek/wfo/IMwiService$Stub;-><init>()V

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MwiServiceHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 133
    new-instance v0, Lcom/mediatek/wfo/impl/MwiService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/MwiService$1;-><init>(Lcom/mediatek/wfo/impl/MwiService;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    const-string v0, "Construct MwiService"

    invoke-static {v0}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    .line 94
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 95
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    goto :goto_0

    .line 98
    :cond_0
    const-string v1, "telephonyManager = null"

    invoke-static {v1}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 100
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 107
    iget v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    new-array v1, v1, [Lcom/mediatek/wfo/ril/MwiRIL;

    iput-object v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    if-ge v1, v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    new-instance v3, Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p1, v1, v4}, Lcom/mediatek/wfo/ril/MwiRIL;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    aput-object v3, v2, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 113
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;-><init>(Landroid/content/Context;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V

    sput-object v1, Lcom/mediatek/wfo/impl/MwiService;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 114
    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 115
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 114
    invoke-static {v2, v1, v3, v4, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->getInstance(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)Lcom/mediatek/wfo/impl/WfcHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 116
    new-instance v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/mediatek/wfo/impl/MwiService;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    iget v5, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/wfo/impl/ImsLocationHandler;-><init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mImsLocationHandler:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    .line 119
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "processName":Ljava/lang/String;
    const-string v2, "com.mediatek.ims"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v2, "multiSimConfigChanged":Landroid/content/IntentFilter;
    const-string v3, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    .end local v2    # "multiSimConfigChanged":Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/mediatek/wfo/impl/MwiService;
    .locals 1

    .line 87
    sget-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/wfo/impl/MwiService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    sget-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/mediatek/wfo/impl/MwiService;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/MwiService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    .line 83
    :cond_0
    sget-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    return-object v0
.end method

.method private is93RilMode()Z
    .locals 2

    .line 173
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c6m_1rild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "l"    # Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MwiService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWIS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 199
    const-string v0, "dispose()"

    invoke-static {v0}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 201
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 202
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->dispose()V

    .line 205
    :cond_0
    return-void
.end method

.method public getMwiRIL(I)Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 2
    .param p1, "slotId"    # I

    .line 165
    iget v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    if-lt p1, v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of the bounds, slotId is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWIS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 1

    .line 181
    const-string v0, "getWfcHandlerInterface"

    invoke-static {v0}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->getWfoInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    return-object v0
.end method

.method public getWfcState(I)I
    .locals 3
    .param p1, "simIdx"    # I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWfcState, simIdx is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 188
    const/16 v0, 0xff

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    if-nez v1, :cond_1

    .line 192
    const-string v1, "MWIS"

    const-string v2, "getWfcState, mWfcHandler is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v0

    .line 195
    :cond_1
    invoke-virtual {v1, p1}, Lcom/mediatek/wfo/impl/WfcHandler;->getWfcState(I)I

    move-result v0

    return v0

    .line 189
    :cond_2
    :goto_0
    return v0
.end method
