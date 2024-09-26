.class final Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UaServiceContext"
.end annotation


# instance fields
.field private final acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

.field private final imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

.field private mAcsCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCapability:Lcom/mediatek/ims/rcsua/Capability;

.field private mCcNotified:Z

.field private mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

.field private mPhoneId:I

.field private mRetryCount:I

.field private mSipCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

.field private mStateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

.field private mUpdateRcsFeatureTagState:Z

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private final sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;
    .param p2, "phoneId"    # I

    .line 482
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->serviceConnection:Landroid/content/ServiceConnection;

    .line 842
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    .line 940
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    .line 985
    new-instance v0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 1024
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Capability;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 1025
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    .line 1026
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    .line 1027
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    .line 1030
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    .line 483
    iput p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    .line 484
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->sipEventCallback:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .param p1, "x1"    # I

    .line 481
    iput p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 481
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 481
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 481
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Lcom/mediatek/ims/rcsua/service/ISipChannel;)Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 481
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object p1
.end method


# virtual methods
.method activate()V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 644
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 648
    :cond_0
    :goto_0
    return-void
.end method

.method addAcsCallback(Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 610
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_1

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    :goto_0
    goto :goto_1

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_1
    :goto_1
    return-void
.end method

.method addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 660
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 662
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 666
    :cond_0
    :goto_0
    return-void
.end method

.method addSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 1
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 598
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 599
    return-void
.end method

.method addStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 1
    .param p1, "stateCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 582
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    return-void
.end method

.method clearAcsCallbacks()V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 635
    return-void
.end method

.method clearSipCallbacks()V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 607
    return-void
.end method

.method clearStateCallbacks()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 591
    return-void
.end method

.method deactivate()V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 653
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 657
    :cond_0
    :goto_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 746
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 748
    goto :goto_0

    .line 747
    :catch_0
    move-exception v1

    .line 750
    :cond_0
    :goto_0
    return v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 754
    const/4 v0, 0x0

    .line 755
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 757
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 759
    goto :goto_0

    .line 758
    :catch_0
    move-exception v1

    .line 761
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 735
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 737
    goto :goto_0

    .line 736
    :catch_0
    move-exception v1

    .line 739
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 2

    .line 777
    const/4 v0, 0x0

    .line 779
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 781
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 783
    goto :goto_0

    .line 782
    :catch_0
    move-exception v1

    .line 785
    :cond_0
    :goto_0
    return-object v0
.end method

.method getCapability()Lcom/mediatek/ims/rcsua/Capability;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    return-object v0
.end method

.method getImsClient()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object v0
.end method

.method getPhoneId()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    return v0
.end method

.method getSipCallbacks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method getSipChannel()Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object v0
.end method

.method getStateCallbacks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method getUaService()Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method getUpdateRcsFeatureTagState()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUpdateRcsFeatureTagState:Z

    return v0
.end method

.method public isActivated()Z
    .locals 2

    .line 765
    const/4 v0, 0x0

    .line 767
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 769
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isActivated()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 771
    goto :goto_0

    .line 770
    :catch_0
    move-exception v1

    .line 773
    :cond_0
    :goto_0
    return v0
.end method

.method isCcNotified()Z
    .locals 1

    .line 797
    iget-boolean v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    return v0
.end method

.method removeAcsCallback(Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcs/UaServiceManager$AcsEventCallback;

    .line 624
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 625
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 631
    :cond_0
    :goto_0
    return-void
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 669
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 671
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 675
    :cond_0
    :goto_0
    return-void
.end method

.method removeSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 1
    .param p1, "sipCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    .line 602
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 603
    return-void
.end method

.method removeStateCallback(Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V
    .locals 1
    .param p1, "stateCallback"    # Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 586
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mStateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 587
    return-void
.end method

.method public sendSipMessage(Landroid/telephony/ims/SipMessage;)Z
    .locals 4
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;

    .line 696
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-eqz v0, :cond_1

    .line 697
    const/4 v1, 0x0

    .line 699
    .local v1, "available":Z
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 701
    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 702
    :goto_0
    if-eqz v1, :cond_0

    .line 704
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->sendMessageAsync([BLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    goto :goto_1

    .line 705
    :catch_1
    move-exception v0

    .line 708
    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 710
    .end local v1    # "available":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method setCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 0
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 574
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 575
    return-void
.end method

.method setCcNotified(Z)V
    .locals 0
    .param p1, "ccNotified"    # Z

    .line 801
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mCcNotified:Z

    .line 802
    return-void
.end method

.method setImsClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    .locals 0
    .param p1, "imsClient"    # Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 558
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 559
    return-void
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 1
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 714
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 716
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 720
    :cond_0
    :goto_0
    return-void
.end method

.method setSipChannel(Lcom/mediatek/ims/rcsua/service/ISipChannel;)V
    .locals 0
    .param p1, "sipChannel"    # Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 566
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 567
    return-void
.end method

.method setUaService(Lcom/mediatek/ims/rcsua/service/IRcsUaService;)V
    .locals 0
    .param p1, "uaService"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 550
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 551
    return-void
.end method

.method setUpdateRcsFeatureTagState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 793
    iput-boolean p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUpdateRcsFeatureTagState:Z

    .line 794
    return-void
.end method

.method startService()V
    .locals 4

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.rcsua.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 491
    .local v1, "options":Landroid/os/Bundle;
    const-string v2, "OPTION_ROI_SUPPORT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-boolean v2, v2, Lcom/mediatek/ims/rcs/UaServiceManager;->acsSupported:Z

    const-string v3, "OPTION_ACS_SUPPORT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 493
    const-string v2, "service_options"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 495
    const-string v2, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 498
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    return-void
.end method

.method stopService()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 517
    .local v0, "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    goto :goto_0

    .line 518
    :catch_0
    move-exception v2

    .line 520
    :goto_0
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mSipChannel:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 522
    .end local v0    # "ex":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->clearSipCallbacks()V

    .line 523
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    if-eqz v0, :cond_1

    .line 525
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 527
    goto :goto_1

    .line 526
    :catch_1
    move-exception v0

    .line 528
    :goto_1
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mImsClient:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 530
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->clearStateCallbacks()V

    .line 532
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 534
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 536
    goto :goto_2

    .line 535
    :catch_2
    move-exception v0

    .line 537
    :goto_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mAcsCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 541
    iput-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 543
    :cond_3
    return-void
.end method

.method public triggerAcsRequest(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 723
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 725
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerAcsRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 729
    :cond_0
    :goto_0
    return-void
.end method

.method public triggerRestoration()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 689
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRestoration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 693
    :cond_0
    :goto_0
    return-void
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 1
    .param p1, "capabilities"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 678
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->mUaService:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    .line 680
    :try_start_0
    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 684
    :cond_0
    :goto_0
    return-void
.end method
