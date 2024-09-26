.class public Lcom/mediatek/wfo/impl/WfoService;
.super Ljava/lang/Object;
.source "WfoService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WfoService"

.field private static mInstance:Lcom/mediatek/wfo/impl/WfoService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMwiService:Lcom/mediatek/wfo/impl/MwiService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/wfo/impl/WfoService;->mInstance:Lcom/mediatek/wfo/impl/WfoService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfoService;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/wfo/impl/WfoService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    sget-object v0, Lcom/mediatek/wfo/impl/WfoService;->mInstance:Lcom/mediatek/wfo/impl/WfoService;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/mediatek/wfo/impl/WfoService;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfoService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/wfo/impl/WfoService;->mInstance:Lcom/mediatek/wfo/impl/WfoService;

    .line 61
    :cond_0
    sget-object v0, Lcom/mediatek/wfo/impl/WfoService;->mInstance:Lcom/mediatek/wfo/impl/WfoService;

    return-object v0
.end method


# virtual methods
.method public makeWfoService()V
    .locals 3

    .line 69
    const-string v0, "WfoService"

    const-string v1, "WfoService new MWIService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfoService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/MwiService;->getInstance(Landroid/content/Context;)Lcom/mediatek/wfo/impl/MwiService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfoService;->mMwiService:Lcom/mediatek/wfo/impl/MwiService;

    .line 71
    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/MwiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "mwis"

    invoke-static {v2, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 72
    return-void
.end method
