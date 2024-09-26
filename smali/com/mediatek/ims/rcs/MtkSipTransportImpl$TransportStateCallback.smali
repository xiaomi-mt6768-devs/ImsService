.class public Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;
.super Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
.source "MtkSipTransportImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransportStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 330
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-direct {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregisterInd(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 365
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$500(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 366
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationDeregistering(I)V

    .line 367
    .end local v1    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method public onDeregistered(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 351
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$500(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 352
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationDeregistered()V

    .line 353
    .end local v1    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    goto :goto_0

    .line 354
    :cond_0
    return-void
.end method

.method public onDeregistering(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 347
    return-void
.end method

.method public onRegistered(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$300(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$400(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$500(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 340
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$300(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationRegistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 341
    .end local v1    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method

.method public onRegistering(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 333
    return-void
.end method

.method public onReregistered(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 358
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$500(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 359
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$300(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo(I)Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationRegistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 360
    .end local v1    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method
