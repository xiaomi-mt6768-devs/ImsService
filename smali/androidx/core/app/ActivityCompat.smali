.class public Landroidx/core/app/ActivityCompat;
.super Landroidx/core/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;,
        Landroidx/core/app/ActivityCompat$Api16Impl;,
        Landroidx/core/app/ActivityCompat$Api21Impl;,
        Landroidx/core/app/ActivityCompat$Api22Impl;,
        Landroidx/core/app/ActivityCompat$Api28Impl;,
        Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;,
        Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroidx/core/app/ActivityCompat$Api23Impl;,
        Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;,
        Landroidx/core/app/ActivityCompat$Api32Impl;,
        Landroidx/core/app/ActivityCompat$Api31Impl;,
        Landroidx/core/app/ActivityCompat$Api30Impl;
    }
.end annotation


# static fields
.field private static sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Landroidx/core/content/ContextCompat;-><init>()V

    .line 164
    return-void
.end method

.method public static finishAffinity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 300
    nop

    .line 301
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api16Impl;->finishAffinity(Landroid/app/Activity;)V

    .line 305
    return-void
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 317
    nop

    .line 318
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api21Impl;->finishAfterTransition(Landroid/app/Activity;)V

    .line 322
    return-void
.end method

.method public static getPermissionCompatDelegate()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    .locals 1

    .line 182
    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 343
    nop

    .line 344
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api22Impl;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public static isLaunchedFromBubble(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 633
    nop

    .line 634
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api31Impl;->isLaunchedFromBubble(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$recreate$0(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 677
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/core/app/ActivityRecreator;->recreate(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 681
    :cond_0
    return-void
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 425
    nop

    .line 426
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api21Impl;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 428
    return-void
.end method

.method public static recreate(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 668
    nop

    .line 670
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 683
    return-void
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragEvent"    # Landroid/view/DragEvent;

    .line 657
    invoke-static {p0, p1}, Landroidx/core/view/DragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 519
    sget-object v0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0, p0, p1, p2}, Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    return-void

    .line 525
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 526
    .local v0, "indicesOfPermissionsToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 527
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
    nop

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission request for permissions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 529
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must not contain null or empty values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 539
    .end local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 540
    .local v1, "numPermissionsToRemove":I
    if-lez v1, :cond_3

    .line 541
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 542
    .local v2, "permissionsArray":[Ljava/lang/String;
    :goto_1
    if-lez v1, :cond_6

    .line 543
    array-length v3, p1

    if-ne v1, v3, :cond_4

    .line 544
    return-void

    .line 546
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "modifiedIndex":I
    :goto_2
    array-length v5, p1

    if-ge v3, v5, :cond_6

    .line 547
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 548
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "modifiedIndex":I
    .local v5, "modifiedIndex":I
    aget-object v6, p1, v3

    aput-object v6, v2, v4

    move v4, v5

    .line 546
    .end local v5    # "modifiedIndex":I
    .restart local v4    # "modifiedIndex":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 553
    .end local v3    # "i":I
    .end local v4    # "modifiedIndex":I
    :cond_6
    nop

    .line 554
    instance-of v3, p0, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    if-eqz v3, :cond_7

    .line 555
    move-object v3, p0

    check-cast v3, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;

    .line 556
    invoke-interface {v3, p2}, Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 558
    :cond_7
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat$Api23Impl;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 580
    return-void
.end method

.method public static requireViewById(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .line 376
    nop

    .line 377
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat$Api28Impl;->requireViewById(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .line 397
    nop

    .line 398
    if-eqz p1, :cond_0

    .line 399
    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    goto :goto_0

    .line 400
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 401
    .local v0, "frameworkCallback":Landroid/app/SharedElementCallback;
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat$Api21Impl;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    .line 403
    .end local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroidx/core/app/SharedElementCallback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroidx/core/app/SharedElementCallback;

    .line 416
    nop

    .line 417
    if-eqz p1, :cond_0

    .line 418
    new-instance v0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;

    invoke-direct {v0, p1}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroidx/core/app/SharedElementCallback;)V

    goto :goto_0

    .line 419
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 420
    .local v0, "frameworkCallback":Landroid/app/SharedElementCallback;
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat$Api21Impl;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    .line 422
    .end local v0    # "frameworkCallback":Landroid/app/SharedElementCallback;
    return-void
.end method

.method public static setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "locusId"    # Landroidx/core/content/LocusIdCompat;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 717
    nop

    .line 718
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat$Api30Impl;->setLocusContext(Landroid/app/Activity;Landroidx/core/content/LocusIdCompat;Landroid/os/Bundle;)V

    .line 720
    return-void
.end method

.method public static setPermissionCompatDelegate(Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;)V
    .locals 0
    .param p0, "delegate"    # Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    .line 174
    sput-object p0, Landroidx/core/app/ActivityCompat;->sDelegate:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    .line 175
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .line 595
    nop

    .line 600
    nop

    .line 601
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat$Api32Impl;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 246
    nop

    .line 247
    invoke-static {p0, p1, p2, p3}, Landroidx/core/app/ActivityCompat$Api16Impl;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 251
    return-void
.end method

.method public static startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 283
    nop

    .line 284
    invoke-static/range {p0 .. p7}, Landroidx/core/app/ActivityCompat$Api16Impl;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .line 431
    nop

    .line 432
    invoke-static {p0}, Landroidx/core/app/ActivityCompat$Api21Impl;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 434
    return-void
.end method
