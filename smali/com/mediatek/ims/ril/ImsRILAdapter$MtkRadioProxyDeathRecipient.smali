.class final Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ril/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MtkRadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 843
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 847
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const-string v1, "MtkRadioProxyDeathRecipient, serviceDied"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$MtkRadioProxyDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 851
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 850
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessage(Landroid/os/Message;)Z

    .line 852
    return-void
.end method
