.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.jvm.kt"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSparseArrayCompat.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n+ 2 SparseArrayCompat.kt\nandroidx/collection/SparseArrayCompatKt\n*L\n1#1,278:1\n274#2,9:279\n287#2,5:288\n295#2,5:293\n303#2,8:298\n319#2,9:306\n352#2,40:315\n395#2,2:355\n352#2,47:357\n402#2,3:404\n352#2,40:407\n406#2:447\n411#2,4:448\n418#2:452\n422#2,4:453\n430#2,8:457\n442#2,5:465\n450#2,4:470\n458#2,9:474\n471#2:483\n476#2:484\n458#2,9:485\n481#2,8:494\n492#2,17:502\n512#2,21:519\n*S KotlinDebug\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n*L\n135#1:279,9\n140#1:288,5\n149#1:293,5\n157#1:298,8\n168#1:306,9\n174#1:315,40\n181#1:355,2\n181#1:357,47\n191#1:404,3\n191#1:407,40\n191#1:447\n196#1:448,4\n210#1:452\n217#1:453,4\n223#1:457,8\n229#1:465,5\n239#1:470,4\n251#1:474,9\n254#1:483\n257#1:484\n257#1:485,9\n262#1:494,8\n268#1:502,17\n276#1:519,21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001d\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0013H\u0016J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0015\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0017J\u0018\u0010\u001d\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00020\u0004H\u0096\u0002\u00a2\u0006\u0002\u0010\u001eJ\u001d\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0015\u0010\"\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010#J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004H\u0016J\u001d\u0010&\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0018\u0010\'\u001a\u00020\u00132\u000e\u0010(\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000H\u0016J\u001f\u0010)\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010 J\u0010\u0010*\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u001a\u0010*\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010+\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0004H\u0016J\u0018\u0010,\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u001f\u0010-\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010 J%\u0010-\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010.\u001a\u00028\u00002\u0006\u0010/\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00100J\u001d\u00101\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0016J\u0008\u00102\u001a\u000203H\u0016J\u0015\u00104\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u0010\u001eR\u0012\u0010\u0006\u001a\u00020\u00078\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u00078G\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011\u00a8\u00065"
    }
    d2 = {
        "Landroidx/collection/SparseArrayCompat;",
        "E",
        "",
        "initialCapacity",
        "",
        "(I)V",
        "garbage",
        "",
        "isEmpty",
        "getIsEmpty",
        "()Z",
        "keys",
        "",
        "size",
        "values",
        "",
        "",
        "[Ljava/lang/Object;",
        "append",
        "",
        "key",
        "value",
        "(ILjava/lang/Object;)V",
        "clear",
        "clone",
        "containsKey",
        "containsValue",
        "(Ljava/lang/Object;)Z",
        "delete",
        "get",
        "(I)Ljava/lang/Object;",
        "defaultValue",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "indexOfKey",
        "indexOfValue",
        "(Ljava/lang/Object;)I",
        "keyAt",
        "index",
        "put",
        "putAll",
        "other",
        "putIfAbsent",
        "remove",
        "removeAt",
        "removeAtRange",
        "replace",
        "oldValue",
        "newValue",
        "(ILjava/lang/Object;Ljava/lang/Object;)Z",
        "setValueAt",
        "toString",
        "",
        "valueAt",
        "collection"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public synthetic garbage:Z

.field public synthetic keys:[I

.field public synthetic size:I

.field public synthetic values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    nop

    .line 86
    if-nez p1, :cond_0

    .line 87
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 88
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p1}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v0

    .line 91
    .local v0, "capacity":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 92
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 94
    .end local v0    # "capacity":I
    :goto_0
    nop

    .line 66
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 66
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 67
    const/16 p1, 0xa

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 277
    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 268
    move-object v0, p0

    .local v0, "$this$commonAppend$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 502
    .local v1, "$i$f$commonAppend":I
    iget v2, v0, Landroidx/collection/SparseArrayCompat;->size:I

    if-eqz v2, :cond_0

    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_0

    .line 503
    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 504
    goto :goto_0

    .line 506
    :cond_0
    iget-boolean v3, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 507
    invoke-static {v0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 509
    :cond_1
    iget v2, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 510
    .local v2, "pos$iv":I
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 511
    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v3

    .line 512
    .local v3, "n$iv":I
    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    const-string v5, "copyOf(this, newSize)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 513
    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 515
    .end local v3    # "n$iv":I
    :cond_2
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput p1, v3, v2

    .line 516
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 517
    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 518
    nop

    .line 268
    .end local v0    # "$this$commonAppend$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonAppend":I
    .end local v2    # "pos$iv":I
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 6

    .line 262
    move-object v0, p0

    .local v0, "$this$commonClear$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 494
    .local v1, "$i$f$commonClear":I
    iget v2, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 495
    .local v2, "n$iv":I
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 496
    .local v3, "values$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i$iv":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 497
    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 499
    .end local v4    # "i$iv":I
    :cond_0
    const/4 v4, 0x0

    iput v4, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 500
    iput-boolean v4, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 501
    nop

    .line 262
    .end local v0    # "$this$commonClear$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonClear":I
    .end local v2    # "n$iv":I
    .end local v3    # "values$iv":[Ljava/lang/Object;
    return-void
.end method

.method public clone()Landroidx/collection/SparseArrayCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "TE;>;"
        }
    .end annotation

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 99
    .local v0, "clone":Landroidx/collection/SparseArrayCompat;
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 100
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 101
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(I)Z
    .locals 3
    .param p1, "key"    # I

    .line 254
    move-object v0, p0

    .local v0, "$this$commonContainsKey$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 483
    .local v1, "$i$f$commonContainsKey":I
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 254
    .end local v0    # "$this$commonContainsKey$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonContainsKey":I
    :goto_0
    return v2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 257
    move-object v0, p0

    .local v0, "$this$commonContainsValue$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 484
    .local v1, "$i$f$commonContainsValue":I
    move-object v2, v0

    .local v2, "$this$commonIndexOfValue$iv$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v3, 0x0

    .line 485
    .local v3, "$i$f$commonIndexOfValue":I
    iget-boolean v4, v2, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v4, :cond_0

    .line 486
    invoke-static {v2}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 488
    :cond_0
    const/4 v4, 0x0

    .local v4, "i$iv$iv":I
    iget v5, v2, Landroidx/collection/SparseArrayCompat;->size:I

    :goto_0
    if-ge v4, v5, :cond_2

    .line 489
    iget-object v6, v2, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-ne v6, p1, :cond_1

    .line 490
    goto :goto_1

    .line 488
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 493
    .end local v4    # "i$iv$iv":I
    :cond_2
    const/4 v4, -0x1

    .line 484
    .end local v2    # "$this$commonIndexOfValue$iv$iv":Landroidx/collection/SparseArrayCompat;
    .end local v3    # "$i$f$commonIndexOfValue":I
    :goto_1
    if-ltz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 257
    .end local v0    # "$this$commonContainsValue$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonContainsValue":I
    :goto_2
    return v2
.end method

.method public delete(I)V
    .locals 0
    .param p1, "key"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "Alias for remove(int)."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "remove(key)"
            imports = {}
        .end subannotation
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->remove(I)V

    .line 121
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Landroidx/collection/SparseArrayCompatKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 113
    invoke-static {p0, p1, p2}, Landroidx/collection/SparseArrayCompatKt;->commonGet(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getIsEmpty()Z
    .locals 1

    .line 204
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public indexOfKey(I)I
    .locals 4
    .param p1, "key"    # I

    .line 239
    move-object v0, p0

    .local v0, "$this$commonIndexOfKey$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 470
    .local v1, "$i$f$commonIndexOfKey":I
    iget-boolean v2, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v2, :cond_0

    .line 471
    invoke-static {v0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 473
    :cond_0
    iget-object v2, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v2, v3, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v0

    .line 239
    .end local v0    # "$this$commonIndexOfKey$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonIndexOfKey":I
    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 251
    move-object v0, p0

    .local v0, "$this$commonIndexOfValue$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 474
    .local v1, "$i$f$commonIndexOfValue":I
    iget-boolean v2, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v2, :cond_0

    .line 475
    invoke-static {v0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 477
    :cond_0
    const/4 v2, 0x0

    .local v2, "i$iv":I
    iget v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    :goto_0
    if-ge v2, v3, :cond_2

    .line 478
    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-ne v4, p1, :cond_1

    .line 479
    goto :goto_1

    .line 477
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v2    # "i$iv":I
    :cond_2
    const/4 v2, -0x1

    .line 251
    .end local v0    # "$this$commonIndexOfValue$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonIndexOfValue":I
    :goto_1
    return v2
.end method

.method public isEmpty()Z
    .locals 3

    .line 210
    move-object v0, p0

    .local v0, "$this$commonIsEmpty$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 452
    .local v1, "$i$f$commonIsEmpty":I
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 210
    .end local v0    # "$this$commonIsEmpty$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonIsEmpty":I
    :goto_0
    return v2
.end method

.method public keyAt(I)I
    .locals 3
    .param p1, "index"    # I

    .line 217
    move-object v0, p0

    .local v0, "$this$commonKeyAt$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 453
    .local v1, "$i$f$commonKeyAt":I
    iget-boolean v2, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v2, :cond_0

    .line 454
    invoke-static {v0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 456
    :cond_0
    iget-object v2, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    aget v0, v2, p1

    .line 217
    .end local v0    # "$this$commonKeyAt$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonKeyAt":I
    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 6
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 174
    move-object v0, p0

    .local v0, "$this$commonPut$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 315
    .local v1, "$i$f$commonPut":I
    iget-object v2, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v2, v3, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v2

    .line 316
    .local v2, "i$iv":I
    if-ltz v2, :cond_0

    .line 317
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, v3, v2

    goto/16 :goto_0

    .line 319
    :cond_0
    not-int v2, v2

    .line 320
    iget v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 321
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput p1, v3, v2

    .line 322
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 323
    goto :goto_1

    .line 325
    :cond_1
    iget-boolean v3, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v3, :cond_2

    iget v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 326
    invoke-static {v0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 329
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v4, v0, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v3, v4, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v3

    not-int v2, v3

    .line 331
    :cond_2
    iget v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 332
    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v3

    .line 333
    .local v3, "n$iv":I
    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    const-string v5, "copyOf(this, newSize)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 334
    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 336
    .end local v3    # "n$iv":I
    :cond_3
    iget v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    sub-int v4, v3, v2

    if-eqz v4, :cond_4

    .line 337
    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 338
    nop

    .line 339
    add-int/lit8 v5, v2, 0x1

    .line 340
    nop

    .line 341
    nop

    .line 337
    invoke-static {v4, v4, v5, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 343
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 344
    nop

    .line 345
    add-int/lit8 v4, v2, 0x1

    .line 346
    nop

    .line 347
    iget v5, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 343
    invoke-static {v3, v3, v4, v2, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 350
    :cond_4
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput p1, v3, v2

    .line 351
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 352
    iget v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 354
    :goto_0
    nop

    .line 174
    .end local v0    # "$this$commonPut$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonPut":I
    .end local v2    # "i$iv":I
    :goto_1
    return-void
.end method

.method public putAll(Landroidx/collection/SparseArrayCompat;)V
    .locals 12
    .param p1, "other"    # Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    move-object v0, p0

    .local v0, "$this$commonPutAll$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 355
    .local v1, "$i$f$commonPutAll":I
    const/4 v2, 0x0

    .local v2, "i$iv":I
    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_5

    .line 356
    invoke-virtual {p1, v2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v4

    .local v4, "key$iv$iv":I
    invoke-virtual {p1, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .local v5, "value$iv$iv":Ljava/lang/Object;
    move-object v6, v0

    .local v6, "$this$commonPut$iv$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v7, 0x0

    .line 357
    .local v7, "$i$f$commonPut":I
    iget-object v8, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v9, v6, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v8, v9, v4}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v8

    .line 358
    .local v8, "i$iv$iv":I
    if-ltz v8, :cond_0

    .line 359
    iget-object v9, v6, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object v5, v9, v8

    goto/16 :goto_1

    .line 361
    :cond_0
    not-int v8, v8

    .line 362
    iget v9, v6, Landroidx/collection/SparseArrayCompat;->size:I

    if-ge v8, v9, :cond_1

    iget-object v9, v6, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v9, v9, v8

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_1

    .line 363
    iget-object v9, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput v4, v9, v8

    .line 364
    iget-object v9, v6, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object v5, v9, v8

    .line 365
    goto :goto_2

    .line 367
    :cond_1
    iget-boolean v9, v6, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v9, :cond_2

    iget v9, v6, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v10, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v10, v10

    if-lt v9, v10, :cond_2

    .line 368
    invoke-static {v6}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 371
    iget-object v9, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v10, v6, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v9, v10, v4}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v9

    not-int v8, v9

    .line 373
    :cond_2
    iget v9, v6, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v10, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v10, v10

    if-lt v9, v10, :cond_3

    .line 374
    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v9

    .line 375
    .local v9, "n$iv$iv":I
    iget-object v10, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    const-string v11, "copyOf(this, newSize)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 376
    iget-object v10, v6, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v6, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 378
    .end local v9    # "n$iv$iv":I
    :cond_3
    iget v9, v6, Landroidx/collection/SparseArrayCompat;->size:I

    sub-int v10, v9, v8

    if-eqz v10, :cond_4

    .line 379
    iget-object v10, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 380
    nop

    .line 381
    add-int/lit8 v11, v8, 0x1

    .line 382
    nop

    .line 383
    nop

    .line 379
    invoke-static {v10, v10, v11, v8, v9}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 385
    iget-object v9, v6, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 386
    nop

    .line 387
    add-int/lit8 v10, v8, 0x1

    .line 388
    nop

    .line 389
    iget v11, v6, Landroidx/collection/SparseArrayCompat;->size:I

    .line 385
    invoke-static {v9, v9, v10, v8, v11}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 392
    :cond_4
    iget-object v9, v6, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput v4, v9, v8

    .line 393
    iget-object v9, v6, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object v5, v9, v8

    .line 394
    iget v9, v6, Landroidx/collection/SparseArrayCompat;->size:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Landroidx/collection/SparseArrayCompat;->size:I

    .line 396
    :goto_1
    nop

    .line 355
    .end local v4    # "key$iv$iv":I
    .end local v5    # "value$iv$iv":Ljava/lang/Object;
    .end local v6    # "$this$commonPut$iv$iv":Landroidx/collection/SparseArrayCompat;
    .end local v7    # "$i$f$commonPut":I
    .end local v8    # "i$iv$iv":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 403
    .end local v2    # "i$iv":I
    :cond_5
    nop

    .line 181
    .end local v0    # "$this$commonPutAll$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonPutAll":I
    return-void
.end method

.method public putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 191
    move-object v0, p0

    .local v0, "$this$commonPutIfAbsent$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 404
    .local v1, "$i$f$commonPutIfAbsent":I
    invoke-static {v0, p1}, Landroidx/collection/SparseArrayCompatKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    move-result-object v2

    .line 405
    .local v2, "mapValue$iv":Ljava/lang/Object;
    if-nez v2, :cond_5

    .line 406
    move-object v3, v0

    .local v3, "$this$commonPut$iv$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v4, 0x0

    .line 407
    .local v4, "$i$f$commonPut":I
    iget-object v5, v3, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v6, v3, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v5, v6, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v5

    .line 408
    .local v5, "i$iv$iv":I
    if-ltz v5, :cond_0

    .line 409
    iget-object v6, v3, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, v6, v5

    goto/16 :goto_0

    .line 411
    :cond_0
    not-int v5, v5

    .line 412
    iget v6, v3, Landroidx/collection/SparseArrayCompat;->size:I

    if-ge v5, v6, :cond_1

    iget-object v6, v3, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 413
    iget-object v6, v3, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput p1, v6, v5

    .line 414
    iget-object v6, v3, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, v6, v5

    .line 415
    goto :goto_1

    .line 417
    :cond_1
    iget-boolean v6, v3, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v6, :cond_2

    iget v6, v3, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v7, v3, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v7, v7

    if-lt v6, v7, :cond_2

    .line 418
    invoke-static {v3}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 421
    iget-object v6, v3, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v7, v3, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v6, v7, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v6

    not-int v5, v6

    .line 423
    :cond_2
    iget v6, v3, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v7, v3, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v7, v7

    if-lt v6, v7, :cond_3

    .line 424
    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v6

    .line 425
    .local v6, "n$iv$iv":I
    iget-object v7, v3, Landroidx/collection/SparseArrayCompat;->keys:[I

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    const-string v8, "copyOf(this, newSize)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v3, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 426
    iget-object v7, v3, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v3, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 428
    .end local v6    # "n$iv$iv":I
    :cond_3
    iget v6, v3, Landroidx/collection/SparseArrayCompat;->size:I

    sub-int v7, v6, v5

    if-eqz v7, :cond_4

    .line 429
    iget-object v7, v3, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 430
    nop

    .line 431
    add-int/lit8 v8, v5, 0x1

    .line 432
    nop

    .line 433
    nop

    .line 429
    invoke-static {v7, v7, v8, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 435
    iget-object v6, v3, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 436
    nop

    .line 437
    add-int/lit8 v7, v5, 0x1

    .line 438
    nop

    .line 439
    iget v8, v3, Landroidx/collection/SparseArrayCompat;->size:I

    .line 435
    invoke-static {v6, v6, v7, v5, v8}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 442
    :cond_4
    iget-object v6, v3, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput p1, v6, v5

    .line 443
    iget-object v6, v3, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, v6, v5

    .line 444
    iget v6, v3, Landroidx/collection/SparseArrayCompat;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroidx/collection/SparseArrayCompat;->size:I

    .line 446
    :goto_0
    nop

    .line 447
    .end local v3    # "$this$commonPut$iv$iv":Landroidx/collection/SparseArrayCompat;
    .end local v4    # "$i$f$commonPut":I
    .end local v5    # "i$iv$iv":I
    :cond_5
    :goto_1
    nop

    .line 191
    .end local v0    # "$this$commonPutIfAbsent$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonPutIfAbsent":I
    .end local v2    # "mapValue$iv":Ljava/lang/Object;
    return-object v2
.end method

.method public remove(I)V
    .locals 0
    .param p1, "key"    # I

    .line 126
    invoke-static {p0, p1}, Landroidx/collection/SparseArrayCompatKt;->commonRemove(Landroidx/collection/SparseArrayCompat;I)V

    return-void
.end method

.method public remove(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 135
    move-object v0, p0

    .local v0, "$this$commonRemove$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 279
    .local v1, "$i$f$commonRemove":I
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v2

    .line 280
    .local v2, "index$iv":I
    if-ltz v2, :cond_0

    .line 281
    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 282
    .local v3, "mapValue$iv":Ljava/lang/Object;
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    invoke-virtual {v0, v2}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 284
    const/4 v4, 0x1

    goto :goto_0

    .line 287
    .end local v3    # "mapValue$iv":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    .line 135
    .end local v0    # "$this$commonRemove$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonRemove":I
    .end local v2    # "index$iv":I
    :goto_0
    return v4
.end method

.method public removeAt(I)V
    .locals 4
    .param p1, "index"    # I

    .line 140
    move-object v0, p0

    .local v0, "$this$commonRemoveAt$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 288
    .local v1, "$i$f$commonRemoveAt":I
    iget-object v2, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 289
    iget-object v2, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    .line 290
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    .line 292
    :cond_0
    nop

    .line 140
    .end local v0    # "$this$commonRemoveAt$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonRemoveAt":I
    return-void
.end method

.method public removeAtRange(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 149
    move-object v0, p0

    .local v0, "$this$commonRemoveAtRange$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 293
    .local v1, "$i$f$commonRemoveAtRange":I
    add-int v2, p1, p2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 294
    .local v2, "end$iv":I
    move v3, p1

    .local v3, "i$iv":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 295
    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 297
    .end local v3    # "i$iv":I
    :cond_0
    nop

    .line 149
    .end local v0    # "$this$commonRemoveAtRange$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonRemoveAtRange":I
    .end local v2    # "end$iv":I
    return-void
.end method

.method public replace(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 157
    move-object v0, p0

    .local v0, "$this$commonReplace$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 298
    .local v1, "$i$f$commonReplace":I
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v2

    .line 299
    .local v2, "index$iv":I
    if-ltz v2, :cond_0

    .line 301
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 302
    .local v4, "oldValue$iv":Ljava/lang/Object;
    aput-object p2, v3, v2

    .line 303
    goto :goto_0

    .line 305
    .end local v4    # "oldValue$iv":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    .line 157
    .end local v0    # "$this$commonReplace$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonReplace":I
    .end local v2    # "index$iv":I
    :goto_0
    return-object v4
.end method

.method public replace(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # I
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .line 168
    move-object v0, p0

    .local v0, "$this$commonReplace$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 306
    .local v1, "$i$f$commonReplace":I
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v2

    .line 307
    .local v2, "index$iv":I
    if-ltz v2, :cond_0

    .line 308
    iget-object v3, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 309
    .local v3, "mapValue$iv":Ljava/lang/Object;
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    iget-object v4, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p3, v4, v2

    .line 311
    const/4 v4, 0x1

    goto :goto_0

    .line 314
    .end local v3    # "mapValue$iv":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    .line 168
    .end local v0    # "$this$commonReplace$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonReplace":I
    .end local v2    # "index$iv":I
    :goto_0
    return v4
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 229
    move-object v0, p0

    .local v0, "$this$commonSetValueAt$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 465
    .local v1, "$i$f$commonSetValueAt":I
    iget-boolean v2, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v2, :cond_0

    .line 466
    invoke-static {v0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 468
    :cond_0
    iget-object v2, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, v2, p1

    .line 469
    nop

    .line 229
    .end local v0    # "$this$commonSetValueAt$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonSetValueAt":I
    return-void
.end method

.method public size()I
    .locals 3

    .line 196
    move-object v0, p0

    .local v0, "$this$commonSize$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 448
    .local v1, "$i$f$commonSize":I
    iget-boolean v2, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v2, :cond_0

    .line 449
    invoke-static {v0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 451
    :cond_0
    iget v0, v0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 196
    .end local v0    # "$this$commonSize$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonSize":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 276
    move-object v0, p0

    .local v0, "$this$commonToString$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 519
    .local v1, "$i$f$commonToString":I
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 520
    const-string v2, "{}"

    goto :goto_2

    .line 522
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Landroidx/collection/SparseArrayCompat;->size:I

    mul-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 523
    .local v2, "buffer$iv":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    const/4 v3, 0x0

    .local v3, "i$iv":I
    iget v4, v0, Landroidx/collection/SparseArrayCompat;->size:I

    :goto_0
    if-ge v3, v4, :cond_3

    .line 525
    if-lez v3, :cond_1

    .line 526
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v5

    .line 529
    .local v5, "key$iv":I
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 532
    .local v6, "value$iv":Ljava/lang/Object;
    if-eq v6, v0, :cond_2

    .line 533
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 535
    :cond_2
    const-string v7, "(this Map)"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .end local v5    # "key$iv":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 538
    .end local v3    # "i$iv":I
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "buffer.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    .line 276
    .end local v0    # "$this$commonToString$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonToString":I
    .end local v2    # "buffer$iv":Ljava/lang/StringBuilder;
    :goto_2
    return-object v2
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 223
    move-object v0, p0

    .local v0, "$this$commonValueAt$iv":Landroidx/collection/SparseArrayCompat;
    const/4 v1, 0x0

    .line 457
    .local v1, "$i$f$commonValueAt":I
    iget-boolean v2, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v2, :cond_0

    .line 458
    invoke-static {v0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 464
    :cond_0
    iget-object v2, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v0, v2, p1

    .line 223
    .end local v0    # "$this$commonValueAt$iv":Landroidx/collection/SparseArrayCompat;
    .end local v1    # "$i$f$commonValueAt":I
    return-object v0
.end method
