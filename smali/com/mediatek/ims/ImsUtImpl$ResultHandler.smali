.class Lcom/mediatek/ims/ImsUtImpl$ResultHandler;
.super Landroid/os/Handler;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsUtImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 192
    iput-object p1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 193
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 194
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(): event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 200
    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "ImsUtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "utConfigurationUpdated(): event = "

    const/4 v3, 0x1

    const/16 v4, 0x324

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 446
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 447
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 448
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_1

    .line 455
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 457
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 456
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 459
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 461
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-virtual {v2, p1, v1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 463
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    goto/16 :goto_17

    .line 410
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 411
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 412
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 413
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 414
    .local v1, "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v2, 0x0

    .line 416
    .local v2, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v1, :cond_2

    .line 417
    array-length v3, v1

    new-array v2, v3, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 418
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 420
    new-instance v4, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    .line 421
    .local v4, "info":Landroid/telephony/ims/ImsCallForwardInfo;
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v5

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 422
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 423
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 424
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 425
    aget-object v5, v1, v3

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 426
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    iput v5, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 427
    aput-object v4, v2, v3

    .line 418
    .end local v4    # "info":Landroid/telephony/ims/ImsCallForwardInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 431
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 432
    .end local v1    # "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v2    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_4

    .line 434
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_4

    .line 435
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 436
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 435
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 438
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 441
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_3
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 443
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    goto/16 :goto_17

    .line 467
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 468
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 470
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    .line 472
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/mediatek/ims/MtkImsBarringCall;

    .line 473
    .local v2, "res":[Lcom/mediatek/ims/MtkImsBarringCall;
    array-length v3, v2

    new-array v3, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 474
    .local v3, "info":[Landroid/telephony/ims/ImsSsInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 475
    new-instance v5, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v5}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v5, v3, v4

    .line 476
    aget-object v5, v3, v4

    aget-object v6, v2, v4

    iget v6, v6, Lcom/mediatek/ims/MtkImsBarringCall;->status:I

    iput v6, v5, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 477
    aget-object v5, v3, v4

    aget-object v6, v2, v4

    iget-object v6, v6, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    iput-object v6, v5, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_GET_CB_MT: number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    iget-object v6, v6, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 485
    .end local v4    # "i":I
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMS_UT_EVENT_GET_CB_MT: count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 489
    .end local v2    # "res":[Lcom/mediatek/ims/MtkImsBarringCall;
    .end local v3    # "info":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_7

    .line 491
    :cond_6
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_7

    .line 492
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 493
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 492
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_6

    .line 495
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_7
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 498
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_6
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 500
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_7
    goto/16 :goto_17

    .line 349
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 350
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 351
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 353
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_a

    .line 354
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 355
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v3, 0x0

    .line 356
    .local v3, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz v2, :cond_9

    array-length v4, v2

    if-eqz v4, :cond_9

    .line 357
    array-length v4, v2

    new-array v3, v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 358
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8
    array-length v5, v2

    if-ge v4, v5, :cond_9

    .line 359
    iget-object v5, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    aget-object v6, v2, v4

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsUtImpl;->access$400(Lcom/mediatek/ims/ImsUtImpl;Lcom/android/internal/telephony/CallForwardInfo;)Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v5

    aput-object v5, v3, v4

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_SET_CF: cfInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = , Condition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 362
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getCondition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 363
    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getStatus()I

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "disabled"

    goto :goto_9

    :cond_8
    const-string v6, "enabled"

    :goto_9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ToA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 364
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getToA()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Service Class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 365
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getServiceClass()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 366
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/ims/ImsUtImpl;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Time (seconds): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v4

    .line 367
    invoke-virtual {v6}, Landroid/telephony/ims/ImsCallForwardInfo;->getTimeSeconds()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 372
    .end local v4    # "i":I
    :cond_9
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 374
    goto/16 :goto_17

    .line 385
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    :cond_a
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 386
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 387
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    goto :goto_b

    .line 397
    :cond_b
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_c

    .line 398
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 399
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 398
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_a

    .line 401
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_c
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 404
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_a
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 406
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_b
    goto/16 :goto_17

    .line 318
    :sswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 319
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 320
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_d

    .line 322
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 323
    .local v1, "result":[I
    new-instance v2, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 324
    .local v2, "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    aget v3, v1, v5

    iput v3, v2, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 325
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v3, "info":Landroid/os/Bundle;
    const-string v4, "imsSsInfo"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 328
    iget-object v4, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v4}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 329
    .end local v1    # "result":[I
    .end local v2    # "ssInfo":Landroid/telephony/ims/ImsSsInfo;
    .end local v3    # "info":Landroid/os/Bundle;
    goto :goto_d

    .line 332
    :cond_d
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_e

    .line 333
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 334
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 333
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_c

    .line 336
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_e
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 339
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_c
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 341
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_d
    goto/16 :goto_17

    .line 287
    :sswitch_6
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 289
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 290
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 292
    .local v2, "result":[I
    if-eqz v2, :cond_f

    array-length v4, v2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_f

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UT GET CLIR result = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    const/4 v4, -0x1

    invoke-direct {v1, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    aget v4, v2, v5

    .line 296
    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    aget v3, v2, v3

    .line 297
    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    .line 298
    .local v1, "info":Landroid/telephony/ims/ImsSsInfo;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v1}, Landroid/telephony/ims/ImsUtListener;->onLineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V

    .line 299
    .end local v1    # "info":Landroid/telephony/ims/ImsSsInfo;
    goto :goto_e

    .line 300
    :cond_f
    const-string v3, "IMS_UT_EVENT_GET_CLIR: Something funny going on"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v2    # "result":[I
    :goto_e
    goto :goto_10

    .line 304
    :cond_10
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_11

    .line 305
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 306
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 305
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_f

    .line 308
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_11
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 311
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_f
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 313
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_10
    goto/16 :goto_17

    .line 258
    :sswitch_7
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 259
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 260
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_12

    .line 262
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 263
    .restart local v2    # "result":[I
    new-array v3, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 264
    .local v3, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v4, v3, v5

    .line 265
    aget-object v4, v3, v5

    aget v6, v2, v5

    iput v6, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_GET_CW: status = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 272
    .end local v2    # "result":[I
    .end local v3    # "info":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_12

    .line 275
    :cond_12
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_13

    .line 276
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 277
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 276
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_11

    .line 279
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_13
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 282
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_11
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 284
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_12
    goto/16 :goto_17

    .line 235
    :sswitch_8
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 236
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    .line 239
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 240
    .local v1, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$300(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mediatek/ims/plugin/ImsSSExtPlugin;->getImsCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v2

    .line 242
    .local v2, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 243
    .end local v1    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_14

    .line 246
    :cond_14
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_15

    .line 247
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 248
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 247
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_13

    .line 250
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_15
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 253
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_13
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 255
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_14
    goto :goto_17

    .line 205
    :sswitch_9
    iget-object v0, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 206
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    .line 210
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 211
    .local v2, "result":[I
    new-array v3, v3, [Landroid/telephony/ims/ImsSsInfo;

    .line 212
    .restart local v3    # "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v4, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v4}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    aput-object v4, v3, v5

    .line 213
    aget-object v4, v3, v5

    aget v6, v2, v5

    iput v6, v4, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMS_UT_EVENT_GET_CB: status = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 220
    .end local v2    # "result":[I
    .end local v3    # "info":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_16

    .line 223
    :cond_16
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_17

    .line 224
    iget-object v1, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/ImsUtImpl;->access$200(Lcom/mediatek/ims/ImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    .line 225
    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->access$100(Lcom/mediatek/ims/ImsUtImpl;)I

    move-result v3

    .line 224
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_15

    .line 227
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_17
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 230
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_15
    iget-object v2, p0, Lcom/mediatek/ims/ImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/ImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/ImsUtImpl;->access$000(Lcom/mediatek/ims/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 232
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_16
    nop

    .line 506
    :cond_18
    :goto_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_9
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_3
        0x3f0 -> :sswitch_3
        0x3f1 -> :sswitch_4
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_4
        0x3f4 -> :sswitch_4
        0x3f5 -> :sswitch_4
        0x3f6 -> :sswitch_2
        0x3f7 -> :sswitch_3
        0x4b0 -> :sswitch_1
        0x4b1 -> :sswitch_0
    .end sparse-switch
.end method
