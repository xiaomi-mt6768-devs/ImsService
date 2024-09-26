.class public Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication$Default;
.super Ljava/lang/Object;
.source "IMtkRadioExVoiceIndication.java"

# interfaces
.implements Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;
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

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public callAdditionalInfoInd(II[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ciType"    # I
    .param p3, "info"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public cdmaCallAccepted(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/voice/CfuStatusNotification;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "cfuStatus"    # Lvendor/mediatek/hardware/mtkradioex/voice/CfuStatusNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public cipherIndication(ILvendor/mediatek/hardware/mtkradioex/voice/CipherNotification;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "cipherNotify"    # Lvendor/mediatek/hardware/mtkradioex/voice/CipherNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public confSRVCC(I[I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "callIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public crssIndication(ILvendor/mediatek/hardware/mtkradioex/voice/CrssNotification;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "crssNotify"    # Lvendor/mediatek/hardware/mtkradioex/voice/CrssNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "ecc_list_with_card"    # Ljava/lang/String;
    .param p3, "ecc_list_no_card"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "inCallNotify"    # Lvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public suppSvcNotifyEx(ILandroid/hardware/radio/network/SuppSvcNotification;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "suppSvc"    # Landroid/hardware/radio/network/SuppSvcNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method
