.class public Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "ImsVTProvider.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImsVTProviderTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProvider;


# direct methods
.method protected constructor <init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 393
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 399
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    .line 400
    .local v0, "cellSignalStrengthList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellSignalStrength;>;"
    if-nez v0, :cond_0

    .line 401
    return-void

    .line 404
    :cond_0
    const/4 v1, 0x0

    .line 408
    .local v1, "levelChanged":Z
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    .line 410
    .local v2, "newSigLevel":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSignalLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-static {v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->access$000(Lcom/mediatek/ims/internal/ImsVTProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", primary signal newlevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsVT"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-static {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->access$000(Lcom/mediatek/ims/internal/ImsVTProvider;)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 413
    const/4 v1, 0x1

    .line 414
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-static {v3, v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->access$002(Lcom/mediatek/ims/internal/ImsVTProvider;I)I

    .line 417
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 419
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-boolean v3, v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    if-nez v3, :cond_2

    .line 421
    :try_start_0
    const-string v3, "not init done, wait"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 423
    :catch_0
    move-exception v3

    .line 424
    :goto_1
    goto :goto_0

    .line 426
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    iget v3, v3, Lcom/mediatek/ims/internal/ImsVTProvider;->mId:I

    iget-object v4, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ImsVTProviderTelephonyCallback;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-static {v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->access$000(Lcom/mediatek/ims/internal/ImsVTProvider;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->nSetSignalLevel(II)I

    .line 428
    :cond_3
    return-void
.end method
