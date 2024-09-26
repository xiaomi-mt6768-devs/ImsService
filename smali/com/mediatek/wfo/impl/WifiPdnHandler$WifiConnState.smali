.class final enum Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;
.super Ljava/lang/Enum;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WifiConnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

.field public static final enum DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

.field public static final enum DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

.field public static final enum VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;


# direct methods
.method private static synthetic $values()[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;
    .locals 3

    .line 151
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    sget-object v1, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    filled-new-array {v0, v1, v2}, [Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 152
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 153
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    const-string v1, "VALIDATED_CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 154
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    const-string v1, "DEFAULT_NETWORK_VALIDATED_CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 151
    invoke-static {}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->$values()[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    move-result-object v0

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->$VALUES:[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 151
    const-class v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;
    .locals 1

    .line 151
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->$VALUES:[Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    invoke-virtual {v0}, [Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    return-object v0
.end method
