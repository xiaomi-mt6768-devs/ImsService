.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableCollection;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/ArraySet$ElementIterator;,
        Landroidx/collection/ArraySet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableCollection;",
        "Lkotlin/jvm/internal/markers/KMutableSet;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArraySet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArraySet.kt\nandroidx/collection/ArraySet\n*L\n1#1,632:1\n167#1,4:633\n167#1,4:637\n167#1,4:641\n167#1,4:645\n167#1,4:649\n167#1,4:653\n167#1,4:657\n167#1,4:661\n*S KotlinDebug\n*F\n+ 1 ArraySet.kt\nandroidx/collection/ArraySet\n*L\n277#1:633,4\n288#1:637,4\n295#1:641,4\n371#1:645,4\n380#1:649,4\n385#1:653,4\n390#1:657,4\n406#1:661,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0010)\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0018\u0000 >*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0002>?B\u0019\u0008\u0016\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0018\u00010\u0000\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0016\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u0019\u0008\u0016\u0012\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\u0011\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0015\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010\u001a\u001a\u00020\u001b2\u000e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000J\u0016\u0010\u001a\u001a\u00020\u00172\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u000cH\u0002J\u0010\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u000cH\u0002J\u0008\u0010 \u001a\u00020\u001bH\u0016J\u0016\u0010!\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010\"\u001a\u00020\u00172\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u000e\u0010#\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020\u000cJ\u0013\u0010%\u001a\u00020\u00172\u0008\u0010&\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\'\u001a\u00020\u000cH\u0016J\u0010\u0010(\u001a\u00020\u000c2\u0008\u0010)\u001a\u0004\u0018\u00010\u000fJ\u001a\u0010(\u001a\u00020\u000c2\u0008\u0010)\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001f\u001a\u00020\u000cH\u0002J\u0008\u0010*\u001a\u00020\u000cH\u0002J\u0008\u0010+\u001a\u00020\u0017H\u0016J\u000f\u0010,\u001a\u0008\u0012\u0004\u0012\u00028\u00000-H\u0096\u0002J\u0017\u0010.\u001a\u00020\u001b2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020100H\u0082\u0008J\u0015\u00102\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0019J\u0016\u00103\u001a\u00020\u00172\u000e\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0000J\u0016\u00103\u001a\u00020\u00172\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0013\u00104\u001a\u00028\u00002\u0006\u00105\u001a\u00020\u000c\u00a2\u0006\u0002\u00106J\u0016\u00107\u001a\u00020\u00172\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0013\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\t\u00a2\u0006\u0002\u00109J%\u00108\u001a\u0008\u0012\u0004\u0012\u0002H:0\t\"\u0004\u0008\u0001\u0010:2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H:0\t\u00a2\u0006\u0002\u0010;J\u0008\u0010<\u001a\u000201H\u0016J\u0013\u0010=\u001a\u00028\u00002\u0006\u00105\u001a\u00020\u000c\u00a2\u0006\u0002\u00106R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006@"
    }
    d2 = {
        "Landroidx/collection/ArraySet;",
        "E",
        "",
        "",
        "set",
        "(Landroidx/collection/ArraySet;)V",
        "",
        "(Ljava/util/Collection;)V",
        "array",
        "",
        "([Ljava/lang/Object;)V",
        "capacity",
        "",
        "(I)V",
        "_size",
        "",
        "[Ljava/lang/Object;",
        "hashes",
        "",
        "size",
        "getSize",
        "()I",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "addAll",
        "",
        "elements",
        "allocArrays",
        "binarySearchInternal",
        "hash",
        "clear",
        "contains",
        "containsAll",
        "ensureCapacity",
        "minimumCapacity",
        "equals",
        "other",
        "hashCode",
        "indexOf",
        "key",
        "indexOfNull",
        "isEmpty",
        "iterator",
        "",
        "printlnIfDebug",
        "message",
        "Lkotlin/Function0;",
        "",
        "remove",
        "removeAll",
        "removeAt",
        "index",
        "(I)Ljava/lang/Object;",
        "retainAll",
        "toArray",
        "()[Ljava/lang/Object;",
        "T",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toString",
        "valueAt",
        "Companion",
        "ElementIterator",
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


# static fields
.field private static final BASE_SIZE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Landroidx/collection/ArraySet$Companion;

.field private static final DEBUG:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ArraySet"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private _size:I

.field private array:[Ljava/lang/Object;

.field private hashes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/ArraySet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/collection/ArraySet;->Companion:Landroidx/collection/ArraySet$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/ArraySet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/ArraySet;->hashes:[I

    .line 66
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 102
    nop

    .line 103
    if-lez p1, :cond_0

    .line 104
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 106
    :cond_0
    nop

    .line 62
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 62
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 631
    return-void
.end method

.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 1
    .param p1, "set"    # Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Landroidx/collection/ArraySet;)V

    .line 80
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "set"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static final synthetic access$get_size$p(Landroidx/collection/ArraySet;)I
    .locals 1
    .param p0, "$this"    # Landroidx/collection/ArraySet;

    .line 62
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    return v0
.end method

.method private final allocArrays(I)V
    .locals 1
    .param p1, "size"    # I

    .line 162
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/ArraySet;->hashes:[I

    .line 163
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 164
    return-void
.end method

.method private final binarySearchInternal(I)I
    .locals 2
    .param p1, "hash"    # I

    .line 109
    nop

    .line 110
    :try_start_0
    iget-object v0, p0, Landroidx/collection/ArraySet;->hashes:[I

    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    invoke-static {v0, v1, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private final indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 116
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    .line 119
    .local v0, "n":I
    if-nez v0, :cond_0

    .line 120
    const/4 v1, -0x1

    return v1

    .line 122
    :cond_0
    invoke-direct {p0, p2}, Landroidx/collection/ArraySet;->binarySearchInternal(I)I

    move-result v1

    .line 125
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 126
    return v1

    .line 130
    :cond_1
    iget-object v2, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    return v1

    .line 135
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 136
    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/collection/ArraySet;->hashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 137
    iget-object v3, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    return v2

    .line 140
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .line 145
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroidx/collection/ArraySet;->hashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_6

    .line 146
    iget-object v4, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    return v3

    .line 149
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 156
    :cond_6
    not-int v4, v2

    return v4
.end method

.method private final indexOfNull()I
    .locals 2

    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private final printlnIfDebug(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "message"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    .local v0, "$i$f$printlnIfDebug":I
    nop

    .line 170
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 17
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/collection/ArraySet;->_size:I

    .local v2, "oSize":I
    const/4 v3, 0x0

    .line 255
    .local v3, "hash":I
    const/4 v4, 0x0

    .line 256
    .local v4, "index":I
    if-nez v1, :cond_0

    .line 257
    const/4 v3, 0x0

    .line 258
    invoke-direct/range {p0 .. p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v4

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 261
    invoke-direct {v0, v1, v3}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v4

    .line 264
    :goto_0
    const/4 v5, 0x0

    if-ltz v4, :cond_1

    .line 265
    return v5

    .line 268
    :cond_1
    not-int v4, v4

    .line 269
    iget-object v6, v0, Landroidx/collection/ArraySet;->hashes:[I

    array-length v6, v6

    const/4 v7, 0x1

    if-lt v2, v6, :cond_7

    .line 271
    nop

    .line 272
    const/16 v6, 0x8

    if-lt v2, v6, :cond_2

    shr-int/lit8 v6, v2, 0x1

    add-int/2addr v6, v2

    goto :goto_1

    .line 273
    :cond_2
    const/4 v8, 0x4

    if-lt v2, v8, :cond_3

    goto :goto_1

    .line 274
    :cond_3
    move v6, v8

    .line 271
    :goto_1
    nop

    .line 270
    nop

    .line 277
    .local v6, "n":I
    move-object/from16 v8, p0

    .local v8, "this_$iv":Landroidx/collection/ArraySet;
    const/4 v9, 0x0

    .line 633
    .local v9, "$i$f$printlnIfDebug":I
    nop

    .line 636
    nop

    .line 279
    .end local v8    # "this_$iv":Landroidx/collection/ArraySet;
    .end local v9    # "$i$f$printlnIfDebug":I
    iget-object v8, v0, Landroidx/collection/ArraySet;->hashes:[I

    .line 280
    .local v8, "ohashes":[I
    iget-object v9, v0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 281
    .local v9, "oarray":[Ljava/lang/Object;
    invoke-direct {v0, v6}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 283
    iget v10, v0, Landroidx/collection/ArraySet;->_size:I

    if-ne v2, v10, :cond_6

    .line 287
    iget-object v11, v0, Landroidx/collection/ArraySet;->hashes:[I

    array-length v10, v11

    if-nez v10, :cond_4

    move v5, v7

    :cond_4
    xor-int/2addr v5, v7

    if-eqz v5, :cond_5

    .line 288
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/collection/ArraySet;
    const/4 v10, 0x0

    .line 637
    .local v10, "$i$f$printlnIfDebug":I
    nop

    .line 640
    nop

    .line 289
    .end local v5    # "this_$iv":Landroidx/collection/ArraySet;
    .end local v10    # "$i$f$printlnIfDebug":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v8

    const/4 v15, 0x6

    const/16 v16, 0x0

    move-object v10, v8

    invoke-static/range {v10 .. v16}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 290
    iget-object v10, v0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    const/4 v11, 0x0

    array-length v13, v9

    const/4 v14, 0x6

    const/4 v15, 0x0

    move-object v5, v9

    .end local v9    # "oarray":[Ljava/lang/Object;
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-static/range {v9 .. v15}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    goto :goto_2

    .line 287
    .end local v5    # "oarray":[Ljava/lang/Object;
    .restart local v9    # "oarray":[Ljava/lang/Object;
    :cond_5
    move-object v5, v9

    .end local v9    # "oarray":[Ljava/lang/Object;
    .restart local v5    # "oarray":[Ljava/lang/Object;
    goto :goto_2

    .line 284
    .end local v5    # "oarray":[Ljava/lang/Object;
    .restart local v9    # "oarray":[Ljava/lang/Object;
    :cond_6
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 294
    .end local v6    # "n":I
    .end local v8    # "ohashes":[I
    .end local v9    # "oarray":[Ljava/lang/Object;
    :cond_7
    :goto_2
    if-ge v4, v2, :cond_8

    .line 295
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/collection/ArraySet;
    const/4 v6, 0x0

    .line 641
    .local v6, "$i$f$printlnIfDebug":I
    nop

    .line 644
    nop

    .line 297
    .end local v5    # "this_$iv":Landroidx/collection/ArraySet;
    .end local v6    # "$i$f$printlnIfDebug":I
    iget-object v5, v0, Landroidx/collection/ArraySet;->hashes:[I

    .line 298
    nop

    .line 299
    add-int/lit8 v6, v4, 0x1

    .line 300
    nop

    .line 301
    nop

    .line 297
    invoke-static {v5, v5, v6, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 303
    iget-object v5, v0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 304
    nop

    .line 305
    add-int/lit8 v6, v4, 0x1

    .line 306
    nop

    .line 307
    nop

    .line 303
    invoke-static {v5, v5, v6, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 311
    :cond_8
    iget v5, v0, Landroidx/collection/ArraySet;->_size:I

    if-ne v2, v5, :cond_9

    iget-object v6, v0, Landroidx/collection/ArraySet;->hashes:[I

    array-length v8, v6

    if-ge v4, v8, :cond_9

    .line 315
    aput v3, v6, v4

    .line 316
    iget-object v6, v0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aput-object v1, v6, v4

    .line 317
    add-int/2addr v5, v7

    iput v5, v0, Landroidx/collection/ArraySet;->_size:I

    .line 318
    return v7

    .line 312
    :cond_9
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5
.end method

.method public final addAll(Landroidx/collection/ArraySet;)V
    .locals 8
    .param p1, "array"    # Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iget v0, p1, Landroidx/collection/ArraySet;->_size:I

    .line 328
    .local v0, "n":I
    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 329
    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    if-nez v1, :cond_1

    .line 330
    if-lez v0, :cond_2

    .line 331
    iget-object v1, p1, Landroidx/collection/ArraySet;->hashes:[I

    iget-object v2, p0, Landroidx/collection/ArraySet;->hashes:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move v5, v0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 332
    iget-object v1, p1, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 333
    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    if-nez v1, :cond_0

    .line 336
    iput v0, p0, Landroidx/collection/ArraySet;->_size:I

    goto :goto_1

    .line 334
    :cond_0
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 339
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 340
    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 586
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 588
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 178
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object v0, p0, Landroidx/collection/ArraySet;->hashes:[I

    .line 180
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/ArraySet;->_size:I

    .line 184
    :cond_0
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    if-nez v0, :cond_1

    .line 187
    return-void

    .line 185
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 218
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 571
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 572
    const/4 v0, 0x0

    return v0

    .line 575
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final ensureCapacity(I)V
    .locals 10
    .param p1, "minimumCapacity"    # I

    .line 196
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    .line 197
    .local v0, "oSize":I
    iget-object v1, p0, Landroidx/collection/ArraySet;->hashes:[I

    array-length v1, v1

    if-ge v1, p1, :cond_0

    .line 198
    iget-object v1, p0, Landroidx/collection/ArraySet;->hashes:[I

    .line 199
    .local v1, "ohashes":[I
    iget-object v9, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 200
    .local v9, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 201
    iget v6, p0, Landroidx/collection/ArraySet;->_size:I

    if-lez v6, :cond_0

    .line 202
    iget-object v3, p0, Landroidx/collection/ArraySet;->hashes:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 203
    iget-object v3, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    iget v6, p0, Landroidx/collection/ArraySet;->_size:I

    move-object v2, v9

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 206
    .end local v1    # "ohashes":[I
    .end local v9    # "oarray":[Ljava/lang/Object;
    :cond_0
    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    if-ne v1, v0, :cond_1

    .line 209
    return-void

    .line 207
    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 481
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 482
    return v0

    .line 484
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 485
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 486
    return v2

    .line 488
    :cond_1
    nop

    .line 489
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget v3, p0, Landroidx/collection/ArraySet;->_size:I

    :goto_0
    if-ge v1, v3, :cond_3

    .line 490
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 491
    .local v4, "mine":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    .line 492
    return v2

    .line 489
    .end local v4    # "mine":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 495
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 496
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 502
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    :cond_4
    return v2
.end method

.method public getSize()I
    .locals 1

    .line 71
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 509
    iget-object v0, p0, Landroidx/collection/ArraySet;->hashes:[I

    .line 510
    .local v0, "hashes":[I
    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    .line 511
    .local v1, "s":I
    const/4 v2, 0x0

    .line 512
    .local v2, "result":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 513
    aget v4, v0, v3

    add-int/2addr v2, v4

    .line 512
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 515
    .end local v3    # "i":I
    :cond_0
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 227
    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 242
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 552
    new-instance v0, Landroidx/collection/ArraySet$ElementIterator;

    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 352
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 353
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 354
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 355
    const/4 v1, 0x1

    return v1

    .line 357
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final removeAll(Landroidx/collection/ArraySet;)Z
    .locals 4
    .param p1, "array"    # Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget v0, p1, Landroidx/collection/ArraySet;->_size:I

    .line 444
    .local v0, "n":I
    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    .line 445
    .local v1, "originalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 446
    invoke-virtual {p1, v2}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Landroidx/collection/ArraySet;->_size:I

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 599
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 601
    :cond_0
    return v0
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 14
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 367
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    .line 368
    .local v0, "oSize":I
    iget-object v1, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 369
    .local v1, "old":Ljava/lang/Object;
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 371
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/collection/ArraySet;
    const/4 v3, 0x0

    .line 645
    .local v3, "$i$f$printlnIfDebug":I
    nop

    .line 648
    nop

    .line 372
    .end local v2    # "this_$iv":Landroidx/collection/ArraySet;
    .end local v3    # "$i$f$printlnIfDebug":I
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->clear()V

    goto/16 :goto_1

    .line 374
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 375
    .local v2, "nSize":I
    iget-object v3, p0, Landroidx/collection/ArraySet;->hashes:[I

    array-length v4, v3

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    iget v4, p0, Landroidx/collection/ArraySet;->_size:I

    array-length v6, v3

    div-int/lit8 v6, v6, 0x3

    if-ge v4, v6, :cond_3

    .line 379
    if-le v4, v5, :cond_1

    shr-int/lit8 v3, v4, 0x1

    add-int v5, v4, v3

    :cond_1
    move v3, v5

    .line 380
    .local v3, "n":I
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/collection/ArraySet;
    const/4 v5, 0x0

    .line 649
    .local v5, "$i$f$printlnIfDebug":I
    nop

    .line 652
    nop

    .line 381
    .end local v4    # "this_$iv":Landroidx/collection/ArraySet;
    .end local v5    # "$i$f$printlnIfDebug":I
    iget-object v4, p0, Landroidx/collection/ArraySet;->hashes:[I

    .line 382
    .local v4, "ohashes":[I
    iget-object v13, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 383
    .local v13, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 384
    if-lez p1, :cond_2

    .line 385
    move-object v5, p0

    .local v5, "this_$iv":Landroidx/collection/ArraySet;
    const/4 v6, 0x0

    .line 653
    .local v6, "$i$f$printlnIfDebug":I
    nop

    .line 656
    nop

    .line 386
    .end local v5    # "this_$iv":Landroidx/collection/ArraySet;
    .end local v6    # "$i$f$printlnIfDebug":I
    iget-object v7, p0, Landroidx/collection/ArraySet;->hashes:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v6, v4

    move v10, p1

    invoke-static/range {v6 .. v12}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    .line 387
    iget-object v6, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v5, v13

    move v9, p1

    invoke-static/range {v5 .. v11}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 389
    :cond_2
    if-ge p1, v2, :cond_5

    .line 390
    move-object v5, p0

    .restart local v5    # "this_$iv":Landroidx/collection/ArraySet;
    const/4 v6, 0x0

    .line 657
    .restart local v6    # "$i$f$printlnIfDebug":I
    nop

    .line 660
    nop

    .line 391
    .end local v5    # "this_$iv":Landroidx/collection/ArraySet;
    .end local v6    # "$i$f$printlnIfDebug":I
    nop

    .line 392
    iget-object v5, p0, Landroidx/collection/ArraySet;->hashes:[I

    .line 393
    nop

    .line 394
    add-int/lit8 v6, p1, 0x1

    .line 395
    add-int/lit8 v7, v2, 0x1

    .line 391
    invoke-static {v4, v5, p1, v6, v7}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 397
    nop

    .line 398
    iget-object v5, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 399
    nop

    .line 400
    add-int/lit8 v6, p1, 0x1

    .line 401
    add-int/lit8 v7, v2, 0x1

    .line 397
    invoke-static {v13, v5, p1, v6, v7}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_0

    .line 405
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v13    # "oarray":[Ljava/lang/Object;
    :cond_3
    if-ge p1, v2, :cond_4

    .line 406
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/collection/ArraySet;
    const/4 v5, 0x0

    .line 661
    .local v5, "$i$f$printlnIfDebug":I
    nop

    .line 664
    nop

    .line 407
    .end local v4    # "this_$iv":Landroidx/collection/ArraySet;
    .end local v5    # "$i$f$printlnIfDebug":I
    nop

    .line 408
    nop

    .line 409
    nop

    .line 410
    add-int/lit8 v4, p1, 0x1

    .line 411
    add-int/lit8 v5, v2, 0x1

    .line 407
    invoke-static {v3, v3, p1, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 413
    iget-object v3, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 414
    nop

    .line 415
    nop

    .line 416
    add-int/lit8 v4, p1, 0x1

    .line 417
    add-int/lit8 v5, v2, 0x1

    .line 413
    invoke-static {v3, v3, p1, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 420
    :cond_4
    iget-object v3, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 422
    :cond_5
    :goto_0
    iget v3, p0, Landroidx/collection/ArraySet;->_size:I

    if-ne v0, v3, :cond_6

    .line 425
    iput v2, p0, Landroidx/collection/ArraySet;->_size:I

    .line 428
    .end local v2    # "nSize":I
    :goto_1
    return-object v1

    .line 423
    .restart local v2    # "nSize":I
    :cond_6
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "removed":Z
    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_1

    .line 613
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 615
    const/4 v0, 0x1

    .line 612
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 618
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->getSize()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 3

    .line 453
    iget-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/collection/ArraySet;->_size:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    array-length v0, p1

    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    invoke-static {v0, p1, v2, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 464
    array-length v0, p1

    iget v1, p0, Landroidx/collection/ArraySet;->_size:I

    if-le v0, v1, :cond_1

    .line 465
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 467
    :cond_1
    move-object v0, p1

    .line 458
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 524
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "{}"

    return-object v0

    .line 528
    :cond_0
    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    mul-int/lit8 v0, v0, 0xe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v1

    .local v0, "$this$toString_u24lambda_u248":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 529
    .local v2, "$i$a$-buildString-ArraySet$toString$1":I
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Landroidx/collection/ArraySet;->_size:I

    :goto_0
    if-ge v3, v4, :cond_3

    .line 531
    if-lez v3, :cond_1

    .line 532
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_1
    invoke-virtual {p0, v3}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 535
    .local v5, "value":Ljava/lang/Object;
    if-eq v5, p0, :cond_2

    .line 536
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 538
    :cond_2
    const-string v6, "(this Set)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    .end local v3    # "i":I
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    nop

    .line 528
    .end local v0    # "$this$toString_u24lambda_u248":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-ArraySet$toString$1":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
