.class public final synthetic Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;->lambda$messageSendFail$2$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$4(Ljava/lang/String;I)V

    return-void
.end method
