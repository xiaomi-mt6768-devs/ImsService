.class Lcom/mediatek/ims/MtkSuppServExt$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MtkSuppServExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkSuppServExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkSuppServExt;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/MtkSuppServExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 457
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$2;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/mediatek/ims/MtkSuppServExt$2;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v0}, Lcom/mediatek/ims/MtkSuppServExt;->access$900(Lcom/mediatek/ims/MtkSuppServExt;)V

    .line 461
    return-void
.end method
