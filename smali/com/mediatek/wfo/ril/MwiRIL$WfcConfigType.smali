.class public final enum Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
.super Ljava/lang/Enum;
.source "MwiRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/ril/MwiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WfcConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

.field public static final enum WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

.field public static final enum WFC_SETTING_PACKET_FORWARD:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

.field public static final enum WFC_SETTING_WIFI_APM_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

.field public static final enum WFC_SETTING_WIFI_CONN_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

.field public static final enum WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;


# direct methods
.method private static synthetic $values()[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
    .locals 5

    .line 334
    sget-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    sget-object v1, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_CONN_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    sget-object v3, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_PACKET_FORWARD:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    sget-object v4, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_APM_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 335
    new-instance v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const-string v1, "WFC_SETTING_WIFI_UEMAC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_UEMAC:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 336
    new-instance v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const-string v1, "WFC_SETTING_LOCATION_SETTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 337
    new-instance v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const-string v1, "WFC_SETTING_WIFI_CONN_STATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_CONN_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 338
    new-instance v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const-string v1, "WFC_SETTING_PACKET_FORWARD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_PACKET_FORWARD:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 339
    new-instance v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    const-string v1, "WFC_SETTING_WIFI_APM_STATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_WIFI_APM_STATE:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    .line 334
    invoke-static {}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->$values()[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->$VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 334
    const-class v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;
    .locals 1

    .line 334
    sget-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->$VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v0}, [Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    return-object v0
.end method
