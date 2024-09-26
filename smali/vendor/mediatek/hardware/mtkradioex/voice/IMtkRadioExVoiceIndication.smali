.class public interface abstract Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;
.super Ljava/lang/Object;
.source "IMtkRadioExVoiceIndication.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication$Stub;,
        Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "6fb707faf11116647ab6b8daa3ee47c2662abaa2"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 422
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "vendor$mediatek$hardware$mtkradioex$voice$IMtkRadioExVoiceIndication"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/mediatek/hardware/mtkradioex/voice/IMtkRadioExVoiceIndication;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract callAdditionalInfoInd(II[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cdmaCallAccepted(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cfuStatusNotify(ILvendor/mediatek/hardware/mtkradioex/voice/CfuStatusNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cipherIndication(ILvendor/mediatek/hardware/mtkradioex/voice/CipherNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract confSRVCC(I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract crssIndication(ILvendor/mediatek/hardware/mtkradioex/voice/CrssNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract eccNumIndication(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract incomingCallIndication(ILvendor/mediatek/hardware/mtkradioex/voice/IncomingCallNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract suppSvcNotifyEx(ILandroid/hardware/radio/network/SuppSvcNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
