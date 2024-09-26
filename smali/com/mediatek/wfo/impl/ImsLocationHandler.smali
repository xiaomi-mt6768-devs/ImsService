.class public Lcom/mediatek/wfo/impl/ImsLocationHandler;
.super Landroid/os/Handler;
.source "ImsLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;,
        Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;,
        Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;
    }
.end annotation


# static fields
.field private static final ACTION_LOCATION_CACHE:Ljava/lang/String; = "com.mediatek.intent.action.LOCATION_HANDLE"

.field private static final BASE:I = 0xbb8

.field private static final BROADCAST_FLAG_ENABLE:I = 0x1

.field private static final CACHE_DISABLE:I = 0x0

.field private static final CACHE_ENABLE:I = 0x1

.field private static final CACHE_ENABLE_EXTRA:Ljava/lang/String; = "enable_location_handle"

.field private static final COUNTRY_CODE_HK:Ljava/lang/String; = "HK"

.field private static final DEFAULT_CONFIDENCE_LEVEL:I = 0x44

.field private static final ENGLOAD:Z

.field private static final EVENT_ALL_RETRY_GET_LOCATION_REQUST:I = 0xbc0

.field private static final EVENT_DIALING_E911:I = 0xbbe

.field private static final EVENT_GET_LAST_KNOWN_LOCATION:I = 0xbb9

.field public static final EVENT_GET_LOCATION_REQUEST:I = 0xbb8

.field private static final EVENT_HANDLE_LAST_KNOWN_LOCATION_RESPONSE:I = 0xbbb

.field private static final EVENT_HANDLE_NETWORK_LOCATION_RESPONSE:I = 0xbba

.field private static final EVENT_LOCATION_CACHE:I = 0xbc3

.field private static final EVENT_LOCATION_MODE_CHANGED:I = 0xbc1

.field private static final EVENT_LOCATION_PROVIDERS_CHANGED:I = 0xbc5

.field private static final EVENT_REQUEST_NETWORK_LOCATION:I = 0xbc2

.field private static final EVENT_RETRY_GET_LOCATION_REQUEST:I = 0xbbf

.field private static final EVENT_RETRY_NETWORK_LOCATION_REQUEST:I = 0xbc4

.field private static final EVENT_SET_COUNTRY_CODE:I = 0xbbd

.field private static final EVENT_SET_LOCATION_INFO:I = 0xbbc

.field private static final IGNORE_SETTING_ALLOWLIST:Ljava/lang/String; = "ignore_settings_allowlist"

.field private static final KEY_LOCATION_CACHE:Ljava/lang/String; = "key_ocation_cache"

.field private static final KEY_LOCATION_CACHE_ACCOUNTID:Ljava/lang/String; = "key_accountid"

.field private static final KEY_LOCATION_CACHE_ACCURACY:Ljava/lang/String; = "key_accuracy"

.field private static final KEY_LOCATION_CACHE_BROADCASTFLAG:Ljava/lang/String; = "key_broadcastflag"

.field private static final KEY_LOCATION_CACHE_CITY:Ljava/lang/String; = "key_city"

.field private static final KEY_LOCATION_CACHE_COUNTRYCODE:Ljava/lang/String; = "key_countrycode"

.field private static final KEY_LOCATION_CACHE_LATITUDE:Ljava/lang/String; = "key_latitude"

.field private static final KEY_LOCATION_CACHE_LONGTITUDE:Ljava/lang/String; = "key_longitude"

.field private static final KEY_LOCATION_CACHE_METHOD:Ljava/lang/String; = "key_method"

.field private static final KEY_LOCATION_CACHE_STATE:Ljava/lang/String; = "key_state"

.field private static final KEY_LOCATION_CACHE_ZIP:Ljava/lang/String; = "key_zip"

.field private static final LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static MAX_NETWORK_LOCATION_RETRY:I = 0x0

.field private static MAX_NUM_OF_GET_LOCATION_TASKS_THREAD:I = 0x0

.field private static MAX_REQUEST_TIME_OUT_RETRY:I = 0x0

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final MAX_VALID_PARAM_COUNT:I = 0x7

.field private static final MAX_VALID_SIM_COUNT:I = 0x4

.field private static final MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO:I = 0x17709

.field private static final MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO:I = 0x16396

.field public static final MTK_KEY_WFC_GET_CONFIDENCE_LEVEL:Ljava/lang/String; = "mtk_carrier_wfc_get_confidence_level"

.field public static final MTK_KEY_WFC_GET_LOCATION_ALWAYS:Ljava/lang/String; = "mtk_carrier_wfc_get_location_always"

.field public static final MTK_KEY_WFC_LOCATION_RESPONSE_TIMEOUT:Ljava/lang/String; = "mtk_carrier_wfc_location_response_timeout"

.field private static final NA_CONFIDENCE_LEVEL:I = 0x5a

.field private static NETWORK_LOCATION_UPDATE_TIME:I = 0x0

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I = 0x0

.field private static final REQUEST_LOCATION_MODE_CHANGED_RETRY_TIMEOUT:I = 0x3e8

.field private static final REQUEST_LOCATION_RETRY_TIMEOUT:I = 0x1388

.field private static final REQUEST_NETWORK_LOCATION_RETRY_TIMEOUT:I = 0xbb8

.field private static final RESPONSE_SET_LOCATION_ENABLED:I = 0xc1d

.field private static final RESPONSE_SET_LOCATION_INFO:I = 0xc1c

