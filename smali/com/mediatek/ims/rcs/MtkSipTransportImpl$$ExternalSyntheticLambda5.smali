.class public final synthetic Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

.field public final synthetic f$1:Lcom/mediatek/ims/rcsua/Capability;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda5;->f$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda5;->f$1:Lcom/mediatek/ims/rcsua/Capability;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda5;->f$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda5;->f$1:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->lambda$updateSipDelegateRegistration$2$com-mediatek-ims-rcs-MtkSipTransportImpl(Lcom/mediatek/ims/rcsua/Capability;)V

    return-void
.end method
