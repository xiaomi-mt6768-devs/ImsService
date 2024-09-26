.class public final synthetic Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/UaServiceManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iput p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$2:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$$ExternalSyntheticLambda1;->f$2:Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->lambda$registerStateCallback$0$com-mediatek-ims-rcs-UaServiceManager(ILcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    return-void
.end method
