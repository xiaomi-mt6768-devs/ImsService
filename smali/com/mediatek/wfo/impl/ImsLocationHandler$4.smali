.class Lcom/mediatek/wfo/impl/ImsLocationHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "ImsLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/ImsLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/ImsLocationHandler;

    .line 1540
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1543
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-eqz v2, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1546
    :cond_0
    iget-object v0, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1547
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1548
    const-string v0, "android.telephony.extra.NETWORK_COUNTRY"

    .line 1549
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1550
    .local v0, "lowerCaseCountryCode":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1551
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1552
    .local v3, "isoCountryCode":Ljava/lang/String;
    const-string v4, "ImsLocationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_LOCATED_PLMN_CHANGED, iso: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$misCtaNotAllow(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1554
    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/16 v5, 0xbbd

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1556
    .end local v3    # "isoCountryCode":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1557
    :cond_2
    const-string v3, "ImsLocationHandler"

    const-string v4, "iso country code is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    .end local v0    # "lowerCaseCountryCode":Ljava/lang/String;
    :goto_0
    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1560
    const-string v0, "ImsLocationHandler"

    const-string v3, "LocationManager.MODE_CHANGED_ACTION"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v0, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/16 v3, 0xbc1

    invoke-virtual {v0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 1562
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1563
    iget-object v0, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationManager(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v3, "network"

    .line 1564
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1565
    .local v3, "isNlpEnabled":Z
    iget-object v0, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationTimeoutLock(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1566
    :try_start_0
    const-string v0, "ImsLocationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocationManager.PROVIDERS_CHANGED_ACTION isNlpEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", location timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v6}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationTimeout(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationTimeout(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 1570
    iget-object v0, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationRequestRegistered(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1571
    iget-object v0, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mcancelNetworkLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    .line 1574
    :cond_5
    iget-object v0, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/16 v5, 0xbc5

    invoke-virtual {v0, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1576
    :cond_6
    monitor-exit v4

    .line 1577
    .end local v3    # "isNlpEnabled":Z
    goto/16 :goto_3

    .line 1576
    .restart local v3    # "isNlpEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1577
    .end local v3    # "isNlpEnabled":Z
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.mediatek.intent.action.LOCATION_HANDLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 1578
    const-string v0, "enable_location_handle"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1579
    .local v0, "cacheEnable":I
    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/16 v5, 0xbc3

    invoke-virtual {v4, v5, v0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1580
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "cacheEnable":I
    .end local v3    # "msg":Landroid/os/Message;
    goto/16 :goto_2

    .line 1582
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1583
    const-string v0, "phone"

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1584
    .local v0, "phoneId":I
    if-ltz v0, :cond_a

    const/4 v4, 0x2

    if-le v0, v4, :cond_9

    goto :goto_1

    .line 1587
    :cond_9
    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CARRIER_CONFIG_CHANGED phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mIgnoreLocaitonSetting:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v6}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmIgnoreLocaitonSetting(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->log(Ljava/lang/String;)V

    .line 1589
    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationRequestRegistered(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmLocationSetting(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$fgetmIgnoreLocaitonSetting(Lcom/mediatek/wfo/impl/ImsLocationHandler;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1590
    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const-string v5, "mtk_carrier_wfc_get_location_always"

    .line 1591
    invoke-static {v4, v5, v0, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mgetBooleanCarrierConfig(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;IZ)Z

    move-result v3

    .line 1592
    .local v3, "isGetLocAlways":Z
    if-eqz v3, :cond_c

    .line 1593
    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mcancelNetworkLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler;)V

    .line 1594
    iget-object v4, v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$4;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    new-instance v15, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v5, v15

    move-object v6, v4

    move v7, v0

    invoke-direct/range {v5 .. v14}, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V

    invoke-static {v4, v15}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mdispatchLocationRequest(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)V

    goto :goto_3

    .line 1585
    .end local v3    # "isGetLocAlways":Z
    :cond_a
    :goto_1
    return-void

    .line 1582
    .end local v0    # "phoneId":I
    :cond_b
    :goto_2
    nop

    .line 1600
    :cond_c
    :goto_3
    return-void

    .line 1544
    :cond_d
    :goto_4
    return-void
.end method
