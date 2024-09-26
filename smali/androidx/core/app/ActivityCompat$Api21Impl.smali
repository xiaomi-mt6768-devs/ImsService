.class Landroidx/core/app/ActivityCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    return-void
.end method

.method static finishAfterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 883
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 884
    return-void
.end method

.method static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 900
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    .line 901
    return-void
.end method

.method static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 889
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 890
    return-void
.end method

.method static setExitSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .line 895
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 896
    return-void
.end method

.method static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 905
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    .line 906
    return-void
.end method
