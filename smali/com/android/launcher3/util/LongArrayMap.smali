.class public Lcom/android/launcher3/util/LongArrayMap;
.super Landroid/util/LongSparseArray;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/util/LongSparseArray;
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method public final containsKey(J)Z
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 43
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/LongArrayMap$ValueIterator;-><init>(Lcom/android/launcher3/util/LongArrayMap;)V

    return-object v0
.end method
