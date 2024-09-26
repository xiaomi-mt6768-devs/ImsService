.class public final synthetic Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda8;->f$0:Lcom/mediatek/ims/ImsService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda8;->f$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->lambda$updateImsRegstration$8$com-mediatek-ims-ImsService(Ljava/lang/Object;)V

    return-void
.end method
