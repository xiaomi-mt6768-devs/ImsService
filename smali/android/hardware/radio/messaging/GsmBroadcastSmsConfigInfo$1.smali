.class Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo$1;
.super Ljava/lang/Object;
.source "GsmBroadcastSmsConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 17
    new-instance v0, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;-><init>()V

    .line 18
    .local v0, "_aidl_out":Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    invoke-virtual {v0, p1}, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 23
    new-array v0, p1, [Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo$1;->newArray(I)[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    move-result-object p1

    return-object p1
.end method
