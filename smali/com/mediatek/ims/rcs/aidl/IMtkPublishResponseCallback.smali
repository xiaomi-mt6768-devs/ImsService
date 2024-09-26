.class public interface abstract Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;
.super Ljava/lang/Object;
.source "IMtkPublishResponseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$_Parcel;,
        Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Stub;,
        Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.rcs.aidl.IMtkPublishResponseCallback"


# virtual methods
.method public abstract onCommandError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNetworkResponse(ILandroid/telephony/ims/SipDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
