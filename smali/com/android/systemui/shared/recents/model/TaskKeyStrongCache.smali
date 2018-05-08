.class public Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;
.super Lcom/android/systemui/shared/recents/model/TaskKeyCache;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskKeyCache"


# instance fields
.field private final mCache:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method final copyEntries(Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;)V
    .locals 4

    .line 35
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 36
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 37
    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    iget v3, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 35
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "TaskKeyCache"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    const-string p1, " numEntries="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 45
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 47
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 48
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method protected evictAllCache()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 70
    return-void
.end method

.method protected getCacheEntry(I)Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected putCacheEntry(ILjava/lang/Object;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method protected removeCacheEntry(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method
