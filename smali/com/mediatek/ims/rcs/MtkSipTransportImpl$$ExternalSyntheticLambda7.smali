.class public final synthetic Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda7;->f$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$$ExternalSyntheticLambda7;->f$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->lambda$updateSipDelegateRegistration$3$com-mediatek-ims-rcs-MtkSipTransportImpl()V

    return-void
.end method
