.class public Lcom/mediatek/ims/config/ImsConfigContract;
.super Ljava/lang/Object;
.source "ImsConfigContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/ImsConfigContract$Validator;,
        Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;,
        Lcom/mediatek/ims/config/ImsConfigContract$Default;,
        Lcom/mediatek/ims/config/ImsConfigContract$Provision;,
        Lcom/mediatek/ims/config/ImsConfigContract$Master;,
        Lcom/mediatek/ims/config/ImsConfigContract$BasicConfigTable;,
        Lcom/mediatek/ims/config/ImsConfigContract$Resource;,
        Lcom/mediatek/ims/config/ImsConfigContract$Feature;,
        Lcom/mediatek/ims/config/ImsConfigContract$Unit;,
        Lcom/mediatek/ims/config/ImsConfigContract$MimeType;,
        Lcom/mediatek/ims/config/ImsConfigContract$Operator;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIG_LOADED:Ljava/lang/String; = "com.mediatek.ims.config.action.CONFIG_LOADED"

.field public static final ACTION_DYNAMIC_IMS_SWITCH_COMPLETE:Ljava/lang/String; = "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_COMPLETE"

.field public static final ACTION_IMS_CONFIG_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_CONFIG_CHANGED"

.field public static final ACTION_IMS_FEATURE_CHANGED:Ljava/lang/String; = "com.android.intent.action.IMS_FEATURE_CHANGED"

.field public static final AUTHORITY:Ljava/lang/String; = "com.mediatek.ims.config.provider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_CHANGED_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_CONFIG_ID:Ljava/lang/String; = "config_id"

.field public static final EXTRA_MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final EXTRA_NEW_VALUE:Ljava/lang/String; = "value"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field public static final TABLE_CONFIG_SETTING:Ljava/lang/String; = "tb_config_setting"

.field public static final TABLE_DEFAULT:Ljava/lang/String; = "tb_default"

.field public static final TABLE_FEATURE:Ljava/lang/String; = "tb_feature"

.field public static final TABLE_MASTER:Ljava/lang/String; = "tb_master"

.field public static final TABLE_PROVISION:Ljava/lang/String; = "tb_provision"

.field public static final TABLE_RESOURCE:Ljava/lang/String; = "tb_resource"

.field public static final VALUE_NO_DEFAULT:Ljava/lang/String; = "n/a"

