.class Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;
.super Ljava/lang/Object;
.source "MtkRcsCapabilityExchangeImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 379
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 381
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$800(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$802(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;I)I

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    const-string v1, "onServiceConnected entry"

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$500(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    const-string v1, "onServiceConnected already destoryed"

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 385
    return-void

    .line 389
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/mediatek/ims/rcs/aidl/IMtkCoreServiceWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcs/aidl/IMtkCoreServiceWrapper;

    move-result-object v0

    .line 390
    .local v0, "binder":Lcom/mediatek/ims/rcs/aidl/IMtkCoreServiceWrapper;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$1000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcs/aidl/IMtkCoreServiceWrapper;->getPresenceServiceBinder(I)Landroid/os/IBinder;

    move-result-object v1

    .line 391
    .local v1, "presenceServiceImpl":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$1102(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;)Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    nop

    .line 398
    .end local v0    # "binder":Lcom/mediatek/ims/rcs/aidl/IMtkCoreServiceWrapper;
    .end local v1    # "presenceServiceImpl":Landroid/os/IBinder;
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$1100(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$1100(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 400
    invoke-static {v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$1200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Lcom/mediatek/ims/rcs/aidl/IMtkCapabilityExchangeEventListener;

    move-result-object v1

    .line 399
    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;->setRcsCapabilityExchangeAvailable(ZLcom/mediatek/ims/rcs/aidl/IMtkCapabilityExchangeEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 404
    :cond_2
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 405
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 392
    :catch_1
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPresenceService RemoteException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 408
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$1102(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;)Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;

    .line 410
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$1300(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V

    .line 411
    return-void
.end method
