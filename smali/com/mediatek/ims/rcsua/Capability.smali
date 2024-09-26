.class public Lcom/mediatek/ims/rcsua/Capability;
.super Ljava/lang/Object;
.source "Capability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/ims/rcsua/Capability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final IARI_CHATBOT:Ljava/lang/String;

.field private final IARI_CHATBOT_SA:Ljava/lang/String;

.field private final IARI_FT_HTTP:Ljava/lang/String;

.field private final IARI_GEO_PULL:Ljava/lang/String;

.field private final IARI_GEO_PULLFT:Ljava/lang/String;

.field private final IARI_GEO_PUSH:Ljava/lang/String;

.field private final IARI_GEO_SMS:Ljava/lang/String;

.field private final ICSI_CPM_FILETRANSFER:Ljava/lang/String;

.field private final ICSI_CPM_LARGE_MSG:Ljava/lang/String;

.field private final ICSI_CPM_MSG:Ljava/lang/String;

.field private final ICSI_CPM_SESSION:Ljava/lang/String;

.field private final SVC_3GPP_IARI:Ljava/lang/String;

.field private final SVC_3GPP_ICSI:Ljava/lang/String;

.field private final SVC_GSMA_BOTVERSION:Ljava/lang/String;

.field private final SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

.field private final SVC_IMDN_AGGREGATION:Ljava/lang/String;

