.class Lcom/mediatek/wfo/impl/ImsLocationHandler$3;
.super Ljava/lang/Object;
.source "ImsLocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/ImsLocationHandler;->pollLocationInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

.field final synthetic val$LocationInfoQueueCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/ImsLocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 983
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iput-object p2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;->val$LocationInfoQueueCopy:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 985
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;->val$LocationInfoQueueCopy:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pollLocationInfo: queue size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;->val$LocationInfoQueueCopy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;->val$LocationInfoQueueCopy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    .line 988
    .local v1, "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mgetGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/ImsLocationHandler;Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;

    move-result-object v2

    .line 989
    .local v2, "res":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    if-eqz v2, :cond_0

    .line 990
    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    const/16 v4, 0xbbc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5, v2}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 992
    .end local v1    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    .end local v2    # "res":Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
    :cond_0
    goto :goto_0

    .line 994
    :cond_1
    return-void
.end method
