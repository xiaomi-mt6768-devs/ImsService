.class Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;
.super Lcom/mediatek/wfo/WifiOffloadManager$Listener;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWifiOffloadListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsCallSessionProxy;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 0

    .line 4004
    iput-object p1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Lcom/mediatek/wfo/WifiOffloadManager$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ImsCallSessionProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p2, "x1"    # Lcom/mediatek/ims/ImsCallSessionProxy$1;

    .line 4004
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;-><init>(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    return-void
.end method


# virtual methods
.method public onHandover(III)V
    .locals 6
    .param p1, "simIdx"    # I
    .param p2, "stage"    # I
    .param p3, "ratType"    # I

    .line 4007
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$900(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 4008
    return-void

    .line 4011
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v0

    if-eq p3, v0, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_1

    .line 4015
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v0}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$800(Lcom/mediatek/ims/ImsCallSessionProxy;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12500(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    move-result v0

    .line 4016
    .local v0, "srcRadioTech":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v1, p3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12500(Lcom/mediatek/ims/ImsCallSessionProxy;I)I

    move-result v1

    .line 4019
    .local v1, "targetRadioTech":I
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$12600(Lcom/mediatek/ims/ImsCallSessionProxy;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4020
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const/4 v3, 0x0

    invoke-static {v2, p3, v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5200(Lcom/mediatek/ims/ImsCallSessionProxy;II)Z

    .line 4022
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4023
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v3, "onHandover()"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4025
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v3}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$000(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 4026
    iget-object v2, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    invoke-static {v2}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$5800(Lcom/mediatek/ims/ImsCallSessionProxy;)Landroid/telephony/ims/ImsCallSessionListener;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v2, v0, v1, v3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4029
    goto :goto_0

    .line 4027
    :catch_0
    move-exception v2

    .line 4028
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/mediatek/ims/ImsCallSessionProxy$IWifiOffloadListenerProxy;->this$0:Lcom/mediatek/ims/ImsCallSessionProxy;

    const-string v4, "RuntimeException callSessionHandover()"

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/ims/ImsCallSessionProxy;Ljava/lang/String;I)V

    .line 4031
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_0
    return-void

    .line 4012
    .end local v0    # "srcRadioTech":I
    .end local v1    # "targetRadioTech":I
    :cond_4
    :goto_1
    return-void
.end method

.method public onRequestImsSwitch(IZ)V
    .locals 0
    .param p1, "simIdx"    # I
    .param p2, "isImsOn"    # Z

    .line 4037
    return-void
.end method
