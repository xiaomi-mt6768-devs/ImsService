.class public final synthetic Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda0;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda0;->f$0:Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4$$ExternalSyntheticLambda0;->f$1:[B

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;->lambda$messageReceived$0$com-mediatek-ims-rcs-UaServiceManager$UaServiceContext$4([B)V

    return-void
.end method
