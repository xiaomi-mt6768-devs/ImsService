.class public Lcom/mediatek/ims/ImsConfigManager;
.super Ljava/lang/Object;
.source "ImsConfigManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConfigManager"

.field private static final PROPERTY_CAPABILITY_SWITCH:Ljava/lang/String; = "persist.vendor.radio.simswitch"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mImsConfigAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/internal/ImsConfigAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/internal/ImsConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

.field private mMtkImsConfigInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/internal/IMtkImsConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 81
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "persist.vendor.log.tel_dbg"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 82
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    .line 83
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->SENLOG:Z

    .line 84
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    sput-boolean v2, Lcom/mediatek/ims/ImsConfigManager;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRILAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    .line 104
    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 106
    new-instance v0, Lcom/mediatek/ims/ImsConfigManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsConfigManager$1;-><init>(Lcom/mediatek/ims/ImsConfigManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    sget-boolean v1, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ImsConfigManager"

    const-string v2, "ImsConfigManager Enter"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 152
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v2, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsConfigManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConfigManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsConfigManager;->setVdpProvision(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsConfigManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsConfigManager;

    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "phoneId"    # I

    .line 281
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    .local v1, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    goto :goto_0

    .line 285
    .end local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    :cond_0
    sget-boolean v1, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ImsConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init ImsConfigAdapter phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    new-instance v1, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    aget-object v2, p2, p3

    invoke-direct {v1, p1, v2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 287
    .restart local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigAdapterMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :goto_0
    monitor-exit v0

    .line 290
    return-object v1

    .line 289
    .end local v1    # "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMainCapabilityPhoneId()I
    .locals 2

    .line 468
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 469
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 470
    :cond_0
    const/4 v0, -0x1

    .line 472
    :cond_1
    return v0
.end method

.method private static isTestSim(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "isTestSim":Z
    const-string v1, "0"

    const-string v2, "1"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 455
    :pswitch_0
    const-string v3, "vendor.gsm.sim.ril.testsim.4"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 452
    :pswitch_1
    const-string v3, "vendor.gsm.sim.ril.testsim.3"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 453
    goto :goto_0

    .line 449
    :pswitch_2
    const-string v3, "vendor.gsm.sim.ril.testsim.2"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 450
    goto :goto_0

    .line 446
    :pswitch_3
    const-string v3, "vendor.gsm.sim.ril.testsim"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 447
    nop

    .line 458
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapFeatureValue(Z)I
    .locals 1
    .param p0, "value"    # Z

    .line 438
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0
.end method

.method private setVdpProvision(II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "value"    # I

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-gez p1, :cond_0

    return-void

    .line 497
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v0

    .line 498
    .local v0, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 499
    .local v3, "keys":[Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    .line 500
    .local v2, "values":[Ljava/lang/String;
    const-string v4, "provision_setting_vdp"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 501
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 503
    :try_start_0
    invoke-interface {v0, v3, v2, p1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    goto :goto_0

    .line 504
    :catch_0
    move-exception v4

    .line 505
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setModemImsCfg fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private updateImsResrouceCapability(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 295
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 296
    .local v4, "mcc":I
    const/4 v5, 0x0

    .line 297
    .local v5, "mnc":I
    const/4 v0, 0x0

    .line 298
    .local v0, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    const/4 v6, 0x0

    .line 300
    .local v6, "mccMnc":Ljava/lang/String;
    const-string v7, "ss"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, "simState":Ljava/lang/String;
    const/4 v9, -0x1

    const-string v10, "phone"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 303
    .local v9, "phoneId":I
    const-string v11, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "LOADED"

    const-string v13, "ABSENT"

    const-string v14, "ImsConfigManager"

    if-nez v11, :cond_2

    .line 304
    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 305
    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 306
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateImsServiceConfig after SIM event, phoneId:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {v1, v2, v9}, Lcom/mediatek/ims/ImsConfigManager;->updateImsServiceConfig(Landroid/content/Context;I)V

    .line 310
    :cond_1
    return-void

    .line 313
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get MtkImsConfigImpl of phone "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v11

    .line 321
    .end local v0    # "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    .local v11, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :try_start_0
    invoke-virtual {v8, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_3

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setImsResCapability to volte only w/o SIM on phone "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x1

    .line 325
    .local v0, "volteResVal":I
    const/4 v12, 0x0

    .line 326
    .local v12, "vilteResVal":I
    const/4 v15, 0x0

    .line 328
    .local v15, "wfcResVal":I
    invoke-interface {v11, v13, v0}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 330
    const/4 v13, 0x1

    invoke-interface {v11, v13, v12}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 332
    const/4 v13, 0x2

    invoke-interface {v11, v13, v15}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    goto/16 :goto_7

    .line 338
    .end local v0    # "volteResVal":I
    .end local v12    # "vilteResVal":I
    .end local v15    # "wfcResVal":I
    :cond_3
    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 339
    invoke-static {v9}, Lcom/mediatek/ims/ImsConfigManager;->isTestSim(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 340
    nop

    .line 341
    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v12, v0

    .line 343
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {v9}, Lcom/mediatek/ims/OperatorUtils;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    .line 344
    const-string v15, "Invalid mccMnc:"

    if-eqz v6, :cond_d

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    goto/16 :goto_5

    .line 350
    :cond_4
    const/4 v0, 0x3

    :try_start_2
    invoke-virtual {v6, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v4, v16

    .line 351
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v0

    .line 355
    nop

    .line 357
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM loaded on phone "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " with mcc: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " mnc: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {v9}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 361
    .local v0, "subId":I
    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v15

    .line 362
    .local v15, "iccid":Ljava/lang/String;
    sget-boolean v16, Lcom/mediatek/ims/ImsConfigManager;->SENLOG:Z

    if-eqz v16, :cond_6

    sget-boolean v16, Lcom/mediatek/ims/ImsConfigManager;->TELDBG:Z

    if-eqz v16, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v17, v0

    goto :goto_1

    .line 363
    :cond_6
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "subId":I
    .local v17, "subId":I
    const-string v0, "check iccid:"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 367
    const-string v0, "8988605"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 368
    sget-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "Replace mccmnc for APTG roaming case"

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_7
    const/16 v0, 0x1d2

    .line 370
    .end local v4    # "mcc":I
    .local v0, "mcc":I
    const/4 v4, 0x5

    move v5, v4

    move v4, v0

    .end local v5    # "mnc":I
    .local v4, "mnc":I
    goto :goto_2

    .line 373
    .end local v0    # "mcc":I
    .local v4, "mcc":I
    .restart local v5    # "mnc":I
    :cond_8
    const-string v0, "898603"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "898611"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 374
    :cond_9
    const/16 v4, 0x1cc

    .line 375
    const/4 v5, 0x3

    .line 376
    sget-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "Replace mccmnc for CT roaming case"

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_a
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 384
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 385
    .local v13, "newConfiguration":Landroid/content/res/Configuration;
    iput v4, v13, Landroid/content/res/Configuration;->mcc:I

    .line 386
    if-nez v5, :cond_b

    const v18, 0xffff

    move/from16 v1, v18

    goto :goto_3

    :cond_b
    move v1, v5

    :goto_3
    iput v1, v13, Landroid/content/res/Configuration;->mnc:I

    .line 387
    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 389
    invoke-static {v9}, Lcom/mediatek/ims/OperatorUtils;->isCTVolteDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "volteResVal":I
    const/16 v18, 0x0

    .line 392
    .local v18, "vilteResVal":I
    const/16 v19, 0x0

    .local v19, "wfcResVal":I
    goto :goto_4

    .line 394
    .end local v1    # "volteResVal":I
    .end local v18    # "vilteResVal":I
    .end local v19    # "wfcResVal":I
    :cond_c
    const v1, 0x1110117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Lcom/mediatek/ims/ImsConfigManager;->mapFeatureValue(Z)I

    move-result v1

    .line 396
    .restart local v1    # "volteResVal":I
    move/from16 v18, v1

    .end local v1    # "volteResVal":I
    .local v18, "volteResVal":I
    const v1, 0x1110118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Lcom/mediatek/ims/ImsConfigManager;->mapFeatureValue(Z)I

    move-result v1

    .line 398
    .local v1, "vilteResVal":I
    move/from16 v19, v1

    .end local v1    # "vilteResVal":I
    .local v19, "vilteResVal":I
    const v1, 0x1110119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Lcom/mediatek/ims/ImsConfigManager;->mapFeatureValue(Z)I

    move-result v1

    move/from16 v20, v19

    move/from16 v19, v1

    move/from16 v1, v18

    move/from16 v18, v20

    .line 401
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    .end local v13    # "newConfiguration":Landroid/content/res/Configuration;
    .end local v15    # "iccid":Ljava/lang/String;
    .end local v17    # "subId":I
    .local v1, "volteResVal":I
    .local v18, "vilteResVal":I
    .local v19, "wfcResVal":I
    :goto_4
    move/from16 v0, v18

    move/from16 v12, v19

    goto :goto_6

    .line 352
    .end local v1    # "volteResVal":I
    .end local v18    # "vilteResVal":I
    .end local v19    # "wfcResVal":I
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 345
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 403
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found test SIM on phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v1, 0x1

    .line 405
    .restart local v1    # "volteResVal":I
    const/16 v18, 0x1

    .line 406
    .restart local v18    # "vilteResVal":I
    const/4 v0, 0x1

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v12, v19

    .line 409
    .end local v18    # "vilteResVal":I
    .local v0, "vilteResVal":I
    .local v12, "wfcResVal":I
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Set res capability: volte = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", vilte = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", wfc = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v13, 0x0

    invoke-interface {v11, v13, v1}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 414
    const/4 v13, 0x1

    invoke-interface {v11, v13, v0}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 416
    const/4 v13, 0x2

    invoke-interface {v11, v13, v12}, Lcom/mediatek/ims/internal/IMtkImsConfig;->setImsResCapability(II)V

    .line 425
    .end local v0    # "vilteResVal":I
    .end local v1    # "volteResVal":I
    .end local v12    # "wfcResVal":I
    :cond_f
    :goto_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 426
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DYNAMIC_IMS_SWITCH_COMPLETE phoneId:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", simState:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 434
    nop

    .end local v0    # "mIntent":Landroid/content/Intent;
    goto :goto_8

    .line 432
    :catch_1
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetImsCapability fail: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_8
    return-void
.end method

.method private updateImsServiceConfig(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 476
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v0, :cond_0

    .line 477
    invoke-static {p1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 478
    invoke-interface {v0, p1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 481
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/ims/ImsConfigManager;->getMainCapabilityPhoneId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto :goto_0

    .line 489
    :cond_2
    sget-boolean v0, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ImsConfigManager"

    const-string v1, "Do not update if phoneId is not main capability"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/ims/internal/IImsConfig;
    .locals 7
    .param p1, "phoneId"    # I

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 191
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v2, v3, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v2

    .line 193
    .local v2, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v3

    .line 194
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v4}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 197
    :cond_0
    new-instance v4, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v6, p1

    invoke-direct {v4, v5, v6, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v4

    .line 198
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v4

    move-object v1, v4

    .line 199
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :goto_0
    monitor-exit v3

    .line 202
    return-object v1

    .line 201
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;
    .locals 12
    .param p1, "phoneId"    # I

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 245
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    const/4 v2, 0x0

    .line 247
    .local v2, "instanceEx":Lcom/mediatek/ims/internal/IMtkImsConfig;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v3, v4, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v3

    .line 249
    .local v3, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v4

    .line 250
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 251
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    invoke-virtual {v5}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 253
    :cond_0
    new-instance v5, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v7, p1

    invoke-direct {v5, v6, v7, v3, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v5

    .line 255
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v5

    move-object v1, v5

    .line 256
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    iget-object v11, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v11

    .line 261
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-object v2, v4

    goto :goto_1

    .line 264
    :cond_1
    new-instance v4, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v5, p1

    move-object v5, v4

    move-object v8, v1

    move-object v9, v3

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/android/ims/internal/IImsConfig;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v2, v4

    .line 266
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :goto_1
    monitor-exit v11

    .line 269
    return-object v2

    .line 268
    :catchall_0
    move-exception v4

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 258
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5
.end method

.method public init(I[Lcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "imsRILAdapters"    # [Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    if-eqz p2, :cond_0

    .line 168
    iput-object p2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v1, v2, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v1

    .line 172
    .local v1, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    sget-boolean v2, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ImsConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init ImsConfigImpl phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v2

    .line 174
    :try_start_0
    new-instance v3, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v5, v5, p1

    invoke-direct {v3, v4, v5, v1, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v3

    .line 176
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v2

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public initEx(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "imsConfigImpl":Lcom/mediatek/ims/config/internal/ImsConfigImpl;
    const/4 v1, 0x0

    .line 216
    .local v1, "instance":Lcom/android/ims/internal/IImsConfig;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-direct {p0, v2, v3, p1}, Lcom/mediatek/ims/ImsConfigManager;->getImsConfigAdapter(Landroid/content/Context;[Lcom/mediatek/ims/ril/ImsCommandsInterface;I)Lcom/mediatek/ims/config/internal/ImsConfigAdapter;

    move-result-object v2

    .line 218
    .local v2, "configAdapter":Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
    sget-boolean v3, Lcom/mediatek/ims/ImsConfigManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v4, "ImsConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEx ImsConfigImpl phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v4

    .line 220
    :try_start_0
    new-instance v5, Lcom/mediatek/ims/config/internal/ImsConfigImpl;

    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v7, v7, p1

    invoke-direct {v5, v6, v7, v2, p1}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    move-object v0, v5

    .line 222
    invoke-virtual {v0}, Lcom/mediatek/ims/config/internal/ImsConfigImpl;->getIImsConfig()Lcom/android/ims/internal/IImsConfig;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    .local v7, "instance":Lcom/android/ims/internal/IImsConfig;
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 226
    if-eqz v3, :cond_1

    .line 227
    const-string v1, "ImsConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initEx MtkImsConfigImpl phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    monitor-enter v1

    .line 229
    :try_start_2
    new-instance v3, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;

    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mImsRILAdapters:[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    aget-object v6, v4, p1

    move-object v4, v3

    move-object v8, v2

    move v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;-><init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/android/ims/internal/IImsConfig;Lcom/mediatek/ims/config/internal/ImsConfigAdapter;I)V

    .line 231
    .local v3, "instanceEx":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager;->mMtkImsConfigInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    .end local v3    # "instanceEx":Lcom/mediatek/ims/config/internal/MtkImsConfigImpl;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 224
    .end local v7    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    :catchall_1
    move-exception v3

    move-object v7, v1

    move-object v1, v3

    .end local v1    # "instance":Lcom/android/ims/internal/IImsConfig;
    .restart local v7    # "instance":Lcom/android/ims/internal/IImsConfig;
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    goto :goto_0
.end method
