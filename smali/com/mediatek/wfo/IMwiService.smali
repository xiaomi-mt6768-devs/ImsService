.class public interface abstract Lcom/mediatek/wfo/IMwiService;
.super Ljava/lang/Object;
.source "IMwiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/IMwiService$Stub;,
        Lcom/mediatek/wfo/IMwiService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.wfo.IMwiService"


# virtual methods
.method public abstract getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWfcState(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
