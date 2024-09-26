.class Landroidx/core/location/LocationCompat$Api26Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    return-void
.end method

.method static getBearingAccuracyDegrees(Landroid/location/Location;)F
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .line 606
    invoke-virtual {p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v0

    return v0
.end method

.method static getSpeedAccuracyMetersPerSecond(Landroid/location/Location;)F
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .line 591
    invoke-virtual {p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v0

    return v0
.end method

.method static getVerticalAccuracyMeters(Landroid/location/Location;)F
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .line 576
    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v0

    return v0
.end method

.method static hasBearingAccuracy(Landroid/location/Location;)Z
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .line 601
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v0

    return v0
.end method

.method static hasSpeedAccuracy(Landroid/location/Location;)Z
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .line 586
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v0

    return v0
.end method

.method static hasVerticalAccuracy(Landroid/location/Location;)Z
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .line 571
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v0

    return v0
.end method

.method static setBearingAccuracyDegrees(Landroid/location/Location;F)V
    .locals 0
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "bearingAccuracyD"    # F

    .line 611
    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    .line 612
    return-void
.end method

.method static setSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V
    .locals 0
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "speedAccuracyMps"    # F

    .line 596
    invoke-virtual {p0, p1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    .line 597
    return-void
.end method

.method static setVerticalAccuracyMeters(Landroid/location/Location;F)V
    .locals 0
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "verticalAccuracyM"    # F

    .line 581
    invoke-virtual {p0, p1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 582
    return-void
.end method
