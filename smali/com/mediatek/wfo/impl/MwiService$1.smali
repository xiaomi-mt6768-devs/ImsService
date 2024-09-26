.class Lcom/mediatek/wfo/impl/MwiService$1;
.super Landroid/content/BroadcastReceiver;
.source "MwiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/MwiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/MwiService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/MwiService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/MwiService;

    .line 133
    iput-object p1, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 136
    const-string v0, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 139
    .local v0, "activeModemCount":I
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "processName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMultiSimConfigChanged ACTION_MULTI_SIM_CONFIG_CHANGED,mSimCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmSimCount(Lcom/mediatek/wfo/impl/MwiService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", activeModemCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MWIS"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmSimCount(Lcom/mediatek/wfo/impl/MwiService;)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 145
    const-string v2, "com.mediatek.ims"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmMwiRil(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v2

    array-length v2, v2

    .line 149
    .local v2, "prevActiveModemCount":I
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v3, v0}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fputmSimCount(Lcom/mediatek/wfo/impl/MwiService;I)V

    .line 151
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmMwiRil(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-static {v3, v4}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fputmMwiRil(Lcom/mediatek/wfo/impl/MwiService;[Lcom/mediatek/wfo/ril/MwiRIL;)V

    .line 153
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 154
    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmMwiRil(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    new-instance v5, Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v6}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmContext(Lcom/mediatek/wfo/impl/MwiService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    iget-object v7, v7, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Lcom/mediatek/wfo/ril/MwiRIL;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    aput-object v5, v4, v3

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "i":I
    :cond_1
    invoke-static {}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$sfgetmWifiPdnHandler()Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmMwiRil(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V

    .line 157
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmWfcHandler(Lcom/mediatek/wfo/impl/MwiService;)Lcom/mediatek/wfo/impl/WfcHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmMwiRil(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V

    .line 158
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmImsLocationHandler(Lcom/mediatek/wfo/impl/MwiService;)Lcom/mediatek/wfo/impl/ImsLocationHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/MwiService;->-$$Nest$fgetmMwiRil(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V

    .line 161
    .end local v2    # "prevActiveModemCount":I
    :cond_2
    return-void
.end method
