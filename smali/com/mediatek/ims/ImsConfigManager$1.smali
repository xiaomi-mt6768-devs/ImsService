.class Lcom/mediatek/ims/ImsConfigManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsConfigManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsConfigManager;

    .line 106
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    const-string v0, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "OM"

    const-string v2, "persist.vendor.operator.optr"

    const-string v3, "OP236"

    const/16 v4, 0x3eb

    const/4 v5, -0x1

    const-string v6, "ImsConfigManager"

    if-eqz v0, :cond_2

    .line 109
    const-string v0, "phone_id"

    const/4 v7, 0x0

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 110
    .local v0, "phoneId":I
    const-string v7, "item"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 111
    .local v5, "itemId":I
    if-gez v0, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_IMS_CONFIG_CHANGED phoneId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", itemId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-ne v4, v5, :cond_6

    .line 116
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP236:Lcom/mediatek/ims/OperatorUtils$OPID;

    .line 117
    invoke-static {v1, v0}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    :cond_1
    const-string v1, "value"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/mediatek/ims/ImsConfigManager;->access$000(Lcom/mediatek/ims/ImsConfigManager;II)V

    goto :goto_0

    .line 121
    .end local v0    # "phoneId":I
    .end local v1    # "value":Ljava/lang/String;
    .end local v5    # "itemId":I
    :cond_2
    const-string v0, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    const-string v0, "phone"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .restart local v0    # "phoneId":I
    if-gez v0, :cond_3

    return-void

    .line 124
    :cond_3
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/mediatek/ims/OperatorUtils$OPID;->OP236:Lcom/mediatek/ims/OperatorUtils$OPID;

    .line 125
    invoke-static {v1, v0}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v1

    .line 128
    .local v1, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :try_start_0
    invoke-interface {v1, v4}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getProvisionedValue(I)I

    move-result v2

    .line 130
    .local v2, "value":I
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-static {v3}, Lcom/mediatek/ims/ImsConfigManager;->access$100(Lcom/mediatek/ims/ImsConfigManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v3

    .line 131
    .local v3, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v4

    .line 132
    .local v4, "volteEnabledByPlatform":Z
    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    .line 133
    const-string v5, "ignore setVdpProvision for internal test."

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 136
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-static {v5, v0, v2}, Lcom/mediatek/ims/ImsConfigManager;->access$000(Lcom/mediatek/ims/ImsConfigManager;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v2    # "value":I
    .end local v3    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v4    # "volteEnabledByPlatform":Z
    goto :goto_1

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvisionedValue fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    .end local v0    # "phoneId":I
    .end local v1    # "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_0
    nop

    .line 142
    :cond_7
    :goto_1
    return-void
.end method