.field private static sConfigNames:[Ljava/lang/String;

.field private static sMtkConfigNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 68

    .line 67
    const-string v0, "content://com.mediatek.ims.config.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/config/ImsConfigContract;->CONTENT_URI:Landroid/net/Uri;

    .line 104
    const-string v1, "VOCODER_AMRMODESET"

    const-string v2, "VOCODER_AMRWBMODESET"

    const-string v3, "SIP_SESSION_TIMER"

    const-string v4, "MIN_SE"

    const-string v5, "CANCELLATION_TIMER"

    const-string v6, "TDELAY"

    const-string v7, "SILENT_REDIAL_ENABLE"

    const-string v8, "SIP_T1_TIMER"

    const-string v9, "SIP_T2_TIMER"

    const-string v10, "SIP_TF_TIMER"

    const-string v11, "VLT_SETTING_ENABLED"

    const-string v12, "LVC_SETTING_ENABLED"

    const-string v13, "DOMAIN_NAME"

    const-string v14, "SMS_FORMAT"

    const-string v15, "SMS_OVER_IP"

    const-string v16, "PUBLISH_TIMER"

    const-string v17, "PUBLISH_TIMER_EXTENDED"

    const-string v18, "CAPABILITY_DISCOVERY_ENABLED"

    const-string v19, "CAPABILITIES_CACHE_EXPIRATION"

    const-string v20, "AVAILABILITY_CACHE_EXPIRATION"

    const-string v21, "CAPABILITIES_POLL_INTERVAL"

    const-string v22, "SOURCE_THROTTLE_PUBLISH"

    const-string v23, "MAX_NUMENTRIES_IN_RCL"

    const-string v24, "CAPAB_POLL_LIST_SUB_EXP"

    const-string v25, "GZIP_FLAG"

    const-string v26, "EAB_SETTING_ENABLED"

    const-string v27, "VOICE_OVER_WIFI_ROAMING"

    const-string v28, "VOICE_OVER_WIFI_MODE"

    const-string v29, "VOICE_OVER_WIFI_SETTING_ENABLED"

    const-string v30, "MOBILE_DATA_ENABLED"

    const-string v31, "VOLTE_USER_OPT_IN_STATUS"

    const-string v32, "LBO_PCSCF_ADDRESS"

    const-string v33, "KEEP_ALIVE_ENABLED"

    const-string v34, "REGISTRATION_RETRY_BASE_TIME_SEC"

    const-string v35, "REGISTRATION_RETRY_MAX_TIME_SEC"

    const-string v36, "SPEECH_START_PORT"

    const-string v37, "SPEECH_END_PORT"

    const-string v38, "SIP_INVITE_REQ_RETX_INTERVAL_MSEC"

    const-string v39, "SIP_INVITE_RSP_WAIT_TIME_MSEC"

    const-string v40, "SIP_INVITE_RSP_RETX_WAIT_TIME_MSEC"

    const-string v41, "SIP_NON_INVITE_REQ_RETX_INTERVAL_MSEC"

    const-string v42, "SIP_NON_INVITE_TXN_TIMEOUT_TIMER_MSEC"

    const-string v43, "SIP_INVITE_RSP_RETX_INTERVAL_MSEC"

    const-string v44, "SIP_ACK_RECEIPT_WAIT_TIME_MSEC"

    const-string v45, "SIP_ACK_RETX_WAIT_TIME_MSEC"

    const-string v46, "SIP_NON_INVITE_REQ_RETX_WAIT_TIME_MSEC"

    const-string v47, "SIP_NON_INVITE_RSP_RETX_WAIT_TIME_MSEC"

    const-string v48, "AMR_WB_OCTET_ALIGNED_PT"

    const-string v49, "AMR_WB_BANDWIDTH_EFFICIENT_PT"

    const-string v50, "AMR_OCTET_ALIGNED_PT"

    const-string v51, "AMR_BANDWIDTH_EFFICIENT_PT"

    const-string v52, "DTMF_WB_PT"

    const-string v53, "DTMF_NB_PT"

    const-string v54, "AMR_DEFAULT_MODE"

    const-string v55, "SMS_PSI"

    const-string v56, "VIDEO_QUALITY"

    const-string v57, "TH_LTE1"

    const-string v58, "TH_LTE2"

    const-string v59, "TH_LTE3"

    const-string v60, "TH_1x"

    const-string v61, "VOWT_A"

    const-string v62, "VOWT_B"

    const-string v63, "T_EPDG_LTE"

    const-string v64, "T_EPDG_WIFI"

    const-string v65, "T_EPDG_1X"

    const-string v66, "VICE_SETTING_ENABLED"

    const-string v67, "RTT_SETTING_ENABLED"

    filled-new-array/range {v1 .. v67}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/config/ImsConfigContract;->sConfigNames:[Ljava/lang/String;

    .line 174
    const-string v0, "VOICE_OVER_WIFI_MDN"

    const-string v1, "VOICE_DOMAIN_PREFERENCE"

    const-string v2, "EPDG_ADDRESS"

    const-string v3, "PUBLISH_ERROR_RETRY_TIMER"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/config/ImsConfigContract;->sMtkConfigNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configIdToName(I)Ljava/lang/String;
    .locals 3
    .param p0, "configId"    # I

    .line 311
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3ec

    if-gt p0, v0, :cond_0

    .line 313
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigContract;->sMtkConfigNames:[Ljava/lang/String;

    add-int/lit16 v1, p0, -0x3e8

    aget-object v0, v0, v1

    return-object v0

    .line 314
    :cond_0
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigContract;->sConfigNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 317
    aget-object v0, v0, p0

    return-object v0

    .line 315
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid config id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static configNameToId(Ljava/lang/String;)I
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/ims/config/ImsConfigContract;->sConfigNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 322
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    return v0

    .line 321
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/mediatek/ims/config/ImsConfigContract;->sMtkConfigNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 327
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    add-int/lit16 v1, v0, 0x3e8

    return v1

    .line 326
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;
    .locals 4
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "phoneId"    # I
    .param p2, "itemId"    # I

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "result":Landroid/net/Uri;
    invoke-static {p0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "tb_default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "tb_master"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "tb_provision"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "tb_config_setting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 301
    :pswitch_0
    invoke-static {p1, p2}, Lcom/mediatek/ims/config/ImsConfigContract$Master;->getUriWithConfigId(II)Landroid/net/Uri;

    move-result-object v0

    .line 302
    goto :goto_2

    .line 298
    :pswitch_1
    invoke-static {p1, p2}, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->getUriWithConfigId(II)Landroid/net/Uri;

    move-result-object v0

    .line 299
    goto :goto_2

    .line 295
    :pswitch_2
    invoke-static {p1, p2}, Lcom/mediatek/ims/config/ImsConfigContract$Default;->getUriWithConfigId(II)Landroid/net/Uri;

    move-result-object v0

    .line 296
    goto :goto_2

    .line 292
    :pswitch_3
    invoke-static {p1, p2}, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->getUriWithSettingId(II)Landroid/net/Uri;

    move-result-object v0

    .line 293
    nop

    .line 307
    :goto_2
    return-object v0

    .line 288
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x7f2433bc -> :sswitch_3
        0x2aff044 -> :sswitch_2
        0x5432a153 -> :sswitch_1
        0x5c1d3d70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkTypeByFeature(I)I
    .locals 1
    .param p0, "imsFeatureType"    # I

    .line 449
    const/16 v0, 0xd

    packed-switch p0, :pswitch_data_0

    .line 457
    const/4 v0, 0x0

    return v0

    .line 455
    :pswitch_0
    const/16 v0, 0x12

    return v0

    .line 453
    :pswitch_1
    return v0

    .line 451
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTableUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "table"    # Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "result":Landroid/net/Uri;
    invoke-static {p0}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "tb_default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "tb_master"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "tb_provision"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "tb_config_setting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 276
    :pswitch_0
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigContract$Master;->CONTENT_URI:Landroid/net/Uri;

    .line 277
    goto :goto_2

    .line 273
    :pswitch_1
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->CONTENT_URI:Landroid/net/Uri;

    .line 274
    goto :goto_2

    .line 270
    :pswitch_2
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    .line 271
    goto :goto_2

    .line 267
    :pswitch_3
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->CONTENT_URI:Landroid/net/Uri;

    .line 268
    nop

    .line 282
    :goto_2
    return-object v0

    .line 263
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x7f2433bc -> :sswitch_3
        0x2aff044 -> :sswitch_2
        0x5432a153 -> :sswitch_1
        0x5c1d3d70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
