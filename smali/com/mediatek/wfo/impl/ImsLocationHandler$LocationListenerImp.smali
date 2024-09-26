.class Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;
.super Ljava/lang/Object;
.source "ImsLocationHandler.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/ImsLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;


# direct methods
.method private constructor <init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .line 294
    const-string v0, "ImsLocationHandler"

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 297
    .local v0, "newNlpTime":J
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLocationChanged newNlpTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "isCache":Z
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationInfoQueue(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 300
    .local v4, "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iget-object v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLocationChanged locationInfo time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 301
    iget-wide v5, v4, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    cmp-long v5, v5, v0

    if-nez v5, :cond_0

    .line 302
    const/4 v2, 0x1

    .line 303
    iget-object v5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLocationChanged isCache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 305
    .end local v4    # "locationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :cond_0
    goto :goto_0

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mcancelNetworkLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    .line 308
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationTimeoutLock(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 309
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fputmLocationTimeout(Lcom/mediatek/wfo/impl/ImsLocationHandler;Z)V

    .line 310
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const-string v4, "removeMessages: EVENT_GET_LAST_KNOWN_LOCATION"

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/16 v4, 0xbb9

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->removeMessages(I)V

    .line 315
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/16 v4, 0xbba

    invoke-virtual {v3, v4, v5, v5, p1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 316
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 319
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$sfgetMAX_REQUEST_TIME_OUT_RETRY()I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fputmRequestTimeOutRetry(Lcom/mediatek/wfo/impl/ImsLocationHandler;I)V

    .line 321
    return-void

    .line 310
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 335
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 336
    return-void
.end method
