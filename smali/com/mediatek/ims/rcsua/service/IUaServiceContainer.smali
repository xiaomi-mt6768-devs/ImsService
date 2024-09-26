.class public interface abstract Lcom/mediatek/ims/rcsua/service/IUaServiceContainer;
.super Ljava/lang/Object;
.source "IUaServiceContainer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IUaServiceContainer$Stub;,
        Lcom/mediatek/ims/rcsua/service/IUaServiceContainer$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.rcsua.service.IUaServiceContainer"


# virtual methods
.method public abstract getService(I)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
