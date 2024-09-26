.class public Landroidx/core/os/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/BuildCompat$Extensions30Impl;,
        Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;
    }
.end annotation


# static fields
.field public static final AD_SERVICES_EXTENSION_INT:I

.field public static final R_EXTENSION_INT:I

.field public static final S_EXTENSION_INT:I

.field public static final T_EXTENSION_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 278
    sget v0, Landroidx/core/os/BuildCompat$Extensions30Impl;->R:I

    sput v0, Landroidx/core/os/BuildCompat;->R_EXTENSION_INT:I

    .line 291
    sget v0, Landroidx/core/os/BuildCompat$Extensions30Impl;->S:I

    sput v0, Landroidx/core/os/BuildCompat;->S_EXTENSION_INT:I

    .line 305
    sget v0, Landroidx/core/os/BuildCompat$Extensions30Impl;->TIRAMISU:I

    sput v0, Landroidx/core/os/BuildCompat;->T_EXTENSION_INT:I

    .line 320
    sget v0, Landroidx/core/os/BuildCompat$Extensions30Impl;->AD_SERVICES:I

    sput v0, Landroidx/core/os/BuildCompat;->AD_SERVICES_EXTENSION_INT:I

    .line 319
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static isAtLeastN()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastNMR1()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastO()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastOMR1()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastP()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method protected static isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "codename"    # Ljava/lang/String;
    .param p1, "buildCodename"    # Ljava/lang/String;

    .line 58
    const-string v0, "REL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    return v1

    .line 64
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "buildCodenameUpper":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "codenameUpper":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isAtLeastQ()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastR()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastS()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    nop

    .line 181
    nop

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastSv2()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    nop

    .line 199
    nop

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastT()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    nop

    .line 220
    nop

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastU()Z
    .locals 1

    .line 235
    nop

    .line 237
    nop

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastV()Z
    .locals 2

    .line 252
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 253
    const-string v1, "VanillaIceCream"

    invoke-static {v1, v0}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0
.end method
