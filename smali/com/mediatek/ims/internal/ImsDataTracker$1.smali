.class Lcom/mediatek/ims/internal/ImsDataTracker$1;
.super Landroid/os/Handler;
.source "ImsDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsDataTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 119
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 122
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsDataTracker$1;
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    goto :goto_0

    .line 137
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsDataTracker$1;
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone 1 radio on set ims bearer notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-static {v2}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$300(Lcom/mediatek/ims/internal/ImsDataTracker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$400(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$300(Lcom/mediatek/ims/internal/ImsDataTracker;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$500(Lcom/mediatek/ims/internal/ImsDataTracker;II)V

    .line 139
    goto :goto_1

    .line 133
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsDataTracker$1;
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone 0 radio on set ims bearer notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-static {v2}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$300(Lcom/mediatek/ims/internal/ImsDataTracker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$400(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$300(Lcom/mediatek/ims/internal/ImsDataTracker;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$500(Lcom/mediatek/ims/internal/ImsDataTracker;II)V

    .line 135
    goto :goto_1

    .line 124
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$000(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V

    .line 125
    goto :goto_1

    .line 130
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$200(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V

    .line 131
    goto :goto_1

    .line 127
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$100(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V

    .line 128
    goto :goto_1

    .line 141
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not handle the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$600(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :goto_1
    monitor-exit p0

    return-void

    .line 121
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
