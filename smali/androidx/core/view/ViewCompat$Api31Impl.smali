.class final Landroidx/core/view/ViewCompat$Api31Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 3149
    invoke-virtual {p0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "payload"    # Landroidx/core/view/ContentInfoCompat;

    .line 3156
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->toContentInfo()Landroid/view/ContentInfo;

    move-result-object v0

    .line 3157
    .local v0, "platPayload":Landroid/view/ContentInfo;
    invoke-virtual {p0, v0}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object v1

    .line 3158
    .local v1, "platResult":Landroid/view/ContentInfo;
    if-nez v1, :cond_0

    .line 3159
    const/4 v2, 0x0

    return-object v2

    .line 3161
    :cond_0
    if-ne v1, v0, :cond_1

    .line 3163
    return-object p1

    .line 3165
    :cond_1
    invoke-static {v1}, Landroidx/core/view/ContentInfoCompat;->toContentInfoCompat(Landroid/view/ContentInfo;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v2

    return-object v2
.end method

.method public static setOnReceiveContentListener(Landroid/view/View;[Ljava/lang/String;Landroidx/core/view/OnReceiveContentListener;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mimeTypes"    # [Ljava/lang/String;
    .param p2, "listener"    # Landroidx/core/view/OnReceiveContentListener;

    .line 3138
    if-nez p2, :cond_0

    .line 3139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setOnReceiveContentListener([Ljava/lang/String;Landroid/view/OnReceiveContentListener;)V

    goto :goto_0

    .line 3141
    :cond_0
    new-instance v0, Landroidx/core/view/ViewCompat$OnReceiveContentListenerAdapter;

    invoke-direct {v0, p2}, Landroidx/core/view/ViewCompat$OnReceiveContentListenerAdapter;-><init>(Landroidx/core/view/OnReceiveContentListener;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setOnReceiveContentListener([Ljava/lang/String;Landroid/view/OnReceiveContentListener;)V

    .line 3144
    :goto_0
    return-void
.end method
