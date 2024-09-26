.class public final synthetic Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;

    iput-boolean p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda0;->f$1:Z

    iput p3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;

    iget-boolean v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda0;->f$1:Z

    iget v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;->lambda$onConfigChanged$0$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$5(ZI)V

    return-void
.end method
