.class Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;
.super Landroid/os/Handler;
.source "MtkImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkImsUtImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 320
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 321
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 322
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 327
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

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 328
    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "MtkImsUtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "utConfigurationUpdated(): event = "

    const/4 v3, 0x0

    const/16 v4, 0x324

    packed-switch v0, :pswitch_data_0

    .line 451
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

    goto/16 :goto_a

    .line 428
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 429
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 430
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 432
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 433
    .local v1, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 434
    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$400(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mediatek/ims/plugin/ImsSSExtPlugin;->getImsCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v2

    .line 436
    .local v2, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/ims/feature/MtkImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 437
    .end local v1    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_1

    .line 439
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$300(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 441
    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)I

    move-result v3

    .line 440
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 443
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 446
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 448
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    goto/16 :goto_a

    .line 416
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 417
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 418
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute setupXcapUserAgentString succeed!event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 422
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute setupXcapUserAgentString failed!event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_2
    goto/16 :goto_a

    .line 395
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 396
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 397
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    .line 399
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

    .line 402
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_4

    .line 405
    :cond_3
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_4

    .line 406
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$300(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 407
    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)I

    move-result v3

    .line 406
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 409
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 411
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_3
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 413
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_4
    goto/16 :goto_a

    .line 333
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 334
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 335
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    .line 337
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

    .line 340
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_6

    .line 344
    :cond_5
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_6

    .line 345
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$300(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 346
    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)I

    move-result v3

    .line 345
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_5

    .line 348
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_6
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 350
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_5
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 352
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_6
    goto/16 :goto_a

    .line 355
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 356
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 357
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    .line 359
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 360
    .local v1, "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v2, 0x0

    .line 362
    .local v2, "imsCfInfo":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    if-eqz v1, :cond_7

    .line 363
    array-length v3, v1

    new-array v2, v3, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 364
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 365
    new-instance v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;

    invoke-direct {v4}, Lcom/mediatek/ims/MtkImsCallForwardInfo;-><init>()V

    .line 366
    .local v4, "info":Lcom/mediatek/ims/MtkImsCallForwardInfo;
    iget-object v5, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 367
    invoke-static {v5}, Lcom/mediatek/ims/MtkImsUtImpl;->access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v5

    iput v5, v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    .line 368
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    iput v5, v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    .line 369
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iput v5, v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    .line 370
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    iput v5, v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    .line 371
    aget-object v5, v1, v3

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    iput-object v5, v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 372
    aget-object v5, v1, v3

    iget v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    iput v5, v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    .line 373
    aget-object v5, v1, v3

    iget-object v5, v5, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    iput-object v5, v4, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    .line 374
    aput-object v4, v2, v3

    .line 364
    .end local v4    # "info":Lcom/mediatek/ims/MtkImsCallForwardInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 378
    .end local v3    # "i":I
    :cond_7
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/ims/feature/MtkImsUtListener;->onUtConfigurationCallForwardInTimeSlotQueried(I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V

    .line 380
    .end local v1    # "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v2    # "imsCfInfo":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    goto :goto_9

    .line 383
    :cond_8
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_9

    .line 384
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$300(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 385
    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)I

    move-result v3

    .line 384
    invoke-interface {v1, v2, v3}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_8

    .line 387
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_9
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v4, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 390
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_8
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 392
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_9
    nop

    .line 454
    :cond_a
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
