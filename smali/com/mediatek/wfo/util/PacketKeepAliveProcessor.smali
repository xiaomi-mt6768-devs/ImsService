.class public Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
.super Ljava/lang/Object;
.source "PacketKeepAliveProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;,
        Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;,
        Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    }
.end annotation


# static fields
.field private static final NATT_PORT:I = 0x1194

.field static final PROPERTY_ENABLE_OFFLOAD:Ljava/lang/String; = "persist.vendor.mtk_enable_keep_alive_offload"

.field static final TAG:Ljava/lang/String; = "PacketKeepAliveProcessor"


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field mKeepAlives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWifiPdnHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$mmaskString(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    .line 250
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 251
    iput-object p2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    .line 252
    iput-object p3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mContext:Landroid/content/Context;

    .line 253
    return-void
.end method

.method private getStringFromArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # [Ljava/lang/String;

    .line 283
    if-nez p1, :cond_0

    const-string v0, "null"

    return-object v0

    .line 284
    :cond_0
    const-string v0, ""

    .line 285
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private isActiveWifiNetwork(Landroid/net/Network;)Z
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 384
    const-string v0, "PacketKeepAliveProcessor"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 385
    const-string v2, "isActiveWifiNetwork: network null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return v1

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 389
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 390
    const-string v3, "isActiveWifiNetwork: network info null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return v1

    .line 393
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private isWifiOffloadEnabledFromSystemProperty()Z
    .locals 2

    .line 279
    const-string v0, "persist.vendor.mtk_enable_keep_alive_offload"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    return-object p1

    .line 426
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 427
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 431
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 432
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
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

.method private parseKeepAliveConfig([Ljava/lang/String;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    .locals 13
    .param p1, "result"    # [Ljava/lang/String;

    .line 295
    const-string v0, "PacketKeepAliveProcessor"

    if-nez p1, :cond_0

    .line 296
    const-string v1, "parseKeepAliveConfig() result is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;)V

    return-object v0

    .line 300
    :cond_0
    const/4 v1, 0x0

    .line 302
    .local v1, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    const/4 v2, 0x0

    :try_start_0
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v2

    .line 303
    .local v7, "enable":Z
    :goto_0
    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 304
    .local v8, "interval":I
    const/4 v2, 0x2

    aget-object v9, p1, v2

    .line 305
    .local v9, "srcIp":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 306
    .local v10, "srcPort":I
    const/4 v2, 0x4

    aget-object v11, p1, v2

    .line 307
    .local v11, "dstIp":Ljava/lang/String;
    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 308
    .local v12, "dstPort":I
    new-instance v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;ZILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 312
    .end local v7    # "enable":Z
    .end local v8    # "interval":I
    .end local v9    # "srcIp":Ljava/lang/String;
    .end local v10    # "srcPort":I
    .end local v11    # "dstIp":Ljava/lang/String;
    .end local v12    # "dstPort":I
    goto :goto_1

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseKeepAliveConfig() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseKeepAliveConfig() config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object v1
.end method


# virtual methods
.method findConfigInList(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    .locals 3
    .param p1, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 407
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    .line 408
    .local v1, "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->getConfig()Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findConfigInList found config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PacketKeepAliveProcessor"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-object v1

    .line 412
    .end local v1    # "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    :cond_0
    goto :goto_0

    .line 413
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleKeepAliveChanged([Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # [Ljava/lang/String;

    .line 260
    invoke-direct {p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->isWifiOffloadEnabledFromSystemProperty()Z

    move-result v0

    const-string v1, "PacketKeepAliveProcessor"

    if-nez v0, :cond_0

    .line 261
    const-string v0, "mtk_enable_keep_alive_offload is disabled by System Property."

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_0
    const-string v0, "handleKeepAliveChanged"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->parseKeepAliveConfig([Ljava/lang/String;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    move-result-object v0

    .line 267
    .local v0, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    if-nez v0, :cond_1

    .line 268
    const-string v2, "KeepAliveConfig is null, return directly"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 271
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->isEnabledAndAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->startPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->stopPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V

    .line 276
    :goto_0
    return-void
.end method

.method public notifyWifiDisconnect()V
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->stopAllPacketKeepAlive()V

    .line 257
    return-void
.end method

.method startPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 14
    .param p1, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 318
    const-string v0, "startPacketKeepAlive: finally close socket"

    const-string v1, "startPacketKeepAlive finally exception: "

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v3, "PacketKeepAliveProcessor"

    if-nez v2, :cond_0

    .line 319
    const-string v0, "ConnectivityManager is null"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNattKeepalive cannot start! Due to mKeepAlives.size() >=3, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    .line 325
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 329
    :cond_1
    new-instance v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V

    .line 330
    .local v2, "callback":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;
    iget-object v4, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v11

    .line 331
    .local v11, "network":Landroid/net/Network;
    invoke-direct {p0, v11}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->isActiveWifiNetwork(Landroid/net/Network;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 332
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    move-object v12, v4

    .line 333
    .local v12, "socket":Ljava/net/Socket;
    const/4 v4, 0x0

    .line 335
    .local v4, "isSocketClosed":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v12, v5}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 336
    new-instance v5, Ljava/net/InetSocketAddress;

    iget-object v6, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    iget v7, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcPort:I

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v12, v5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 337
    invoke-static {v12}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 338
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    const/4 v13, 0x1

    .line 342
    .end local v4    # "isSocketClosed":Z
    .local v13, "isSocketClosed":Z
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v7, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    iget-object v8, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstIp:Ljava/net/InetAddress;

    .line 344
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 342
    move-object v5, v11

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Landroid/net/ConnectivityManager;->createNattKeepalive(Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)Landroid/net/SocketKeepalive;

    move-result-object v4

    .line 345
    .local v4, "ka":Landroid/net/SocketKeepalive;
    iget v5, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->interval:I

    invoke-virtual {v4, v5}, Landroid/net/SocketKeepalive;->start(I)V

    .line 346
    new-instance v5, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    invoke-direct {v5, p0, v4, p1, v2}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Landroid/net/SocketKeepalive;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;)V

    .line 347
    .local v5, "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    iget-object v7, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 352
    .end local v4    # "ka":Landroid/net/SocketKeepalive;
    .end local v5    # "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v13, :cond_2

    .line 353
    :try_start_2
    invoke-virtual {v12}, Ljava/net/Socket;->close()V

    .line 354
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 351
    .end local v13    # "isSocketClosed":Z
    .local v4, "isSocketClosed":Z
    :catchall_0
    move-exception v5

    move v13, v4

    move-object v4, v5

    goto :goto_4

    .line 348
    :catch_2
    move-exception v5

    move v13, v4

    move-object v4, v5

    .line 349
    .local v4, "e":Ljava/io/IOException;
    .restart local v13    # "isSocketClosed":Z
    :goto_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startPacketKeepAlive exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 352
    .end local v4    # "e":Ljava/io/IOException;
    if-nez v13, :cond_2

    .line 353
    :try_start_4
    invoke-virtual {v12}, Ljava/net/Socket;->close()V

    .line 354
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 356
    :catch_3
    move-exception v0

    .line 357
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 358
    :cond_2
    :goto_2
    nop

    .line 360
    .end local v12    # "socket":Ljava/net/Socket;
    .end local v13    # "isSocketClosed":Z
    :goto_3
    nop

    .line 364
    return-void

    .line 351
    .restart local v12    # "socket":Ljava/net/Socket;
    .restart local v13    # "isSocketClosed":Z
    :catchall_1
    move-exception v4

    .line 352
    :goto_4
    if-nez v13, :cond_3

    .line 353
    :try_start_5
    invoke-virtual {v12}, Ljava/net/Socket;->close()V

    .line 354
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 356
    :catch_4
    move-exception v0

    .line 357
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 358
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    nop

    .line 359
    :goto_6
    throw v4

    .line 361
    .end local v12    # "socket":Ljava/net/Socket;
    .end local v13    # "isSocketClosed":Z
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s not a active wifi network, network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method stopAllPacketKeepAlive()V
    .locals 2

    .line 397
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "stopAllPacketKeepAlive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 399
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    .line 401
    .local v1, "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->stop()V

    .line 402
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 403
    .end local v1    # "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    goto :goto_0

    .line 404
    :cond_0
    return-void
.end method

.method stopAndRemoveKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;)V
    .locals 1
    .param p1, "kai"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    .line 417
    invoke-virtual {p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->stop()V

    .line 418
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method stopPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 367
    const-string v0, "stopPacketKeepAlive"

    const-string v1, "PacketKeepAliveProcessor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 369
    const-string v0, "ConnectivityManager is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->findConfigInList(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    move-result-object v0

    .line 373
    .local v0, "foundKai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->stopAndRemoveKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;)V

    goto :goto_0

    .line 377
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    .line 378
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 381
    :goto_0
    return-void
.end method
