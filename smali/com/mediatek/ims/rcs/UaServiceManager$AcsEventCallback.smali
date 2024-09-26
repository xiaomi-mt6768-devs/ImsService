.class public abstract Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AcsEventCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcsConnected(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 475
    return-void
.end method

.method public onAcsDisconnected(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 478
    return-void
.end method

.method public onConfigurationErrorReceived(IILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;

    .line 472
    return-void
.end method

.method public onConfigurationStatusChanged(IZI)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "valid"    # Z
    .param p3, "version"    # I

    .line 469
    return-void
.end method