.field private static final STANDARD_NORMAL_DISTRIBUTION_TABLE:[F

.field private static final TAG:Ljava/lang/String; = "ImsLocationHandler"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z


# instance fields
.field private mCallStateListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

.field private mConfidenceLevel:I

.field private mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mGeoCoder:Landroid/location/Geocoder;

.field private mGnssProxyPackageName:Ljava/lang/String;

.field private mIgnoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreLocaitonSetting:Z

.field private mLastLocationSetting:Z

.field private mLocationInfoQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequestLock:Ljava/lang/Object;

.field private mLocationRequestRegistered:Z

.field private mLocationSetting:Z

.field private mLocationTimeout:Z

.field private mLocationTimeoutLock:Ljava/lang/Object;

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mNetworkAvailable:Z

.field private mNetworkLocationRetry:I

.field private mNetworkLocationTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingLocationRequest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPlmnCountryCode:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestTimeOutRetry:I

.field private mRetryCount:I

.field private mSimCount:I

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiMacAddr:Ljava/lang/String;

.field private mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIgnoreList(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIgnoreLocaitonSetting(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreLocaitonSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationInfoQueue(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationManager(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationRequestRegistered(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationSetting(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationTimeout(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationTimeoutLock(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkAvailable(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumber(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiPdnHandler(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .locals 0

    iget-object p0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLocationTimeout(Lcom/mediatek/wfo/impl/ImsLocationHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkAvailable(Lcom/mediatek/wfo/impl/ImsLocationHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestTimeOutRetry(Lcom/mediatek/wfo/impl/ImsLocationHandler;I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRequestTimeOutRetry:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddRetryLocationRequestForECC(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->addRetryLocationRequestForECC()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelNetworkLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->cancelNetworkLocationRequest()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBooleanCarrierConfig(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;IZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getBooleanCarrierConfig(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misCtaNotAllow(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isCtaNotAllow()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEccInProgress(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isEccInProgress()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateLocationForNoSimEcc(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->updateLocationForNoSimEcc()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMAX_REQUEST_TIME_OUT_RETRY()I
    .locals 1

    sget v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_REQUEST_TIME_OUT_RETRY:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 110
    const/16 v0, 0x20

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->STANDARD_NORMAL_DISTRIBUTION_TABLE:[F

    .line 120
    const/4 v0, 0x3

    sput v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NUM_OF_GET_LOCATION_TASKS_THREAD:I

    .line 121
    const v1, 0xd6d8

    sput v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    .line 122
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;->ENGLOAD:Z

    .line 124
    const/16 v1, 0xf

    sput v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    .line 127
    sput v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_REQUEST_TIME_OUT_RETRY:I

    .line 149
    const/16 v0, 0x3e8

    sput v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->NETWORK_LOCATION_UPDATE_TIME:I

    .line 199
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 200
    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->USR_BUILD:Z

    .line 201
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;->TELDBG:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f0a3055    # 0.5398f
        0x3f144d01    # 0.5793f
        0x3f1e2eb2    # 0.6179f
        0x3f27c84b    # 0.6554f
        0x3f310625    # 0.6915f
        0x3f39c77a    # 0.7257f
        0x3f420c4a    # 0.758f
        0x3f49c0ec    # 0.7881f
        0x3f50ded3    # 0.8159f
        0x3f575f70    # 0.8413f
        0x3f5d42c4    # 0.8643f
        0x3f6288ce    # 0.8849f
        0x3f67381d    # 0.9032f
        0x3f6b50b1    # 0.9192f
        0x3f6ee632    # 0.9332f
        0x3f71f8a1    # 0.9452f
        0x3f749518    # 0.9554f
        0x3f76cf42    # 0.9641f
        0x3f78a71e    # 0.9713f
        0x3f7a29c7    # 0.9772f
        0x3f7b6ae8    # 0.9821f
        0x3f7c710d    # 0.9861f
        0x3f7d42c4    # 0.9893f
        0x3f7de69b    # 0.9918f
        0x3f7e69ad    # 0.9938f
        0x3f7ecbfb    # 0.9953f
        0x3f7f1aa0    # 0.9965f
        0x3f7f559b    # 0.9974f
        0x3f7f837b    # 0.9981f
        0x3f7faace    # 0.9987f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 669
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 163
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp-IA;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 174
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiMacAddr:Ljava/lang/String;

    .line 181
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    .line 188
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    .line 189
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    .line 191
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    .line 193
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    .line 195
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreLocaitonSetting:Z

    .line 222
    sget v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_REQUEST_TIME_OUT_RETRY:I

    iput v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRequestTimeOutRetry:I

    .line 239
    const-string v1, "186119"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreList:Ljava/util/List;

    .line 244
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I

    .line 248
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 251
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/mediatek/wfo/impl/ImsLocationHandler$1;

    invoke-direct {v8, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$1;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1540
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 670
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 671
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiPdnHandler"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p3, "simCount"    # I
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 631
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp-IA;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 174
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiMacAddr:Ljava/lang/String;

    .line 181
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    .line 188
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    .line 189
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    .line 191
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    .line 193
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    .line 195
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreLocaitonSetting:Z

    .line 222
    sget v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_REQUEST_TIME_OUT_RETRY:I

    iput v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRequestTimeOutRetry:I

    .line 239
    const-string v1, "186119"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreList:Ljava/util/List;

    .line 244
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I

    .line 248
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 251
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/mediatek/wfo/impl/ImsLocationHandler$1;

    invoke-direct {v8, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$1;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1540
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 632
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 633
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 634
    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 636
    const-string v0, "replace mContext to mDeviceContext"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 638
    :cond_0
    iput-object p2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 639
    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    move v0, p3

    :cond_1
    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    .line 640
    iput-object p5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 642
    sget v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    .line 644
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    .line 645
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 647
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 648
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$CallStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 650
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1st time send location setting to modem, mLocationSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 653
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationEnabled()V

    .line 655
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 656
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->loadProxyNameFromCarrierConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 658
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 659
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 661
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->registerForBroadcast()V

    .line 662
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->registerIndication()V

    .line 663
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->registerDefaultNetwork()V

    .line 664
    return-void
.end method

.method private addPackageInLocationSettingsWhitelist()V
    .locals 7

    .line 1430
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "location"

    const-string v2, "ignore_settings_allowlist"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1434
    .local v4, "whitelist":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1435
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1436
    .local v3, "outStr":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add WFC in location setting whitelist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1438
    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1441
    .end local v3    # "outStr":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addRetryLocationRequest(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 702
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 704
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 705
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/String;

    .line 706
    .local v4, "retryRet":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 708
    .local v5, "delayRet":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v6, v2

    if-le v6, v3, :cond_0

    goto :goto_1

    .line 713
    :cond_0
    array-length v3, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    array-length v3, v2

    invoke-static {v2, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    new-instance v3, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 716
    .local v3, "retryAr":Landroid/os/AsyncResult;
    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v7, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v7, v8

    .line 718
    .local v7, "delayAr":Landroid/os/AsyncResult;
    const/16 v8, 0xbbf

    invoke-virtual {p0, v8, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 719
    .local v9, "retryMsg":Landroid/os/Message;
    iget-object v10, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 721
    iget-object v6, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 724
    :cond_1
    iget-object v10, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 726
    :goto_0
    const-string v6, "ImsLocationHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Added, current PendingLocationRequest size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 727
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 726
    invoke-static {v6, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0, v8, v7}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 729
    .local v6, "delayMsg":Landroid/os/Message;
    const-wide/16 v10, 0x1388

    invoke-virtual {p0, v6, v10, v11}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 730
    nop

    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":[Ljava/lang/String;
    .end local v3    # "retryAr":Landroid/os/AsyncResult;
    .end local v4    # "retryRet":[Ljava/lang/String;
    .end local v5    # "delayRet":[Ljava/lang/String;
    .end local v6    # "delayMsg":Landroid/os/Message;
    .end local v7    # "delayAr":Landroid/os/AsyncResult;
    .end local v9    # "retryMsg":Landroid/os/Message;
    monitor-exit v0

    .line 731
    return-void

    .line 709
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "result":[Ljava/lang/String;
    .restart local v4    # "retryRet":[Ljava/lang/String;
    .restart local v5    # "delayRet":[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v3, "ImsLocationHandler"

    const-string v6, "addRetryLocationRequest: params invalid"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    monitor-exit v0

    return-void

    .line 730
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":[Ljava/lang/String;
    .end local v4    # "retryRet":[Ljava/lang/String;
    .end local v5    # "delayRet":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addRetryLocationRequestForECC()V
    .locals 6

    .line 734
    const-string v0, "0"

    const-string v1, "0"

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "retryRet":[Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 737
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 738
    .local v1, "retryAr":Landroid/os/AsyncResult;
    const/16 v2, 0xbbf

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 740
    .local v2, "retryMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 742
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    :cond_0
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 747
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added for ECC, current PendingLocationRequest size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 748
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 747
    const-string v4, "ImsLocationHandler"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void
.end method

.method private adjustAccuracyForConfidence(FFF)F
    .locals 2
    .param p1, "srcAccuracy"    # F
    .param p2, "srcConf"    # F
    .param p3, "destConf"    # F

    .line 1093
    invoke-direct {p0, p3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSigmaFromConf(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSigmaFromConf(F)F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private cancelNetworkLocationRequest()V
    .locals 4

    .line 1414
    const/16 v0, 0xbc4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1415
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->removeMessages(I)V

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "ImsLocationHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1418
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 1419
    const-string v0, "cancelNetworkLocationRequest: empty locationManager, return"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-void

    .line 1422
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1423
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 1426
    const-string v0, "cancelNetworkLocationRequest"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return-void
.end method

.method private checkLocationProxyAppPermission()Z
    .locals 5

    .line 1730
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->loadProxyNameFromCarrierConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    .line 1732
    const/4 v1, 0x1

    const-string v2, "ImsLocationHandler"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1733
    const-string v0, "The package name is empty, treat it as granted"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    return v1

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1739
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1740
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1741
    .local v0, "proxyAppLocationGranted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxyAppLocationGranted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    return v0

    .line 1745
    .end local v0    # "proxyAppLocationGranted":Z
    :cond_2
    const-string v0, "non-FWK permission app not installed, treat it as granted"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    return v1
.end method

.method private dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 859
    iget-wide v0, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 860
    .local v0, "latitude":D
    iget-wide v2, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 861
    .local v2, "longitude":D
    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 863
    .local v4, "accuracy":F
    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v5

    if-nez v7, :cond_0

    cmpl-double v5, v2, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    .line 864
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    goto :goto_0

    .line 866
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->cancelNetworkLocationRequest()V

    .line 867
    iget-object v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    monitor-enter v5

    .line 868
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    .line 869
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    const-string v5, "removeMessages: EVENT_GET_LAST_KNOWN_LOCATION"

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 871
    const/16 v5, 0xbb9

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->removeMessages(I)V

    .line 872
    const-string v5, "GPS"

    iput-object v5, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 873
    iget-object v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->pollLocationInfo()V

    .line 876
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchLocationRequest(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 877
    return-void

    .line 869
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "defaultValue"    # Z

    .line 1751
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_0

    .line 1752
    const-string v0, "ImsLocationHandler"

    const-string v1, "isGetLocationAlways: Carrier Config service is NOT ready"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const/4 v0, 0x0

    return v0

    .line 1755
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSubIdBySlot(I)I

    move-result v0

    .line 1756
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1757
    .local v1, "b":Landroid/os/PersistableBundle;
    const/4 v2, 0x1

    .line 1758
    .local v2, "ret":Z
    if-eqz v1, :cond_1

    .line 1759
    invoke-virtual {v1, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    .line 1762
    :cond_1
    const-string v3, "getBooleanCarrierConfig: get from default config"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1763
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1765
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanCarrierConfig phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1766
    return v2
.end method

.method private getGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .locals 12
    .param p1, "location"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1156
    const-string v0, "ImsLocationHandler"

    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    if-nez v1, :cond_0

    .line 1157
    const-string v0, "getGeoLocationFromLatLong: empty geoCoder, return an empty location"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1158
    return-object p1

    .line 1161
    :cond_0
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1162
    const-string v0, "getGeoLocationFromLatLong: this system has no GeoCoder implementation!!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1163
    return-object p1

    .line 1166
    :cond_1
    iget-wide v7, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 1167
    .local v7, "lat":D
    iget-wide v9, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 1169
    .local v9, "lng":D
    const/4 v11, 0x0

    .line 1171
    .local v11, "lstAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    const/4 v6, 0x1

    move-wide v2, v7

    move-wide v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v1

    .line 1176
    :goto_0
    goto :goto_1

    .line 1174
    :catch_0
    move-exception v1

    .line 1175
    .local v1, "e2":Ljava/lang/IllegalArgumentException;
    const-string v2, "mGeoCoder.getFromLocation throw IllegalArgumentException"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1172
    .end local v1    # "e2":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1173
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGeoCoder.getFromLocation throw IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1178
    :goto_1
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 1192
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 1193
    iget-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1194
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 1196
    :cond_3
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 1197
    iget-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1198
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 1200
    :cond_4
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 1201
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1203
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1204
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->saveLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1207
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGeoLocationFromLatLong: location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1209
    return-object p1

    .line 1179
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGeoLocationFromLatLong: get empty address, time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1182
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1183
    const-string v0, ""

    iget-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1184
    const/4 v0, 0x0

    return-object v0

    .line 1186
    :cond_7
    return-object p1

    .line 1188
    :cond_8
    return-object p1
.end method

.method private getIntCarrierConfig(Ljava/lang/String;II)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "simIdx"    # I

    .line 1007
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 1008
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1009
    const-string v1, "ImsLocationHandler"

    if-nez v0, :cond_0

    .line 1010
    const-string v0, "getIntCarrierConfig: Carrier Config service is NOT ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return p2

    .line 1014
    :cond_0
    invoke-direct {p0, p3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSubIdBySlot(I)I

    move-result v0

    .line 1015
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1016
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1017
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v2, :cond_2

    .line 1018
    const-string v3, "getIntCarrierConfig: SIM not ready, use default carrier config"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1022
    :cond_2
    invoke-virtual {v2, p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1023
    .local v1, "ret":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntCarrierConfig sub: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1024
    return v1
.end method

.method private getIntCarrierConfigEx(Ljava/lang/String;II)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "simIdx"    # I

    .line 1029
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 1030
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1031
    const-string v1, "ImsLocationHandler"

    if-nez v0, :cond_0

    .line 1032
    const-string v0, "getIntCarrierConfigEx: Carrier Config service is NOT ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return p2

    .line 1036
    :cond_0
    move v0, p2

    .line 1037
    .local v0, "ret":I
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v2

    .line 1038
    .local v2, "simState":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 1039
    invoke-direct {p0, p3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSubIdBySlot(I)I

    move-result v3

    .line 1040
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1041
    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v4, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 1042
    .local v4, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v4, :cond_2

    .line 1043
    const-string v5, "getIntCarrierConfigEx: SIM not ready, use default carrier config"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 1046
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1049
    .end local v3    # "subId":I
    .end local v4    # "configs":Landroid/os/PersistableBundle;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntCarrierConfigEx simIdx: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " simState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1051
    return v0
.end method

.method private getLastKnownLocation(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Z
    .locals 12
    .param p1, "info"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1290
    const-string v0, "getLastKnownLocation"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1293
    const-string v0, "getLastKnownLocation: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1294
    return v1

    .line 1297
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1298
    const-string v0, "ImsLocationHandler"

    const-string v2, "getLastKnownLocation: CTA not allow"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return v1

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1304
    const-string v0, "getLastKnownLocation: GPS_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1305
    return v1

    .line 1308
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isEccInProgress()Z

    move-result v0

    .line 1311
    .local v0, "isEcc":Z
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    new-instance v4, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v4}, Landroid/location/LastLocationRequest$Builder;-><init>()V

    .line 1313
    invoke-virtual {v4, v0}, Landroid/location/LastLocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object v4

    .line 1312
    invoke-virtual {v3, v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;)Landroid/location/Location;

    move-result-object v2

    .line 1315
    .local v2, "gpsLocation":Landroid/location/Location;
    const/4 v3, 0x1

    const/16 v4, 0xbbb

    const-wide/32 v5, 0x1b7740

    if-eqz v2, :cond_3

    .line 1317
    const-string v7, "GPS location"

    invoke-virtual {p0, v7}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v7, v7, v5

    if-gez v7, :cond_3

    .line 1319
    invoke-virtual {p0, v4, v1, v1, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1321
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1322
    return v3

    .line 1327
    :cond_3
    iget-object v7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v8, "network"

    invoke-virtual {v7, v8}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1328
    const-string v3, "getLastKnownLocation: NETWORK_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1329
    return v1

    .line 1334
    :cond_4
    iget-object v7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    new-instance v9, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v9}, Landroid/location/LastLocationRequest$Builder;-><init>()V

    .line 1336
    invoke-virtual {v9, v0}, Landroid/location/LastLocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object v9

    .line 1335
    invoke-virtual {v7, v8, v9}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;)Landroid/location/Location;

    move-result-object v7

    .line 1338
    .local v7, "networkLocation":Landroid/location/Location;
    if-eqz v7, :cond_5

    .line 1340
    const-string v8, "Network location"

    invoke-virtual {p0, v8}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v5, v8, v5

    if-gez v5, :cond_5

    .line 1342
    invoke-virtual {p0, v4, v1, v1, v7}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1344
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1345
    return v3

    .line 1349
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastKnownLocation: no last known location, mLocationSetting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPlmnCountryCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1353
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1354
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1356
    :cond_6
    return v1
.end method

.method private getLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .locals 5
    .param p1, "location"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1265
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1267
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "key_accountid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    .line 1269
    iget v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    if-nez v1, :cond_0

    .line 1270
    const-string v1, "key_broadcastflag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 1273
    :cond_0
    const-string v1, "key_latitude"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v3, v1

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 1275
    const-string v1, "key_longitude"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v3, v1

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 1277
    const-string v1, "key_accuracy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 1279
    const-string v1, "key_method"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 1280
    const-string v1, "key_city"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 1281
    const-string v1, "key_state"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 1282
    const-string v1, "key_zip"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 1283
    const-string v1, "key_countrycode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get geolocation from cache, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    return-object p1
.end method

.method private getLocationCacheEnable()Z
    .locals 4

    .line 1231
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1232
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "key_ocation_cache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1233
    .local v1, "locationCacheEnable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get location cache enable status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1234
    return v1
.end method

.method private getMainCapabilityPhoneId()I
    .locals 3

    .line 1513
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1514
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1515
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const/4 v0, -0x1

    .line 1518
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1519
    return v0
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 3

    .line 1523
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1525
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1527
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1

    .line 1529
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getMwiRil(I)Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1534
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1535
    :cond_0
    const/4 p1, 0x0

    .line 1537
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getSigmaFromConf(F)F
    .locals 12
    .param p1, "conf"    # F

    .line 1055
    const/4 v0, 0x0

    .line 1058
    .local v0, "index":I
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 1060
    const/high16 v1, 0x40c00000    # 6.0f

    return v1

    .line 1063
    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_1

    .line 1065
    return v3

    .line 1068
    :cond_1
    const/high16 v2, 0x42860000    # 67.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    .line 1069
    return v3

    .line 1070
    :cond_2
    const/high16 v2, 0x42880000    # 68.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    .line 1071
    return v3

    .line 1072
    :cond_3
    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_4

    .line 1073
    const v1, 0x3fd33333    # 1.65f

    return v1

    .line 1074
    :cond_4
    const/high16 v2, 0x42be0000    # 95.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_5

    .line 1075
    const v1, 0x3ffae148    # 1.96f

    return v1

    .line 1077
    :cond_5
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    float-to-double v4, p1

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    div-double/2addr v4, v2

    double-to-float v2, v4

    .line 1078
    .local v2, "distribution":F
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/mediatek/wfo/impl/ImsLocationHandler;->STANDARD_NORMAL_DISTRIBUTION_TABLE:[F

    array-length v4, v3

    if-ge v0, v4, :cond_8

    .line 1079
    aget v4, v3, v0

    cmpl-float v5, v4, v2

    const-wide v6, 0x3fb999999999999aL    # 0.1

    if-nez v5, :cond_6

    .line 1080
    int-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-float v1, v3

    return v1

    .line 1082
    :cond_6
    const/4 v5, 0x1

    if-lt v0, v5, :cond_7

    cmpl-float v5, v4, v2

    if-lez v5, :cond_7

    .line 1083
    add-int/lit8 v1, v0, -0x1

    int-to-double v8, v1

    mul-double/2addr v8, v6

    add-int/lit8 v1, v0, -0x1

    aget v1, v3, v1

    sub-float v1, v2, v1

    float-to-double v10, v1

    mul-double/2addr v10, v6

    add-int/lit8 v1, v0, -0x1

    aget v1, v3, v1

    sub-float/2addr v4, v1

    float-to-double v3, v4

    div-double/2addr v10, v3

    add-double/2addr v8, v10

    double-to-float v1, v8

    .line 1085
    .local v1, "RetVal":F
    return v1

    .line 1078
    .end local v1    # "RetVal":F
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1089
    :cond_8
    return v1
.end method

.method private getSimCountryCode()Ljava/lang/String;
    .locals 3

    .line 1213
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "simCountryCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimCountryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1216
    return-object v0
.end method

.method private getSubIdBySlot(I)I
    .locals 2
    .param p1, "slot"    # I

    .line 1002
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1003
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    :goto_0
    return v1
.end method

.method private handleAllRetryLocationRequest()V
    .locals 4

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAllRetryLocationRequest mPendingLocationRequest.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    const/16 v1, 0xbbf

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->removeMessages(I)V

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 769
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 772
    :cond_1
    const-string v3, "Network not available, ignore EVENT_RETRY_GET_LOCATION_REQUEST."

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 770
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 774
    .end local v2    # "msg":Landroid/os/Message;
    :goto_2
    goto :goto_0

    .line 775
    :cond_3
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 776
    monitor-exit v0

    .line 777
    return-void

    .line 776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleLocationRequest(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 800
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iget-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "ImsLocationHandler"

    if-nez v0, :cond_0

    .line 801
    const-string v0, "handleLocationInfo(): msg.obj is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void

    .line 804
    :cond_0
    iget-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/os/AsyncResult;

    .line 805
    .local v14, "ar":Landroid/os/AsyncResult;
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    .line 806
    .local v15, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 808
    .local v2, "confidence":I
    if-nez v15, :cond_1

    .line 809
    const-string v0, "handleLocationInfo(): result is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return-void

    .line 813
    :cond_1
    array-length v0, v15

    const/4 v3, 0x7

    if-ge v0, v3, :cond_2

    .line 814
    const-string v0, "handleLocationInfo(): params invalid"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 819
    :cond_2
    const/16 v16, 0x6

    const/16 v17, 0x1

    const/16 v18, 0x0

    :try_start_0
    aget-object v0, v15, v18

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 820
    .local v4, "accId":I
    aget-object v0, v15, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 821
    .local v5, "broadcastFlag":I
    const/4 v0, 0x2

    aget-object v0, v15, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 822
    .local v6, "latitude":D
    const/4 v0, 0x3

    aget-object v0, v15, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 823
    .local v8, "longitude":D
    const/4 v0, 0x4

    aget-object v0, v15, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 824
    .local v10, "accuracy":F
    const/4 v0, 0x5

    aget-object v1, v15, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 825
    aget-object v0, v15, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move v2, v0

    move v11, v2

    goto :goto_0

    .line 824
    :cond_3
    move v11, v2

    .line 827
    .end local v2    # "confidence":I
    .local v11, "confidence":I
    :goto_0
    :try_start_1
    aget-object v0, v15, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 830
    .local v3, "simIdx":I
    if-eqz v11, :cond_4

    .line 831
    :try_start_2
    iput v11, v12, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 840
    .end local v3    # "simIdx":I
    .end local v4    # "accId":I
    .end local v5    # "broadcastFlag":I
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "accuracy":F
    :catch_0
    move-exception v0

    move v2, v11

    goto :goto_2

    .line 834
    .restart local v3    # "simIdx":I
    .restart local v4    # "accId":I
    .restart local v5    # "broadcastFlag":I
    .restart local v6    # "latitude":D
    .restart local v8    # "longitude":D
    .restart local v10    # "accuracy":F
    :cond_4
    :goto_1
    :try_start_3
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v19, v11

    .end local v11    # "confidence":I
    .local v19, "confidence":I
    :try_start_4
    invoke-direct/range {v1 .. v11}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDFI)V

    .line 837
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->updateCountryCodeForVoWifiOnly()V

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocationRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 839
    invoke-direct {v12, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 844
    .end local v0    # "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .end local v3    # "simIdx":I
    .end local v4    # "accId":I
    .end local v5    # "broadcastFlag":I
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "accuracy":F
    move/from16 v11, v19

    goto :goto_3

    .line 840
    :catch_1
    move-exception v0

    move/from16 v2, v19

    goto :goto_2

    .end local v19    # "confidence":I
    .restart local v11    # "confidence":I
    :catch_2
    move-exception v0

    move/from16 v19, v11

    move/from16 v2, v19

    .end local v11    # "confidence":I
    .restart local v19    # "confidence":I
    goto :goto_2

    .end local v19    # "confidence":I
    .restart local v2    # "confidence":I
    :catch_3
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLocationRequest(), ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v15

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], accId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v15, v18

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", broadcastFlag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v15, v17

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", confidence:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", simIdx:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v15, v16

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    move v11, v2

    .line 846
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "confidence":I
    .restart local v11    # "confidence":I
    :goto_3
    return-void
.end method

.method private handleNetworkLocationUpdate(Landroid/location/Location;)V
    .locals 23
    .param p1, "location"    # Landroid/location/Location;

    .line 908
    move-object/from16 v10, p0

    if-nez p1, :cond_0

    .line 909
    const-string v0, "network location get null, unexpected result"

    invoke-virtual {v10, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 910
    return-void

    .line 913
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    .line 914
    .local v11, "latitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    .line 915
    .local v13, "longitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    .line 916
    .local v7, "altitude":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 917
    .local v15, "accuracy":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v9

    .line 918
    .local v9, "verticalAccuracy":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    .line 919
    .local v5, "time":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update all LocationInfo with  time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accuracy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " verticalAccuracy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 926
    new-instance v16, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v17, v5

    .end local v5    # "time":J
    .local v17, "time":J
    move-wide v5, v11

    move-wide/from16 v19, v7

    .end local v7    # "altitude":D
    .local v19, "altitude":D
    move-wide v7, v13

    move-wide/from16 v21, v11

    move v11, v9

    .end local v9    # "verticalAccuracy":F
    .local v11, "verticalAccuracy":F
    .local v21, "latitude":D
    move v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 927
    .local v0, "locationinfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    move-wide/from16 v1, v19

    .end local v19    # "altitude":D
    .local v1, "altitude":D
    iput-wide v1, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 928
    iput v11, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 929
    move-wide/from16 v3, v17

    .end local v17    # "time":J
    .local v3, "time":J
    iput-wide v3, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    .line 930
    invoke-direct {v10, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->updateLocationInfoQueue(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 932
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->pollLocationInfo()V

    .line 933
    iget-object v5, v10, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 934
    return-void
.end method

.method private handleResponseSetLocationEnabled(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 560
    const-string v0, "ImsLocationHandler"

    if-nez p1, :cond_0

    .line 561
    const-string v1, "ResponseSetLocationEnabled no ar"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 565
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseSetLocationEnabled exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mRetryCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 569
    const/16 v0, 0xbc1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 571
    iget v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    goto :goto_0

    .line 573
    :cond_1
    iput v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    goto :goto_0

    .line 577
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseSetLocationEnabled mLastLocationSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 580
    iput v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRetryCount:I

    .line 582
    :goto_0
    return-void
.end method

.method private handleRetryLocationRequest(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 752
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current PendingLocationRequest size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    const-string v1, "Network not available, ignore EVENT_RETRY_GET_LOCATION_REQUEST."

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 755
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 759
    :goto_1
    monitor-exit v0

    .line 760
    return-void

    .line 759
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCtaNotAllow()Z
    .locals 6

    .line 1672
    const/4 v0, 0x0

    .line 1675
    .local v0, "isCtaNotAllow":Z
    const-string v1, "ro.vendor.mtk_cta_set"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1677
    .local v1, "isCtaSet":Z
    :goto_0
    const-string v4, "ro.vendor.mtk_mobile_management"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 1679
    .local v2, "isCtaSecurity":Z
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 1680
    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1681
    .local v3, "isNlpEnabled":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCtaNotAllow: isCtaSet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCtaSecurity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isNlpEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1684
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 1685
    const/4 v0, 0x1

    .line 1686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCtaNotAllow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsLocationHandler"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_2
    return v0
.end method

.method private isEccInProgress()Z
    .locals 3

    .line 1631
    const/4 v0, 0x0

    .line 1632
    .local v0, "isInEcc":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_0

    .line 1633
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v0

    .line 1635
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEccInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    return v0
.end method

.method private isGetLocationAlways()Z
    .locals 6

    .line 1645
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 1646
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1647
    const-string v1, "ImsLocationHandler"

    if-nez v0, :cond_0

    .line 1648
    const-string v0, "isGetLocationAlways: Carrier Config service is NOT ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v0, 0x0

    return v0

    .line 1652
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1653
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1654
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1655
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v2, :cond_2

    .line 1656
    const-string v3, "isGetLocationAlways: SIM not ready, use default carrier config"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1660
    :cond_2
    nop

    .line 1661
    const-string v3, "mtk_carrier_wfc_get_location_always"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1662
    .local v3, "getLocationAlways":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGetLocationAlways: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    return v3
.end method

.method private isPackageInLocationSettingsWhitelist()Z
    .locals 5

    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, "result":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1473
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v2

    .line 1474
    .local v2, "whitelist":Landroid/os/PackageTagsList;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1475
    const/4 v0, 0x1

    .line 1478
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location setting whitelist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isLocationEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1480
    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .line 1721
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1722
    const/4 v0, 0x1

    return v0

    .line 1723
    :catch_0
    move-exception v1

    .line 1724
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-FWK permission apk not found, treat it as granted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    return v0
.end method

.method private isSimAbsentForAllSlot()Z
    .locals 5

    .line 1786
    const/4 v0, 0x1

    .line 1787
    .local v0, "simCnt":I
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 1788
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 1790
    :cond_0
    const/4 v1, 0x1

    .line 1791
    .local v1, "isAllAbsent":Z
    const/4 v2, 0x0

    .local v2, "slotId":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1792
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v3

    .line 1793
    .local v3, "state":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1794
    const/4 v1, 0x0

    .line 1795
    goto :goto_1

    .line 1791
    .end local v3    # "state":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1798
    .end local v2    # "slotId":I
    :cond_2
    :goto_1
    return v1
.end method

.method private loadProxyNameFromCarrierConfig()Ljava/lang/String;
    .locals 6

    .line 1692
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    .line 1693
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1694
    const-string v1, ""

    if-nez v0, :cond_0

    .line 1695
    const-string v0, "loadProxyNameFromCarrierConfig: Carrier Config service is NOT ready"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1696
    return-object v1

    .line 1699
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1700
    .local v0, "ddSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1701
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1702
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v2, :cond_2

    .line 1703
    const-string v3, "SIM not ready, use default carrier config"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1704
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1707
    :cond_2
    const-string v3, "gps.nfw_proxy_apps"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1708
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps.nfw_proxy_apps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1709
    if-eqz v3, :cond_3

    .line 1710
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1712
    .local v1, "strings":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    return-object v4

    .line 1714
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_3
    const-string v4, "Cannot get location proxy APP package name"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1715
    return-object v1
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1803
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1804
    return-object p1

    .line 1806
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1807
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 1808
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1811
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1812
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1814
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 585
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 620
    const-string v0, "UNKNOWN"

    return-object v0

    .line 604
    :sswitch_0
    const-string v0, "RESPONSE_SET_LOCATION_ENABLED"

    return-object v0

    .line 602
    :sswitch_1
    const-string v0, "RESPONSE_SET_LOCATION_INFO"

    return-object v0

    .line 614
    :sswitch_2
    const-string v0, "EVENT_LOCATION_PROVIDERS_CHANGED"

    return-object v0

    .line 618
    :sswitch_3
    const-string v0, "EVENT_RETRY_NETWORK_LOCATION_REQUEST"

    return-object v0

    .line 616
    :sswitch_4
    const-string v0, "EVENT_LOCATION_CACHE"

    return-object v0

    .line 606
    :sswitch_5
    const-string v0, "EVENT_REQUEST_NETWORK_LOCATION"

    return-object v0

    .line 612
    :sswitch_6
    const-string v0, "EVENT_LOCATION_MODE_CHANGED"

    return-object v0

    .line 610
    :sswitch_7
    const-string v0, "EVENT_ALL_RETRY_GET_LOCATION_REQUST"

    return-object v0

    .line 608
    :sswitch_8
    const-string v0, "EVENT_RETRY_GET_LOCATION_REQUEST"

    return-object v0

    .line 600
    :sswitch_9
    const-string v0, "EVENT_DIALING_E911"

    return-object v0

    .line 594
    :sswitch_a
    const-string v0, "EVENT_SET_COUNTRY_CODE"

    return-object v0

    .line 592
    :sswitch_b
    const-string v0, "EVENT_SET_LOCATION_INFO"

    return-object v0

    .line 598
    :sswitch_c
    const-string v0, "EVENT_HANDLE_LAST_KNOWN_LOCATION_RESPONSE"

    return-object v0

    .line 590
    :sswitch_d
    const-string v0, "EVENT_HANDLE_NETWORK_LOCATION_RESPONSE"

    return-object v0

    .line 596
    :sswitch_e
    const-string v0, "EVENT_GET_LAST_KNOWN_LOCATION"

    return-object v0

    .line 588
    :sswitch_f
    const-string v0, "EVENT_GET_LOCATION_REQUEST"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xbb8 -> :sswitch_f
        0xbb9 -> :sswitch_e
        0xbba -> :sswitch_d
        0xbbb -> :sswitch_c
        0xbbc -> :sswitch_b
        0xbbd -> :sswitch_a
        0xbbe -> :sswitch_9
        0xbbf -> :sswitch_8
        0xbc0 -> :sswitch_7
        0xbc1 -> :sswitch_6
        0xbc2 -> :sswitch_5
        0xbc3 -> :sswitch_4
        0xbc4 -> :sswitch_3
        0xbc5 -> :sswitch_2
        0xc1c -> :sswitch_1
        0xc1d -> :sswitch_0
    .end sparse-switch
.end method

.method private pollLocationInfo()V
    .locals 5

    .line 973
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "ImsLocationHandler"

    if-eqz v0, :cond_0

    .line 974
    const-string v0, "No GeoLocation task"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 979
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 980
    .local v0, "LocationInfoQueueCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;>;"
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 983
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    goto :goto_0

    .line 996
    :catch_0
    move-exception v2

    .line 997
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pollLocationInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 937
    const-string v0, "Network"

    iput-object v0, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 938
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->requestLocationFromNetworkLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 940
    const-string v0, "requestLocationFromNetworkLocation failed"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 942
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 944
    const/16 v0, 0xbc4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->removeMessages(I)V

    .line 946
    sget v2, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    .line 948
    :cond_0
    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    if-lez v2, :cond_1

    .line 949
    const-string v2, "requestLocationFromNetworkLocation retry."

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 950
    nop

    .line 951
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 950
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 954
    :cond_1
    const-string v0, "requestLocationFromNetworkLocation retry fail, skip."

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 956
    sget v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    .line 959
    :cond_2
    :goto_0
    const/16 v0, 0xbb9

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 961
    sget v2, Lcom/mediatek/wfo/impl/ImsLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    .line 963
    .local v2, "timeout":I
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    if-eqz v3, :cond_3

    .line 964
    sget v3, Lcom/mediatek/wfo/impl/ImsLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    const-string v5, "mtk_carrier_wfc_location_response_timeout"

    invoke-direct {p0, v5, v3, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getIntCarrierConfig(Ljava/lang/String;II)I

    move-result v2

    .line 967
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add delayed message: EVENT_GET_LAST_KNOWN_LOCATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v3, v2

    invoke-virtual {p0, v0, v3, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 970
    .end local v2    # "timeout":I
    :cond_4
    return-void
.end method

.method private registerDefaultNetwork()V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 782
    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$2;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler$2;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 796
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 1610
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1612
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1613
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1614
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1615
    const-string v1, "com.mediatek.intent.action.LOCATION_HANDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1617
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1619
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1620
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 1624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 1625
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRequestGeoLocation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1628
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removePackageInLocationSettingsWhitelist()V
    .locals 10

    .line 1444
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "location"

    const-string v2, "ignore_settings_allowlist"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1448
    .local v4, "whitelist":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1449
    .local v5, "index":I
    const-string v6, ""

    .line 1450
    .local v6, "outStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_1

    .line 1451
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1452
    if-eq v5, v8, :cond_0

    .line 1453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1455
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1456
    if-eq v5, v8, :cond_1

    .line 1457
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1462
    :cond_1
    :goto_0
    if-eq v5, v8, :cond_2

    .line 1463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove WFC in location setting whitelist:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1464
    const/4 v3, 0x0

    invoke-static {v1, v2, v6, v3}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1467
    :cond_2
    return-void
.end method

.method private requestLocationFromNetworkLocation()Z
    .locals 11

    .line 1360
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "ImsLocationHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1361
    const-string v0, "requestLocationFromNetworkLocation failed: empty locationManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return v2

    .line 1366
    :cond_0
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1367
    const-string v0, "requestLocationFromNetworkLocation failed: NETWORK_PROVIDER not ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return v2

    .line 1372
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1373
    const-string v0, "requestLocationFromNetworkLocation failed: CTA not allow"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return v2

    .line 1377
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->checkLocationProxyAppPermission()Z

    move-result v0

    .line 1378
    .local v0, "isProxyAppPermissionGranted":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isEccInProgress()Z

    move-result v3

    .line 1379
    .local v3, "isEcc":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isGetLocationAlways()Z

    move-result v4

    .line 1380
    .local v4, "isGetLocAlways":Z
    const/4 v5, 0x1

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v6, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v6, v5

    .line 1381
    .local v6, "mustGetLocation":Z
    :goto_1
    if-eqz v6, :cond_5

    .line 1383
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isPackageInLocationSettingsWhitelist()Z

    .line 1385
    :cond_5
    if-nez v6, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    .line 1407
    :cond_6
    const-string v5, "requestLocationFromNetworkLocation failed: is NOT in ECC & non-framework location proxy app is NOT granted"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    return v2

    .line 1386
    :cond_7
    :goto_2
    iget-boolean v7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    if-nez v7, :cond_a

    .line 1387
    const-string v7, "network"

    .line 1388
    .local v7, "method":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 1389
    const-string v7, "fused"

    .line 1391
    :cond_8
    sget v8, Lcom/mediatek/wfo/impl/ImsLocationHandler;->NETWORK_LOCATION_UPDATE_TIME:I

    int-to-long v8, v8

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10, v2}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v2

    .line 1394
    .local v2, "request":Landroid/location/LocationRequest;
    invoke-virtual {v2, v5}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 1395
    if-eqz v3, :cond_9

    .line 1396
    const/16 v8, 0x64

    invoke-virtual {v2, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 1398
    :cond_9
    invoke-virtual {v2, v6}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    .line 1399
    iget-object v8, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    iget-object v9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;

    .line 1400
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    .line 1399
    invoke-virtual {v8, v2, v9, v10}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1401
    iput-boolean v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationRequestRegistered:Z

    .line 1402
    iput-boolean v6, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mIgnoreLocaitonSetting:Z

    .line 1403
    const-string v8, "requestLocationFromNetworkLocation: success"

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    .end local v2    # "request":Landroid/location/LocationRequest;
    .end local v7    # "method":Ljava/lang/String;
    :cond_a
    return v5
.end method

.method private saveLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 14
    .param p1, "location"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveLocationCache, location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1241
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1243
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_accountid"

    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1244
    const-string v3, "key_broadcastflag"

    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1246
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    double-to-float v3, v3

    const-string v4, "key_latitude"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1247
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    double-to-float v3, v3

    const-string v4, "key_longitude"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1248
    const-string v3, "key_accuracy"

    iget v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1250
    const-string v3, "key_method"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1251
    const-string v3, "key_city"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1252
    const-string v3, "key_state"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1253
    const-string v3, "key_zip"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1254
    const-string v3, "key_countrycode"

    iget-object v4, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1256
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1257
    const-string v3, "Failed to commit saveLocationCache"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_0
    new-instance v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v13}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1261
    .local v1, "tmplocation":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1262
    return-void
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 11
    .param p1, "iso"    # Ljava/lang/String;

    .line 1604
    new-instance v10, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1605
    .local v0, "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iput-object p1, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1606
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1607
    return-void
.end method

.method private setLocationCacheEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 1220
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1221
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1223
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_ocation_cache"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set location cache enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1226
    const-string v2, "Failed to commit location cache"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_0
    return-void
.end method

.method private setLocationEnabled()V
    .locals 5

    .line 1497
    const/16 v0, 0xc1d

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1499
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationEnabled(): last location setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new location setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1503
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v2

    .line 1504
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    .line 1503
    :goto_0
    const-string v4, "locenable"

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1505
    return-void
.end method

.method private setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 25
    .param p1, "info"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1097
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1098
    const-string v2, "Unknown"

    iput-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 1101
    :cond_0
    iget-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 1102
    const-string v4, "HK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1103
    :cond_2
    iget-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 1104
    :cond_3
    iget-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1105
    invoke-static {v2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSimCountryCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 1108
    :cond_4
    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 1110
    iget-object v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 1112
    :cond_5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocationInfo info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPlmnCountryCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mConfidence:I

    .line 1115
    .local v2, "destConf":I
    if-nez v2, :cond_7

    .line 1116
    iget v3, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I

    if-eqz v3, :cond_6

    .line 1117
    iget v2, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mConfidenceLevel:I

    goto :goto_1

    .line 1119
    :cond_6
    const/16 v3, 0x5a

    iget v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    const-string v5, "mtk_carrier_wfc_get_confidence_level"

    invoke-direct {v0, v5, v3, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getIntCarrierConfigEx(Ljava/lang/String;II)I

    move-result v2

    .line 1123
    :cond_7
    :goto_1
    iget v3, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    const/high16 v4, 0x42880000    # 68.0f

    int-to-float v5, v2

    invoke-direct {v0, v3, v4, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->adjustAccuracyForConfidence(FFF)F

    move-result v3

    .line 1124
    .local v3, "destAccuracy":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setGeoLocation new accuracy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new confidence:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1126
    iput v3, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 1128
    iget v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    iput v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 1129
    iget v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    iput v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 1131
    const/16 v4, 0xc1c

    invoke-virtual {v0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .local v4, "result":Landroid/os/Message;
    move-object/from16 v22, v4

    .line 1132
    iget v5, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    invoke-direct {v0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMwiRil(I)Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    .line 1133
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 1134
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 1135
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 1136
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    iget v10, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 1137
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    iget-object v12, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    iget-object v13, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    iget-object v14, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    iget-object v15, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1143
    invoke-static {}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getUeWlanMacAddr()Ljava/lang/String;

    move-result-object v16

    .line 1144
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v2    # "destConf":I
    .end local v3    # "destAccuracy":F
    .local v23, "destConf":I
    .local v24, "destAccuracy":F
    iget-wide v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 1145
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v18

    iget v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 1146
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    iget v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 1147
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v20

    iget v2, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 1148
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    .line 1132
    invoke-virtual/range {v5 .. v22}, Lcom/mediatek/wfo/ril/MwiRIL;->setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1150
    return-void
.end method

.method private updateCountryCodeForVoWifiOnly()V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 854
    :cond_1
    const-string v0, "ImsLocationHandler"

    const-string v1, "updateCountryCodeForVoWifiOnly"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/16 v0, 0xbbd

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getSimCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 856
    return-void
.end method

.method private updateLocationForNoSimEcc()V
    .locals 12

    .line 1772
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isSimAbsentForAllSlot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1773
    return-void

    .line 1775
    :cond_0
    const-string v0, "ImsLocationHandler"

    const-string v1, "updateLocationForNoSimEcc"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 1777
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMainCapabilityPhoneId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1778
    .local v0, "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    nop

    .line 1779
    const-string v1, "Network"

    iput-object v1, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 1781
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    const/16 v1, 0xbb9

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1783
    return-void
.end method

.method private updateLocationInfoQueue(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V
    .locals 7
    .param p1, "location"    # Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v0, "duplicatedInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;>;"
    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 882
    .local v2, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    iput-wide v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 883
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    iput-wide v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 884
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    iput-wide v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 885
    iget v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    iput v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 888
    iget v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    iput v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 889
    iget v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    iput v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 890
    iget v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    iput v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 891
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    iput-wide v3, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    .line 892
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 894
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 895
    .local v4, "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iget v5, v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    iget v6, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    if-ne v5, v6, :cond_0

    iget v5, v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    iget v6, v2, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    if-ne v5, v6, :cond_0

    .line 897
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    .end local v4    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :cond_0
    goto :goto_1

    .line 900
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 901
    .restart local v4    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iget-object v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 902
    .end local v4    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    goto :goto_2

    .line 903
    :cond_2
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .end local v2    # "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    goto :goto_0

    .line 905
    :cond_3
    return-void
.end method

.method private utGeoLocationRequest()V
    .locals 11

    .line 1484
    new-instance v10, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-wide v5, 0x406a800000000000L    # 212.0

    const-wide v7, 0x4062600000000000L    # 147.0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1486
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1487
    return-void
.end method

.method private utNetworkLocationRequest()V
    .locals 11

    .line 1490
    new-instance v10, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 1492
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 1493
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 625
    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 423
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 424
    iget v0, v12, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v13, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 514
    :sswitch_0
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 515
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleResponseSetLocationEnabled(Landroid/os/AsyncResult;)V

    .line 516
    goto/16 :goto_2

    .line 512
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    goto/16 :goto_2

    .line 539
    :sswitch_2
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 540
    .local v0, "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->requestLocationFromNetworkLocation()Z

    move-result v2

    if-nez v2, :cond_c

    .line 541
    iget v2, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    if-lez v2, :cond_0

    .line 542
    const-string v2, "EVENT_RETRY_NETWORK_LOCATION_REQUEST retry."

    invoke-virtual {v11, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 543
    nop

    .line 544
    const/16 v2, 0xbc4

    invoke-virtual {v11, v2, v1, v1, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 543
    const-wide/16 v2, 0xbb8

    invoke-virtual {v11, v1, v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 547
    :cond_0
    const-string v1, "EVENT_RETRY_NETWORK_LOCATION_REQUEST retry fail, skip."

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 548
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 549
    sget v1, Lcom/mediatek/wfo/impl/ImsLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkLocationRetry:I

    goto/16 :goto_2

    .line 518
    .end local v0    # "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :sswitch_3
    iget v0, v12, Landroid/os/Message;->arg1:I

    .line 519
    .local v0, "cacheEnable":I
    const-string v2, "ImsLocationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 521
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 522
    .local v14, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 523
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    if-ne v0, v13, :cond_1

    .line 524
    new-instance v10, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v13, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    invoke-direct {v11, v13}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 525
    const/4 v1, 0x1

    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationCacheEnable(Z)V

    .line 526
    new-instance v13, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/16 v4, 0x8

    const/4 v10, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    .line 528
    .local v1, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 529
    .end local v1    # "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    goto/16 :goto_2

    .line 530
    :cond_1
    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationCacheEnable(Z)V

    .line 531
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_2

    .line 532
    const-string v1, "Failed to commit location cache"

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 534
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->cancelNetworkLocationRequest()V

    .line 536
    goto/16 :goto_2

    .line 472
    .end local v0    # "cacheEnable":I
    .end local v14    # "sp":Landroid/content/SharedPreferences;
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    :sswitch_4
    iget-object v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    .line 474
    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLastLocationSetting:Z

    if-eq v0, v1, :cond_3

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationEnabled()V

    goto/16 :goto_2

    .line 477
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Same location setting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 479
    goto/16 :goto_2

    .line 440
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleAllRetryLocationRequest()V

    .line 441
    goto/16 :goto_2

    .line 437
    :sswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleRetryLocationRequest(Landroid/os/Message;)V

    .line 438
    goto/16 :goto_2

    .line 484
    :sswitch_7
    new-instance v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getMainCapabilityPhoneId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 486
    goto/16 :goto_2

    .line 454
    :sswitch_8
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 455
    .local v0, "iso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 456
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 458
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :cond_4
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 460
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    if-eqz v1, :cond_5

    goto :goto_0

    .line 465
    :cond_5
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 462
    :cond_6
    :goto_0
    new-instance v13, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    invoke-direct {v11, v13}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 468
    :cond_7
    :goto_1
    iput-object v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    goto/16 :goto_2

    .line 449
    .end local v0    # "iso":Ljava/lang/String;
    :sswitch_9
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 450
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    .line 451
    goto/16 :goto_2

    .line 444
    .end local v0    # "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :sswitch_a
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 445
    .local v0, "location":Landroid/location/Location;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleNetworkLocationUpdate(Landroid/location/Location;)V

    .line 446
    goto/16 :goto_2

    .line 488
    .end local v0    # "location":Landroid/location/Location;
    :sswitch_b
    iget-object v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mLocationTimeout:Z

    .line 490
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 493
    .local v0, "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iget v13, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    .line 494
    .local v13, "phoneId":I
    iget v14, v0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 496
    .local v14, "flag":I
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->getLastKnownLocation(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Z

    move-result v15

    .line 498
    .local v15, "getLocationSuccess":Z
    if-eqz v15, :cond_8

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->cancelNetworkLocationRequest()V

    .line 504
    :cond_8
    if-nez v15, :cond_9

    iget v1, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRequestTimeOutRetry:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mRequestTimeOutRetry:I

    if-lez v1, :cond_9

    .line 505
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->cancelNetworkLocationRequest()V

    .line 506
    new-instance v10, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move v3, v13

    move v5, v14

    move-object/from16 v17, v0

    move-object v0, v10

    .end local v0    # "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .local v17, "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    goto :goto_2

    .line 504
    .end local v17    # "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .restart local v0    # "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :cond_9
    move-object/from16 v17, v0

    .end local v0    # "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .restart local v17    # "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    goto :goto_2

    .line 490
    .end local v13    # "phoneId":I
    .end local v14    # "flag":I
    .end local v15    # "getLocationSuccess":Z
    .end local v17    # "info":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 426
    :sswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 427
    return-void

    .line 429
    :cond_a
    iget-object v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, v11, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mNetworkAvailable:Z

    if-nez v0, :cond_b

    .line 430
    const-string v0, "ImsLocationHandler"

    const-string v1, "Wi-Fi isn\'t connected and network unavailable."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->addRetryLocationRequest(Landroid/os/Message;)V

    .line 432
    return-void

    .line 434
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 435
    nop

    .line 557
    :cond_c
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xbb8 -> :sswitch_c
        0xbb9 -> :sswitch_b
        0xbba -> :sswitch_a
        0xbbb -> :sswitch_a
        0xbbc -> :sswitch_9
        0xbbd -> :sswitch_8
        0xbbe -> :sswitch_7
        0xbbf -> :sswitch_6
        0xbc0 -> :sswitch_5
        0xbc1 -> :sswitch_4
        0xbc2 -> :sswitch_7
        0xbc3 -> :sswitch_3
        0xbc4 -> :sswitch_2
        0xbc5 -> :sswitch_7
        0xc1c -> :sswitch_1
        0xc1d -> :sswitch_0
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 696
    sget-boolean v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 697
    :cond_0
    const-string v0, "ImsLocationHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1
    return-void
.end method

.method protected notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 5
    .param p1, "activeModemCount"    # I
    .param p2, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 674
    iget v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    .line 676
    .local v0, "prevActiveModemCount":I
    iput-object p2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 678
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

    const-string v2, ", mSimCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    if-ne v0, p1, :cond_0

    return-void

    .line 683
    :cond_0
    iput p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mSimCount:I

    .line 685
    if-le v0, p1, :cond_1

    goto :goto_1

    .line 688
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 689
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v2, v2, v1

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRequestGeoLocation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
