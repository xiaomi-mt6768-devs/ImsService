.class public Landroidx/collection/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.jvm.kt"

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
    value = "SMAP\nLongSparseArray.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongSparseArray.jvm.kt\nandroidx/collection/LongSparseArray\n+ 2 LongSparseArray.kt\nandroidx/collection/LongSparseArrayKt\n*L\n1#1,258:1\n243#2:259\n256#2,6:260\n248#2,14:266\n267#2,8:280\n267#2,8:288\n278#2,9:296\n291#2,5:305\n299#2,8:310\n315#2,9:318\n349#2,12:327\n328#2,18:339\n363#2,26:357\n392#2,5:383\n400#2,5:388\n409#2,2:393\n328#2,18:395\n412#2:413\n416#2:414\n420#2,6:415\n328#2,18:421\n427#2:439\n432#2,6:440\n328#2,18:446\n441#2:464\n446#2,6:465\n328#2,18:471\n453#2,2:489\n458#2,2:491\n328#2,18:493\n461#2:511\n466#2,2:512\n328#2,18:514\n469#2,6:532\n479#2:538\n484#2:539\n489#2,8:540\n500#2,6:548\n328#2,18:554\n507#2,10:572\n520#2,21:582\n*S KotlinDebug\n*F\n+ 1 LongSparseArray.jvm.kt\nandroidx/collection/LongSparseArray\n*L\n97#1:259\n97#1:260,6\n104#1:266,14\n110#1:280,8\n115#1:288,8\n124#1:296,9\n129#1:305,5\n138#1:310,8\n149#1:318,9\n155#1:327,12\n155#1:339,18\n155#1:357,26\n161#1:383,5\n172#1:388,5\n177#1:393,2\n177#1:395,18\n177#1:413\n184#1:414\n196#1:415,6\n196#1:421,18\n196#1:439\n208#1:440,6\n208#1:446,18\n208#1:464\n216#1:465,6\n216#1:471,18\n216#1:489,2\n223#1:491,2\n223#1:493,18\n223#1:511\n232#1:512,2\n232#1:514,18\n232#1:532,6\n235#1:538\n238#1:539\n243#1:540,8\n249#1:548,6\n249#1:554,18\n249#1:572,10\n257#1:582,21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0016\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001d\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0010H\u0016J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0015\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0017J\u0018\u0010\u001b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0011\u001a\u00020\u0012H\u0096\u0002\u00a2\u0006\u0002\u0010\u001cJ\u001d\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0015\u0010 \u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020\u0007H\u0016J\u0010\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0004H\u0016J\u001d\u0010%\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010&\u001a\u00020\u00102\u000e\u0010\'\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000H\u0016J\u001f\u0010(\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010)\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001d\u0010)\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010*J\u0010\u0010+\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0004H\u0016J\u001f\u0010,\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001eJ%\u0010,\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010-\u001a\u00028\u00002\u0006\u0010.\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010/J\u001d\u00100\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00101J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u00102\u001a\u000203H\u0016J\u0015\u00104\u001a\u00028\u00002\u0006\u0010$\u001a\u00020\u0004H\u0016\u00a2\u0006\u0002\u00105R\u0012\u0010\u0006\u001a\u00020\u00078\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000e\u00a8\u00066"
    }
    d2 = {
        "Landroidx/collection/LongSparseArray;",
        "E",
        "",
        "initialCapacity",
        "",
        "(I)V",
        "garbage",
        "",
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
        "",
        "value",
        "(JLjava/lang/Object;)V",
        "clear",
        "clone",
        "containsKey",
        "containsValue",
        "(Ljava/lang/Object;)Z",
        "delete",
        "get",
        "(J)Ljava/lang/Object;",
        "defaultValue",
        "(JLjava/lang/Object;)Ljava/lang/Object;",
        "indexOfKey",
        "indexOfValue",
        "(Ljava/lang/Object;)I",
        "isEmpty",
        "keyAt",
        "index",
        "put",
        "putAll",
        "other",
        "putIfAbsent",
        "remove",
        "(JLjava/lang/Object;)Z",
        "removeAt",
        "replace",
        "oldValue",
        "newValue",
        "(JLjava/lang/Object;Ljava/lang/Object;)Z",
        "setValueAt",
        "(ILjava/lang/Object;)V",
        "toString",
        "",
        "valueAt",
        "(I)Ljava/lang/Object;",
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

.field public synthetic keys:[J

.field public synthetic size:I

.field public synthetic values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/LongSparseArray;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    nop

    .line 76
    if-nez p1, :cond_0

    .line 77
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_LONGS:[J

    iput-object v0, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 78
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p1}, Landroidx/collection/internal/ContainerHelpersKt;->idealLongArraySize(I)I

    move-result v0

    .line 81
    .local v0, "idealCapacity":I
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 82
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 84
    .end local v0    # "idealCapacity":I
    :goto_0
    nop

    .line 58
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 58
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 258
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 12
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 249
    move-object v0, p0

    .local v0, "$this$commonAppend$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 548
    .local v1, "$i$f$commonAppend":I
    iget v2, v0, Landroidx/collection/LongSparseArray;->size:I

    if-eqz v2, :cond_0

    iget-object v3, v0, Landroidx/collection/LongSparseArray;->keys:[J

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 549
    invoke-virtual {v0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 550
    goto :goto_1

    .line 552
    :cond_0
    iget-boolean v3, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroidx/collection/LongSparseArray;->keys:[J

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 553
    move-object v2, v0

    .local v2, "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 554
    .local v3, "$i$f$commonGc":I
    iget v4, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 555
    .local v4, "n$iv$iv":I
    const/4 v5, 0x0

    .line 556
    .local v5, "newSize$iv$iv":I
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 557
    .local v6, "keys$iv$iv":[J
    iget-object v7, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 558
    .local v7, "values$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    :goto_0
    if-ge v8, v4, :cond_3

    .line 559
    aget-object v9, v7, v8

    .line 560
    .local v9, "value$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_2

    .line 561
    if-eq v8, v5, :cond_1

    .line 562
    aget-wide v10, v6, v8

    aput-wide v10, v6, v5

    .line 563
    aput-object v9, v7, v5

    .line 564
    const/4 v10, 0x0

    aput-object v10, v7, v8

    .line 566
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 558
    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 569
    .end local v8    # "i$iv$iv":I
    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 570
    iput v5, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 571
    nop

    .line 572
    .end local v2    # "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGc":I
    .end local v4    # "n$iv$iv":I
    .end local v5    # "newSize$iv$iv":I
    .end local v6    # "keys$iv$iv":[J
    .end local v7    # "values$iv$iv":[Ljava/lang/Object;
    :cond_4
    iget v2, v0, Landroidx/collection/LongSparseArray;->size:I

    .line 573
    .local v2, "pos$iv":I
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->keys:[J

    array-length v3, v3

    if-lt v2, v3, :cond_5

    .line 574
    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Landroidx/collection/internal/ContainerHelpersKt;->idealLongArraySize(I)I

    move-result v3

    .line 575
    .local v3, "newSize$iv":I
    iget-object v4, v0, Landroidx/collection/LongSparseArray;->keys:[J

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    const-string v5, "copyOf(this, newSize)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 576
    iget-object v4, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 578
    .end local v3    # "newSize$iv":I
    :cond_5
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->keys:[J

    aput-wide p1, v3, v2

    .line 579
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p3, v3, v2

    .line 580
    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Landroidx/collection/LongSparseArray;->size:I

    .line 581
    nop

    .line 249
    .end local v0    # "$this$commonAppend$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonAppend":I
    .end local v2    # "pos$iv":I
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 6

    .line 243
    move-object v0, p0

    .local v0, "$this$commonClear$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 540
    .local v1, "$i$f$commonClear":I
    iget v2, v0, Landroidx/collection/LongSparseArray;->size:I

    .line 541
    .local v2, "n$iv":I
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 542
    .local v3, "values$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i$iv":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 543
    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 542
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 545
    .end local v4    # "i$iv":I
    :cond_0
    const/4 v4, 0x0

    iput v4, v0, Landroidx/collection/LongSparseArray;->size:I

    .line 546
    iput-boolean v4, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 547
    nop

    .line 243
    .end local v0    # "$this$commonClear$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonClear":I
    .end local v2    # "n$iv":I
    .end local v3    # "values$iv":[Ljava/lang/Object;
    return-void
.end method

.method public clone()Landroidx/collection/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 88
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 89
    .local v0, "clone":Landroidx/collection/LongSparseArray;
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 90
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 91
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clone()Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(J)Z
    .locals 3
    .param p1, "key"    # J

    .line 235
    move-object v0, p0

    .local v0, "$this$commonContainsKey$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 538
    .local v1, "$i$f$commonContainsKey":I
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 235
    .end local v0    # "$this$commonContainsKey$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonContainsKey":I
    :goto_0
    return v2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 238
    move-object v0, p0

    .local v0, "$this$commonContainsValue$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 539
    .local v1, "$i$f$commonContainsValue":I
    invoke-virtual {v0, p1}, Landroidx/collection/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 238
    .end local v0    # "$this$commonContainsValue$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonContainsValue":I
    :goto_0
    return v2
.end method

.method public delete(J)V
    .locals 5
    .param p1, "key"    # J
    .annotation runtime Lkotlin/Deprecated;
        message = "Alias for `remove(key)`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "remove(key)"
            imports = {}
        .end subannotation
    .end annotation

    .line 110
    move-object v0, p0

    .local v0, "$this$commonRemove$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 280
    .local v1, "$i$f$commonRemove":I
    iget-object v2, v0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v3, v0, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v2, v3, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v2

    .line 281
    .local v2, "i$iv":I
    if-ltz v2, :cond_0

    .line 282
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 283
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 284
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 287
    :cond_0
    nop

    .line 110
    .end local v0    # "$this$commonRemove$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonRemove":I
    .end local v2    # "i$iv":I
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .line 97
    move-object v0, p0

    .local v0, "$this$commonGet$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 259
    .local v1, "$i$f$commonGet":I
    const/4 v2, 0x0

    .local v2, "defaultValue$iv$iv":Ljava/lang/Object;
    move-object v3, v0

    .local v3, "$this$commonGetInternal$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v4, 0x0

    .line 260
    .local v4, "$i$f$commonGetInternal":I
    iget-object v5, v3, Landroidx/collection/LongSparseArray;->keys:[J

    iget v6, v3, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v5, v6, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v5

    .line 261
    .local v5, "i$iv$iv":I
    if-ltz v5, :cond_1

    iget-object v6, v3, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iget-object v6, v3, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v6, v6, v5

    goto :goto_1

    .line 262
    :cond_1
    :goto_0
    move-object v6, v2

    .line 261
    :goto_1
    nop

    .line 259
    .end local v2    # "defaultValue$iv$iv":Ljava/lang/Object;
    .end local v3    # "$this$commonGetInternal$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v4    # "$i$f$commonGetInternal":I
    .end local v5    # "i$iv$iv":I
    nop

    .line 97
    .end local v0    # "$this$commonGet$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonGet":I
    return-object v6
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 104
    move-object v0, p0

    .local v0, "$this$commonGet$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 266
    .local v1, "$i$f$commonGet":I
    move-object v2, v0

    .local v2, "$this$commonGetInternal$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 274
    .local v3, "$i$f$commonGetInternal":I
    iget-object v4, v2, Landroidx/collection/LongSparseArray;->keys:[J

    iget v5, v2, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v4, v5, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v4

    .line 275
    .local v4, "i$iv$iv":I
    if-ltz v4, :cond_1

    iget-object v5, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v5, v5, v4

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    iget-object v5, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v5, v5, v4

    goto :goto_1

    .line 276
    :cond_1
    :goto_0
    move-object v5, p3

    .line 275
    :goto_1
    nop

    .line 266
    .end local v2    # "$this$commonGetInternal$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGetInternal":I
    .end local v4    # "i$iv$iv":I
    nop

    .line 104
    .end local v0    # "$this$commonGet$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonGet":I
    return-object v5
.end method

.method public indexOfKey(J)I
    .locals 12
    .param p1, "key"    # J

    .line 223
    move-object v0, p0

    .local v0, "$this$commonIndexOfKey$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 491
    .local v1, "$i$f$commonIndexOfKey":I
    iget-boolean v2, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v2, :cond_3

    .line 492
    move-object v2, v0

    .local v2, "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 493
    .local v3, "$i$f$commonGc":I
    iget v4, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 494
    .local v4, "n$iv$iv":I
    const/4 v5, 0x0

    .line 495
    .local v5, "newSize$iv$iv":I
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 496
    .local v6, "keys$iv$iv":[J
    iget-object v7, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 497
    .local v7, "values$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 498
    aget-object v9, v7, v8

    .line 499
    .local v9, "value$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 500
    if-eq v8, v5, :cond_0

    .line 501
    aget-wide v10, v6, v8

    aput-wide v10, v6, v5

    .line 502
    aput-object v9, v7, v5

    .line 503
    const/4 v10, 0x0

    aput-object v10, v7, v8

    .line 505
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 497
    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 508
    .end local v8    # "i$iv$iv":I
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 509
    iput v5, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 510
    nop

    .line 511
    .end local v2    # "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGc":I
    .end local v4    # "n$iv$iv":I
    .end local v5    # "newSize$iv$iv":I
    .end local v6    # "keys$iv$iv":[J
    .end local v7    # "values$iv$iv":[Ljava/lang/Object;
    :cond_3
    iget-object v2, v0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v3, v0, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v2, v3, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v0

    .line 223
    .end local v0    # "$this$commonIndexOfKey$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonIndexOfKey":I
    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 13
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 232
    move-object v0, p0

    .local v0, "$this$commonIndexOfValue$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 512
    .local v1, "$i$f$commonIndexOfValue":I
    iget-boolean v2, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 513
    move-object v2, v0

    .local v2, "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v4, 0x0

    .line 514
    .local v4, "$i$f$commonGc":I
    iget v5, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 515
    .local v5, "n$iv$iv":I
    const/4 v6, 0x0

    .line 516
    .local v6, "newSize$iv$iv":I
    iget-object v7, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 517
    .local v7, "keys$iv$iv":[J
    iget-object v8, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 518
    .local v8, "values$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    :goto_0
    if-ge v9, v5, :cond_2

    .line 519
    aget-object v10, v8, v9

    .line 520
    .local v10, "value$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v11

    if-eq v10, v11, :cond_1

    .line 521
    if-eq v9, v6, :cond_0

    .line 522
    aget-wide v11, v7, v9

    aput-wide v11, v7, v6

    .line 523
    aput-object v10, v8, v6

    .line 524
    const/4 v11, 0x0

    aput-object v11, v8, v9

    .line 526
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 518
    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 529
    .end local v9    # "i$iv$iv":I
    :cond_2
    iput-boolean v3, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 530
    iput v6, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 531
    nop

    .line 532
    .end local v2    # "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v4    # "$i$f$commonGc":I
    .end local v5    # "n$iv$iv":I
    .end local v6    # "newSize$iv$iv":I
    .end local v7    # "keys$iv$iv":[J
    .end local v8    # "values$iv$iv":[Ljava/lang/Object;
    :cond_3
    iget v2, v0, Landroidx/collection/LongSparseArray;->size:I

    :goto_1
    if-ge v3, v2, :cond_5

    move v4, v3

    .local v4, "i$iv":I
    const/4 v5, 0x0

    .line 533
    .local v5, "$i$a$-repeat-LongSparseArrayKt$commonIndexOfValue$1$iv":I
    iget-object v6, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-ne v6, p1, :cond_4

    .line 534
    goto :goto_2

    .line 536
    :cond_4
    nop

    .line 532
    .end local v4    # "i$iv":I
    .end local v5    # "$i$a$-repeat-LongSparseArrayKt$commonIndexOfValue$1$iv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 537
    :cond_5
    const/4 v4, -0x1

    .line 232
    .end local v0    # "$this$commonIndexOfValue$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonIndexOfValue":I
    :goto_2
    return v4
.end method

.method public isEmpty()Z
    .locals 3

    .line 184
    move-object v0, p0

    .local v0, "$this$commonIsEmpty$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 414
    .local v1, "$i$f$commonIsEmpty":I
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 184
    .end local v0    # "$this$commonIsEmpty$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonIsEmpty":I
    :goto_0
    return v2
.end method

.method public keyAt(I)J
    .locals 13
    .param p1, "index"    # I

    .line 196
    move-object v0, p0

    .local v0, "$this$commonKeyAt$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 415
    .local v1, "$i$f$commonKeyAt":I
    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget v3, v0, Landroidx/collection/LongSparseArray;->size:I

    if-ge p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_5

    .line 419
    iget-boolean v3, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v3, :cond_4

    .line 420
    move-object v3, v0

    .local v3, "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v4, 0x0

    .line 421
    .local v4, "$i$f$commonGc":I
    iget v5, v3, Landroidx/collection/LongSparseArray;->size:I

    .line 422
    .local v5, "n$iv$iv":I
    const/4 v6, 0x0

    .line 423
    .local v6, "newSize$iv$iv":I
    iget-object v7, v3, Landroidx/collection/LongSparseArray;->keys:[J

    .line 424
    .local v7, "keys$iv$iv":[J
    iget-object v8, v3, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 425
    .local v8, "values$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    :goto_1
    if-ge v9, v5, :cond_3

    .line 426
    aget-object v10, v8, v9

    .line 427
    .local v10, "value$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v11

    if-eq v10, v11, :cond_2

    .line 428
    if-eq v9, v6, :cond_1

    .line 429
    aget-wide v11, v7, v9

    aput-wide v11, v7, v6

    .line 430
    aput-object v10, v8, v6

    .line 431
    const/4 v11, 0x0

    aput-object v11, v8, v9

    .line 433
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 425
    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 436
    .end local v9    # "i$iv$iv":I
    :cond_3
    iput-boolean v2, v3, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 437
    iput v6, v3, Landroidx/collection/LongSparseArray;->size:I

    .line 438
    nop

    .line 439
    .end local v3    # "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v4    # "$i$f$commonGc":I
    .end local v5    # "n$iv$iv":I
    .end local v6    # "newSize$iv$iv":I
    .end local v7    # "keys$iv$iv":[J
    .end local v8    # "values$iv$iv":[Ljava/lang/Object;
    :cond_4
    iget-object v2, v0, Landroidx/collection/LongSparseArray;->keys:[J

    aget-wide v0, v2, p1

    .line 196
    .end local v0    # "$this$commonKeyAt$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonKeyAt":I
    return-wide v0

    .line 415
    .restart local v0    # "$this$commonKeyAt$iv":Landroidx/collection/LongSparseArray;
    .restart local v1    # "$i$f$commonKeyAt":I
    :cond_5
    const/4 v2, 0x0

    .line 416
    .local v2, "$i$a$-require-LongSparseArrayKt$commonKeyAt$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected index to be within 0..size()-1, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .end local v2    # "$i$a$-require-LongSparseArrayKt$commonKeyAt$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public put(JLjava/lang/Object;)V
    .locals 15
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .line 155
    move-wide/from16 v0, p1

    move-object v2, p0

    .local v2, "$this$commonPut$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 327
    .local v3, "$i$f$commonPut":I
    iget-object v4, v2, Landroidx/collection/LongSparseArray;->keys:[J

    iget v5, v2, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v4, v5, v0, v1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v4

    .line 328
    .local v4, "index$iv":I
    if-ltz v4, :cond_0

    .line 329
    iget-object v5, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p3, v5, v4

    goto/16 :goto_1

    .line 331
    :cond_0
    not-int v4, v4

    .line 332
    iget v5, v2, Landroidx/collection/LongSparseArray;->size:I

    if-ge v4, v5, :cond_1

    iget-object v5, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v5, v5, v4

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 333
    iget-object v5, v2, Landroidx/collection/LongSparseArray;->keys:[J

    aput-wide v0, v5, v4

    .line 334
    iget-object v5, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p3, v5, v4

    .line 335
    goto/16 :goto_2

    .line 337
    :cond_1
    iget-boolean v5, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v5, :cond_5

    iget v5, v2, Landroidx/collection/LongSparseArray;->size:I

    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    array-length v6, v6

    if-lt v5, v6, :cond_5

    .line 338
    move-object v5, v2

    .local v5, "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v6, 0x0

    .line 339
    .local v6, "$i$f$commonGc":I
    iget v7, v5, Landroidx/collection/LongSparseArray;->size:I

    .line 340
    .local v7, "n$iv$iv":I
    const/4 v8, 0x0

    .line 341
    .local v8, "newSize$iv$iv":I
    iget-object v9, v5, Landroidx/collection/LongSparseArray;->keys:[J

    .line 342
    .local v9, "keys$iv$iv":[J
    iget-object v10, v5, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 343
    .local v10, "values$iv$iv":[Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "i$iv$iv":I
    :goto_0
    if-ge v11, v7, :cond_4

    .line 344
    aget-object v12, v10, v11

    .line 345
    .local v12, "value$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v13

    if-eq v12, v13, :cond_3

    .line 346
    if-eq v11, v8, :cond_2

    .line 347
    aget-wide v13, v9, v11

    aput-wide v13, v9, v8

    .line 348
    aput-object v12, v10, v8

    .line 349
    const/4 v13, 0x0

    aput-object v13, v10, v11

    .line 351
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 343
    .end local v12    # "value$iv$iv":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 354
    .end local v11    # "i$iv$iv":I
    :cond_4
    const/4 v11, 0x0

    iput-boolean v11, v5, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 355
    iput v8, v5, Landroidx/collection/LongSparseArray;->size:I

    .line 356
    nop

    .line 357
    .end local v5    # "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v6    # "$i$f$commonGc":I
    .end local v7    # "n$iv$iv":I
    .end local v8    # "newSize$iv$iv":I
    .end local v9    # "keys$iv$iv":[J
    .end local v10    # "values$iv$iv":[Ljava/lang/Object;
    iget-object v5, v2, Landroidx/collection/LongSparseArray;->keys:[J

    iget v6, v2, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v5, v6, v0, v1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v5

    not-int v4, v5

    .line 359
    :cond_5
    iget v5, v2, Landroidx/collection/LongSparseArray;->size:I

    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    array-length v6, v6

    if-lt v5, v6, :cond_6

    .line 360
    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Landroidx/collection/internal/ContainerHelpersKt;->idealLongArraySize(I)I

    move-result v5

    .line 361
    .local v5, "newSize$iv":I
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    const-string v7, "copyOf(this, newSize)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 362
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 364
    .end local v5    # "newSize$iv":I
    :cond_6
    iget v5, v2, Landroidx/collection/LongSparseArray;->size:I

    sub-int v6, v5, v4

    if-eqz v6, :cond_7

    .line 365
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 366
    nop

    .line 367
    add-int/lit8 v7, v4, 0x1

    .line 368
    nop

    .line 369
    nop

    .line 365
    invoke-static {v6, v6, v7, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)[J

    .line 371
    iget-object v5, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 372
    nop

    .line 373
    add-int/lit8 v6, v4, 0x1

    .line 374
    nop

    .line 375
    iget v7, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 371
    invoke-static {v5, v5, v6, v4, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 378
    :cond_7
    iget-object v5, v2, Landroidx/collection/LongSparseArray;->keys:[J

    aput-wide v0, v5, v4

    .line 379
    iget-object v5, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p3, v5, v4

    .line 380
    iget v5, v2, Landroidx/collection/LongSparseArray;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 382
    :goto_1
    nop

    .line 155
    .end local v2    # "$this$commonPut$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonPut":I
    .end local v4    # "index$iv":I
    :goto_2
    return-void
.end method

.method public putAll(Landroidx/collection/LongSparseArray;)V
    .locals 9
    .param p1, "other"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    move-object v0, p0

    .local v0, "$this$commonPutAll$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 383
    .local v1, "$i$f$commonPutAll":I
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    .line 384
    .local v2, "size$iv":I
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    move v4, v3

    .local v4, "i$iv":I
    const/4 v5, 0x0

    .line 385
    .local v5, "$i$a$-repeat-LongSparseArrayKt$commonPutAll$1$iv":I
    invoke-virtual {p1, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {p1, v4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 386
    nop

    .line 384
    .end local v4    # "i$iv":I
    .end local v5    # "$i$a$-repeat-LongSparseArrayKt$commonPutAll$1$iv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 387
    :cond_0
    nop

    .line 161
    .end local v0    # "$this$commonPutAll$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonPutAll":I
    .end local v2    # "size$iv":I
    return-void
.end method

.method public putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 172
    move-object v0, p0

    .local v0, "$this$commonPutIfAbsent$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 388
    .local v1, "$i$f$commonPutIfAbsent":I
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    .line 389
    .local v2, "mapValue$iv":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 390
    invoke-virtual {v0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 392
    :cond_0
    nop

    .line 172
    .end local v0    # "$this$commonPutIfAbsent$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonPutIfAbsent":I
    .end local v2    # "mapValue$iv":Ljava/lang/Object;
    return-object v2
.end method

.method public remove(J)V
    .locals 5
    .param p1, "key"    # J

    .line 115
    move-object v0, p0

    .local v0, "$this$commonRemove$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 288
    .local v1, "$i$f$commonRemove":I
    iget-object v2, v0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v3, v0, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v2, v3, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v2

    .line 289
    .local v2, "i$iv":I
    if-ltz v2, :cond_0

    .line 290
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 291
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 292
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 295
    :cond_0
    nop

    .line 115
    .end local v0    # "$this$commonRemove$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonRemove":I
    .end local v2    # "i$iv":I
    return-void
.end method

.method public remove(JLjava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)Z"
        }
    .end annotation

    .line 124
    move-object v0, p0

    .local v0, "$this$commonRemove$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 296
    .local v1, "$i$f$commonRemove":I
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    .line 297
    .local v2, "index$iv":I
    if-ltz v2, :cond_0

    .line 298
    invoke-virtual {v0, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 299
    .local v3, "mapValue$iv":Ljava/lang/Object;
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {v0, v2}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    .line 301
    const/4 v4, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "mapValue$iv":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    .line 124
    .end local v0    # "$this$commonRemove$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonRemove":I
    .end local v2    # "index$iv":I
    :goto_0
    return v4
.end method

.method public removeAt(I)V
    .locals 4
    .param p1, "index"    # I

    .line 129
    move-object v0, p0

    .local v0, "$this$commonRemoveAt$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 305
    .local v1, "$i$f$commonRemoveAt":I
    iget-object v2, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 306
    iget-object v2, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    .line 307
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 309
    :cond_0
    nop

    .line 129
    .end local v0    # "$this$commonRemoveAt$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonRemoveAt":I
    return-void
.end method

.method public replace(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .line 138
    move-object v0, p0

    .local v0, "$this$commonReplace$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 310
    .local v1, "$i$f$commonReplace":I
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    .line 311
    .local v2, "index$iv":I
    if-ltz v2, :cond_0

    .line 313
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 314
    .local v4, "oldValue$iv":Ljava/lang/Object;
    aput-object p3, v3, v2

    .line 315
    goto :goto_0

    .line 317
    .end local v4    # "oldValue$iv":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    .line 138
    .end local v0    # "$this$commonReplace$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonReplace":I
    .end local v2    # "index$iv":I
    :goto_0
    return-object v4
.end method

.method public replace(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # J
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;TE;)Z"
        }
    .end annotation

    .line 149
    move-object v0, p0

    .local v0, "$this$commonReplace$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 318
    .local v1, "$i$f$commonReplace":I
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    .line 319
    .local v2, "index$iv":I
    if-ltz v2, :cond_0

    .line 320
    iget-object v3, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 321
    .local v3, "mapValue$iv":Ljava/lang/Object;
    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p4, v4, v2

    .line 323
    const/4 v4, 0x1

    goto :goto_0

    .line 326
    .end local v3    # "mapValue$iv":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x0

    .line 149
    .end local v0    # "$this$commonReplace$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonReplace":I
    .end local v2    # "index$iv":I
    :goto_0
    return v4
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 13
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 216
    move-object v0, p0

    .local v0, "$this$commonSetValueAt$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 465
    .local v1, "$i$f$commonSetValueAt":I
    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget v3, v0, Landroidx/collection/LongSparseArray;->size:I

    if-ge p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_5

    .line 469
    iget-boolean v3, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v3, :cond_4

    .line 470
    move-object v3, v0

    .local v3, "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v4, 0x0

    .line 471
    .local v4, "$i$f$commonGc":I
    iget v5, v3, Landroidx/collection/LongSparseArray;->size:I

    .line 472
    .local v5, "n$iv$iv":I
    const/4 v6, 0x0

    .line 473
    .local v6, "newSize$iv$iv":I
    iget-object v7, v3, Landroidx/collection/LongSparseArray;->keys:[J

    .line 474
    .local v7, "keys$iv$iv":[J
    iget-object v8, v3, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 475
    .local v8, "values$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    :goto_1
    if-ge v9, v5, :cond_3

    .line 476
    aget-object v10, v8, v9

    .line 477
    .local v10, "value$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v11

    if-eq v10, v11, :cond_2

    .line 478
    if-eq v9, v6, :cond_1

    .line 479
    aget-wide v11, v7, v9

    aput-wide v11, v7, v6

    .line 480
    aput-object v10, v8, v6

    .line 481
    const/4 v11, 0x0

    aput-object v11, v8, v9

    .line 483
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 475
    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 486
    .end local v9    # "i$iv$iv":I
    :cond_3
    iput-boolean v2, v3, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 487
    iput v6, v3, Landroidx/collection/LongSparseArray;->size:I

    .line 488
    nop

    .line 489
    .end local v3    # "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v4    # "$i$f$commonGc":I
    .end local v5    # "n$iv$iv":I
    .end local v6    # "newSize$iv$iv":I
    .end local v7    # "keys$iv$iv":[J
    .end local v8    # "values$iv$iv":[Ljava/lang/Object;
    :cond_4
    iget-object v2, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p2, v2, p1

    .line 490
    nop

    .line 216
    .end local v0    # "$this$commonSetValueAt$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonSetValueAt":I
    return-void

    .line 465
    .restart local v0    # "$this$commonSetValueAt$iv":Landroidx/collection/LongSparseArray;
    .restart local v1    # "$i$f$commonSetValueAt":I
    :cond_5
    const/4 v2, 0x0

    .line 466
    .local v2, "$i$a$-require-LongSparseArrayKt$commonSetValueAt$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected index to be within 0..size()-1, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    .end local v2    # "$i$a$-require-LongSparseArrayKt$commonSetValueAt$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public size()I
    .locals 12

    .line 177
    move-object v0, p0

    .local v0, "$this$commonSize$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 393
    .local v1, "$i$f$commonSize":I
    iget-boolean v2, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v2, :cond_3

    .line 394
    move-object v2, v0

    .local v2, "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 395
    .local v3, "$i$f$commonGc":I
    iget v4, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 396
    .local v4, "n$iv$iv":I
    const/4 v5, 0x0

    .line 397
    .local v5, "newSize$iv$iv":I
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 398
    .local v6, "keys$iv$iv":[J
    iget-object v7, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 399
    .local v7, "values$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i$iv$iv":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 400
    aget-object v9, v7, v8

    .line 401
    .local v9, "value$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 402
    if-eq v8, v5, :cond_0

    .line 403
    aget-wide v10, v6, v8

    aput-wide v10, v6, v5

    .line 404
    aput-object v9, v7, v5

    .line 405
    const/4 v10, 0x0

    aput-object v10, v7, v8

    .line 407
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 399
    .end local v9    # "value$iv$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 410
    .end local v8    # "i$iv$iv":I
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 411
    iput v5, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 412
    nop

    .line 413
    .end local v2    # "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGc":I
    .end local v4    # "n$iv$iv":I
    .end local v5    # "newSize$iv$iv":I
    .end local v6    # "keys$iv$iv":[J
    .end local v7    # "values$iv$iv":[Ljava/lang/Object;
    :cond_3
    iget v0, v0, Landroidx/collection/LongSparseArray;->size:I

    .line 177
    .end local v0    # "$this$commonSize$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonSize":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 257
    move-object v0, p0

    .local v0, "$this$commonToString$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 582
    .local v1, "$i$f$commonToString":I
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 583
    const-string v2, "{}"

    goto :goto_2

    .line 585
    :cond_0
    iget v2, v0, Landroidx/collection/LongSparseArray;->size:I

    mul-int/lit8 v2, v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .local v2, "$this$commonToString_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 586
    .local v4, "$i$a$-buildString-LongSparseArrayKt$commonToString$1$iv":I
    const/16 v5, 0x7b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    const/4 v5, 0x0

    .local v5, "i$iv":I
    iget v6, v0, Landroidx/collection/LongSparseArray;->size:I

    :goto_0
    if-ge v5, v6, :cond_3

    .line 588
    if-lez v5, :cond_1

    .line 589
    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_1
    invoke-virtual {v0, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 592
    .local v7, "key$iv":J
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 593
    const/16 v9, 0x3d

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .line 595
    .local v9, "value$iv":Ljava/lang/Object;
    if-eq v9, v2, :cond_2

    .line 596
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 598
    :cond_2
    const-string v10, "(this Map)"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .end local v7    # "key$iv":J
    .end local v9    # "value$iv":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 601
    .end local v5    # "i$iv":I
    :cond_3
    const/16 v5, 0x7d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    nop

    .line 585
    .end local v2    # "$this$commonToString_u24lambda_u245$iv":Ljava/lang/StringBuilder;
    .end local v4    # "$i$a$-buildString-LongSparseArrayKt$commonToString$1$iv":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .end local v0    # "$this$commonToString$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonToString":I
    :goto_2
    return-object v2
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 13
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 208
    move-object v0, p0

    .local v0, "$this$commonValueAt$iv":Landroidx/collection/LongSparseArray;
    const/4 v1, 0x0

    .line 440
    .local v1, "$i$f$commonValueAt":I
    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget v3, v0, Landroidx/collection/LongSparseArray;->size:I

    if-ge p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_5

    .line 444
    iget-boolean v3, v0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v3, :cond_4

    .line 445
    move-object v3, v0

    .local v3, "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    const/4 v4, 0x0

    .line 446
    .local v4, "$i$f$commonGc":I
    iget v5, v3, Landroidx/collection/LongSparseArray;->size:I

    .line 447
    .local v5, "n$iv$iv":I
    const/4 v6, 0x0

    .line 448
    .local v6, "newSize$iv$iv":I
    iget-object v7, v3, Landroidx/collection/LongSparseArray;->keys:[J

    .line 449
    .local v7, "keys$iv$iv":[J
    iget-object v8, v3, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 450
    .local v8, "values$iv$iv":[Ljava/lang/Object;
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    :goto_1
    if-ge v9, v5, :cond_3

    .line 451
    aget-object v10, v8, v9

    .line 452
    .local v10, "value$iv$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v11

    if-eq v10, v11, :cond_2

    .line 453
    if-eq v9, v6, :cond_1

    .line 454
    aget-wide v11, v7, v9

    aput-wide v11, v7, v6

    .line 455
    aput-object v10, v8, v6

    .line 456
    const/4 v11, 0x0

    aput-object v11, v8, v9

    .line 458
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 450
    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 461
    .end local v9    # "i$iv$iv":I
    :cond_3
    iput-boolean v2, v3, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 462
    iput v6, v3, Landroidx/collection/LongSparseArray;->size:I

    .line 463
    nop

    .line 464
    .end local v3    # "$this$commonGc$iv$iv":Landroidx/collection/LongSparseArray;
    .end local v4    # "$i$f$commonGc":I
    .end local v5    # "n$iv$iv":I
    .end local v6    # "newSize$iv$iv":I
    .end local v7    # "keys$iv$iv":[J
    .end local v8    # "values$iv$iv":[Ljava/lang/Object;
    :cond_4
    iget-object v2, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v0, v2, p1

    .line 208
    .end local v0    # "$this$commonValueAt$iv":Landroidx/collection/LongSparseArray;
    .end local v1    # "$i$f$commonValueAt":I
    return-object v0

    .line 440
    .restart local v0    # "$this$commonValueAt$iv":Landroidx/collection/LongSparseArray;
    .restart local v1    # "$i$f$commonValueAt":I
    :cond_5
    const/4 v2, 0x0

    .line 441
    .local v2, "$i$a$-require-LongSparseArrayKt$commonValueAt$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected index to be within 0..size()-1, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .end local v2    # "$i$a$-require-LongSparseArrayKt$commonValueAt$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
