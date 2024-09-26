.class public Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication$Default;
.super Ljava/lang/Object;
.source "IMwiRadioIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/mwi/IMwiRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onLocationRequest(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onNattKeepAliveChanged(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onPdnHandover(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public onWfcPdnError(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public onWfcPdnStateChanged(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public onWifiLock(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public onWifiMonitoringThreshouldChanged(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public onWifiPdnActivate(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public onWifiPdnOOS(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public onWifiPingRequest(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public onWifiRoveout(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "indStgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method
