.class public Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService$Default;
.super Ljava/lang/Object;
.source "IMtkPresenceService.java"

# interfaces
.implements Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/aidl/IMtkPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactListCap(Ljava/util/List;ILcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;)V
    .locals 0
    .param p2, "userData"    # I
    .param p3, "cb"    # Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I",
            "Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public publishMyCap(Ljava/lang/String;ILcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;)V
    .locals 0
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "userData"    # I
    .param p3, "cb"    # Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public setRcsCapabilityExchangeAvailable(ZLcom/mediatek/ims/rcs/aidl/IMtkCapabilityExchangeEventListener;)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "listener"    # Lcom/mediatek/ims/rcs/aidl/IMtkCapabilityExchangeEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
