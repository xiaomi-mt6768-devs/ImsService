.class Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;
.super Landroid/os/Handler;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ril/ImsRILAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RilHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 640
    iput-object p1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 646
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 732
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 646
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 788
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 789
    .local v0, "mtkService":I
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v6, v0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getMtkRadioExServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;

    move-result-object v3

    .line 790
    .local v3, "mtkProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v8, v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], EVENT_TRIGGER_MTK_AIDL_PENDING_URC, mMtkRadioVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 791
    invoke-static {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mtkService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1400(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 790
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 792
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 793
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 794
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 796
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v7, v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], resend EVENT_TRIGGER_MTK_AIDL_PENDING_URC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 797
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v5, v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 798
    const/16 v7, 0xc

    invoke-virtual {v6, v7, v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 797
    invoke-virtual {v5, v4, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 729
    .end local v0    # "mtkService":I
    .end local v3    # "mtkProxy":Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 730
    .local v0, "aospService":I
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v6, v0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->getRadioServiceProxy(ILandroid/os/Message;)Lcom/mediatek/ims/ril/RadioServiceProxy;

    move-result-object v3

    .line 731
    .local v3, "aospProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v8, v8, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], EVENT_TRIGGER_AOSP_AIDL_PENDING_URC, mRadioVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 732
    invoke-static {v8}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", aospService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$700(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 731
    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 733
    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 734
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$800(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 735
    invoke-virtual {v3}, Lcom/mediatek/ims/ril/RadioServiceProxy;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 737
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v7, v7, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], resend EVENT_TRIGGER_AOSP_AIDL_PENDING_URC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 738
    iget-object v5, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v5, v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 739
    const/16 v7, 0xb

    invoke-virtual {v6, v7, v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 738
    invoke-virtual {v5, v4, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 743
    .end local v0    # "aospService":I
    .end local v3    # "aospProxy":Lcom/mediatek/ims/ril/RadioServiceProxy;
    :cond_0
    goto/16 :goto_2

    .line 776
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 777
    .local v0, "mtkService":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 778
    .local v1, "obj":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], EVENT_MTK_AIDL_PROXY_DEAD cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtkService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 779
    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1400(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MtkCookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 780
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 778
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 782
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    .line 785
    .end local v0    # "mtkService":I
    .end local v1    # "obj":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_1
    goto/16 :goto_2

    .line 717
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 718
    .local v0, "aidlService":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 719
    .restart local v1    # "obj":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], EVENT_AIDL_PROXY_DEAD cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 720
    invoke-static {v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$700(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cookie = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 721
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 719
    invoke-virtual {v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 723
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$600(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    .line 726
    .end local v0    # "aidlService":I
    .end local v1    # "obj":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_2
    goto/16 :goto_2

    .line 757
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v0, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1100(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 758
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1200(Lcom/mediatek/ims/ril/ImsRILAdapter;Landroid/os/Message;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v3

    .line 759
    .local v3, "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 761
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], Trigger to fire pending URC "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->notifyImsServiceReady()V

    goto :goto_0

    .line 763
    :cond_3
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 764
    invoke-static {v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/HalVersion;

    sget-object v5, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_4_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 766
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], resend EVENT_TRIGGER_TO_FIRE_PENDING_URC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 767
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->removeMessages(I)V

    .line 768
    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRilHandler:Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;

    .line 769
    invoke-virtual {v6, v5}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 768
    invoke-virtual {v4, v5, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 773
    .end local v0    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v3    # "mtkProxy":Landroid/hidl/base/V1_0/IBase;
    :cond_4
    :goto_0
    goto/16 :goto_2

    .line 746
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], EVENT_MTK_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMtkServiceCookies  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 747
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 748
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$900(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 749
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$1000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    goto/16 :goto_2

    .line 705
    :pswitch_7
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 706
    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 707
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$500(Lcom/mediatek/ims/ril/ImsRILAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 708
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v0, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$600(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V

    goto/16 :goto_2

    .line 685
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 686
    .local v0, "serial":I
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v1, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$100(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Lcom/mediatek/ims/ril/RILRequest;

    move-result-object v1

    .line 688
    .local v1, "rr":Lcom/mediatek/ims/ril/RILRequest;
    if-nez v1, :cond_5

    .line 689
    goto/16 :goto_2

    .line 693
    :cond_5
    iget-object v2, v1, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_6

    .line 694
    invoke-static {v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$200(Lcom/mediatek/ims/ril/RILRequest;)Ljava/lang/Object;

    move-result-object v2

    .line 695
    .local v2, "timeoutResponse":Ljava/lang/Object;
    iget-object v4, v1, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v4, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 696
    iget-object v3, v1, Lcom/mediatek/ims/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 697
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$300(Lcom/mediatek/ims/ril/ImsRILAdapter;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    iget v6, v1, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    .line 700
    .end local v2    # "timeoutResponse":Ljava/lang/Object;
    :cond_6
    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$400(Lcom/mediatek/ims/ril/ImsRILAdapter;Lcom/mediatek/ims/ril/RILRequest;)V

    .line 701
    invoke-virtual {v1}, Lcom/mediatek/ims/ril/RILRequest;->release()V

    .line 702
    goto/16 :goto_2

    .line 677
    .end local v0    # "serial":I
    .end local v1    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mAckWlSequenceNum:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z

    goto/16 :goto_2

    .line 659
    :pswitch_a
    iget-object v0, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 660
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mWlSequenceNum:I

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-static {v1, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->access$000(Lcom/mediatek/ims/ril/ImsRILAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 662
    iget-object v1, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 663
    .local v1, "count":I
    const-string v2, "IMS_RILA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 666
    iget-object v3, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ril/RILRequest;

    .line 667
    .local v3, "rr":Lcom/mediatek/ims/ril/RILRequest;
    const-string v4, "IMS_RILA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ims/ril/ImsRILAdapter$RilHandler;->this$0:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v6, v6, Lcom/mediatek/ims/ril/ImsRILAdapter;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "],"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/mediatek/ims/ril/RILRequest;->mRequest:I

    .line 669
    invoke-static {v6}, Lcom/mediatek/ims/ril/ImsRILAdapter;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 667
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 673
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/ims/ril/RILRequest;
    :cond_7
    monitor-exit v0

    .line 674
    goto :goto_2

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 805
    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
