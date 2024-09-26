.class final Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ril/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderServiceDeathRecipient"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mService:I

.field final synthetic this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p2, "service"    # I

    .line 859
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    iput p2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->mService:I

    .line 861
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .line 879
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->mService:I

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$700(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->mService:I

    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 881
    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->mService:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 880
    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessage(Landroid/os/Message;)Z

    .line 882
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->unlinkToDeath()V

    .line 883
    return-void
.end method

.method public linkToDeath(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 864
    if-eqz p1, :cond_0

    .line 865
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 866
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->mService:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 868
    :cond_0
    return-void
.end method

.method public declared-synchronized unlinkToDeath()V
    .locals 2

    monitor-enter p0

    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 872
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    .end local p0    # "this":Lcom/mediatek/ims/ril/ImsRILAdapter$BinderServiceDeathRecipient;
    :cond_0
    monitor-exit p0

    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