.field private features:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/rcsua/Capability$TagValueList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability$1;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Capability$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 590
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 591
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 592
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 593
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 594
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 596
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 597
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 598
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 599
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 601
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 602
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 603
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 604
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 605
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 606
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 607
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "features"    # J

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 590
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 591
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 592
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 593
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 594
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 596
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 597
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 598
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 599
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 601
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 602
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 603
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 604
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 605
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 606
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 607
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/Capability;->initialize(J)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "features"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 590
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 591
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 592
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 593
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 594
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 596
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 597
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 598
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 599
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 601
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 602
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 603
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 604
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 605
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 606
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 607
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 590
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 591
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 592
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 593
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 594
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 596
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 597
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 598
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 599
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 601
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 602
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 603
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 604
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 605
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 606
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 607
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "feature":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .end local v2    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private addFeature(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 424
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 425
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 426
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 427
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 429
    .local v3, "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->add(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    goto :goto_1

    .line 432
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :goto_1
    goto :goto_0

    .line 436
    :cond_1
    return-void
.end method

.method private initialize(J)V
    .locals 11
    .param p1, "features"    # J

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+g.3gpp.icsi-ref=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "ICSI":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+g.3gpp.iari-ref=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .local v1, "IARI":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 324
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_0
    const-wide/16 v2, 0x2

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 326
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_1
    const-wide/16 v2, 0x4

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 328
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 330
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_3
    const-wide/16 v2, 0x10

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 332
    const-string v2, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 334
    const-string v2, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_5
    const-wide/16 v2, 0x40

    and-long v6, p1, v2

    cmp-long v6, v6, v4

    if-lez v6, :cond_6

    .line 336
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_6
    const-wide/16 v6, 0x100

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_7

    .line 338
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_7
    const-wide/16 v6, 0x200

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_8

    .line 340
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_8
    const-wide/16 v6, 0x800

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_9

    .line 342
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_9
    const-wide/16 v6, 0x1000

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_a

    .line 344
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    const/16 v9, 0x2c

    const/16 v10, 0x3b

    if-ne v7, v9, :cond_b

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 349
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_c

    .line 353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 354
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    :cond_c
    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    .line 359
    const-string v2, "imdn-aggregation"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    :cond_d
    const-wide/16 v2, 0x400

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 364
    const-string v2, "+g.gsma.callcomposer"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    :cond_e
    const-wide/32 v2, 0xfe000

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_11

    .line 370
    const-string v2, "+g.gsma.rcs.botversion"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v2, "=\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    const-wide/16 v7, 0x4000

    if-lez v2, :cond_f

    .line 373
    const-string v2, "#=1"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    and-long v2, p1, v7

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 375
    const-string v2, ",#=2"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 378
    :cond_f
    and-long v2, p1, v7

    cmp-long v2, v2, v4

    if-lez v2, :cond_10

    .line 379
    const-string v2, "#=2"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_10
    :goto_0
    const-string v2, "\";"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_11
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_12

    .line 384
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_12

    .line 385
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 387
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 11
    .param p1, "features"    # Ljava/lang/String;

    .line 391
    if-nez p1, :cond_0

    .line 392
    const-string p1, ""

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 397
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 398
    .local v4, "feature":Ljava/lang/String;
    const-string v5, "="

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v7, v5

    if-ge v7, v6, :cond_1

    .line 400
    iget-object v6, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    new-instance v7, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 402
    :cond_1
    aget-object v6, v5, v2

    .line 403
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v8, v5, v7

    .line 406
    .local v8, "value":Ljava/lang/String;
    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-nez v10, :cond_3

    .line 407
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_3

    .line 411
    iget-object v7, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 413
    iget-object v7, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :cond_2
    iget-object v7, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-direct {v9, v8}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    .restart local v4    # "feature":Ljava/lang/String;
    .restart local v5    # "nameValue":[Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid feature tag value list format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 6
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 440
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 441
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 442
    .local v0, "removeKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 443
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 444
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 446
    .local v4, "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    iget-object v5, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    iget-object v5, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v5, v4}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->remove(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    .line 448
    iget-object v5, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 449
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_0
    goto :goto_0

    .line 454
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 455
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 458
    .end local v0    # "removeKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 78
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->addFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 79
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p1, "features"    # Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->addFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 89
    return-object p0
.end method

.method public add(Ljava/util/Set;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mediatek/ims/rcsua/Capability;"
        }
    .end annotation

    .line 93
    .local p1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->addFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 94
    return-object p0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v1, v0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 120
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 121
    return v4

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 123
    .local v3, "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v3, v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->contains(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    return v4

    .line 125
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v3    # "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_1
    goto :goto_0

    .line 127
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public describeContents()I
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 208
    return v0

    .line 210
    :cond_0
    instance-of v1, p1, Lcom/mediatek/ims/rcsua/Capability;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 211
    move-object v1, p1

    check-cast v1, Lcom/mediatek/ims/rcsua/Capability;

    .line 212
    .local v1, "other":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v3, v1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 215
    .end local v1    # "other":Lcom/mediatek/ims/rcsua/Capability;
    :cond_2
    return v2
.end method

.method public get(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 84
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p1, "features"    # Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 99
    return-object p0
.end method

.method public remove(Ljava/util/Set;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mediatek/ims/rcsua/Capability;"
        }
    .end annotation

    .line 103
    .local p1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 104
    return-object p0
.end method

.method public toFeatureTags()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 133
    .local v0, "result":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 135
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 136
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "+g.gsma.rcs.botversion"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 137
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 143
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->getTagValues()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 144
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 145
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v7, "=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v7, "\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v6    # "tag":Ljava/lang/String;
    goto :goto_1

    :cond_1
    goto :goto_2

    .line 153
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    :goto_2
    goto/16 :goto_0

    .line 157
    :cond_3
    return-object v0
.end method

.method public toNumeric()J
    .locals 10

    .line 224
    const-wide/16 v0, 0x0

    .line 226
    .local v0, "result":J
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 227
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 228
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 229
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 231
    .local v5, "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "+g.3gpp.iari-ref"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_1
    const-string v6, "+g.gsma.callcomposer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_2
    const-string v6, "+g.gsma.rcs.botversion"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_3
    const-string v6, "imdn-aggregation"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_4
    const-string v6, "+g.3gpp.icsi-ref"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_a

    .line 285
    :pswitch_0
    invoke-static {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 286
    .local v7, "value":Ljava/lang/String;
    const-string v8, "#1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "#=1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_4

    .line 289
    :cond_1
    const-string v8, "#2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "#=2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 290
    :cond_2
    const-wide/16 v8, 0x4000

    or-long/2addr v0, v8

    goto :goto_5

    .line 287
    :cond_3
    :goto_4
    const-wide/16 v8, 0x2000

    or-long/2addr v0, v8

    .line 292
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    :goto_5
    goto :goto_3

    .line 280
    :pswitch_1
    const-wide/16 v6, 0x400

    or-long/2addr v0, v6

    .line 281
    goto/16 :goto_a

    .line 276
    :pswitch_2
    const-wide/16 v6, 0x80

    or-long/2addr v0, v6

    .line 277
    goto/16 :goto_a

    .line 250
    :pswitch_3
    invoke-static {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 251
    .restart local v7    # "value":Ljava/lang/String;
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 252
    const-wide/16 v8, 0x10

    or-long/2addr v0, v8

    goto :goto_7

    .line 254
    :cond_5
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 255
    const-wide/16 v8, 0x20

    or-long/2addr v0, v8

    goto :goto_7

    .line 257
    :cond_6
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 258
    const-wide/16 v8, 0x40

    or-long/2addr v0, v8

    goto :goto_7

    .line 260
    :cond_7
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 261
    const-wide/16 v8, 0x100

    or-long/2addr v0, v8

    goto :goto_7

    .line 263
    :cond_8
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 264
    const-wide/16 v8, 0x200

    or-long/2addr v0, v8

    goto :goto_7

    .line 266
    :cond_9
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 267
    const-wide/16 v8, 0x800

    or-long/2addr v0, v8

    goto :goto_7

    .line 269
    :cond_a
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 270
    const-wide/16 v8, 0x1000

    or-long/2addr v0, v8

    .line 272
    .end local v7    # "value":Ljava/lang/String;
    :cond_b
    :goto_7
    goto :goto_6

    .line 273
    :cond_c
    goto :goto_a

    .line 233
    :pswitch_4
    invoke-static {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 234
    .restart local v7    # "value":Ljava/lang/String;
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 235
    const-wide/16 v8, 0x4

    or-long/2addr v0, v8

    goto :goto_9

    .line 237
    :cond_d
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 238
    const-wide/16 v8, 0x1

    or-long/2addr v0, v8

    goto :goto_9

    .line 240
    :cond_e
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 241
    const-wide/16 v8, 0x8

    or-long/2addr v0, v8

    goto :goto_9

    .line 243
    :cond_f
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 244
    const-wide/16 v8, 0x2

    or-long/2addr v0, v8

    .line 246
    .end local v7    # "value":Ljava/lang/String;
    :cond_10
    :goto_9
    goto :goto_8

    .line 247
    :cond_11
    nop

    .line 295
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_12
    :goto_a
    goto/16 :goto_0

    .line 298
    :cond_13
    return-wide v0

    :sswitch_data_0
    .sparse-switch
        -0x3fced582 -> :sswitch_4
        0xa928443 -> :sswitch_3
        0x484cd319 -> :sswitch_2
        0x524ec15a -> :sswitch_1
        0x54afdb5d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 188
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 189
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 195
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p1, "features"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 109
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 162
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/Capability;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return-void
.end method
