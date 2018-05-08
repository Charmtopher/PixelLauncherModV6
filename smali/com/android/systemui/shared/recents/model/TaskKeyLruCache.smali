.class public Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
.super Lcom/android/systemui/shared/recents/model/TaskKeyCache;
.source "SourceFile"


# instance fields
.field private final mCache:Landroid/util/LruCache;

.field private final mEvictionCallback:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V

    .line 44
    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 48
    new-instance p2, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;-><init>(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;I)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "TaskKeyCache"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    const-string p1, " numEntries="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 70
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 71
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 72
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 73
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method protected evictAllCache()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 95
    return-void
.end method

.method protected getCacheEntry(I)Ljava/lang/Object;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected putCacheEntry(ILjava/lang/Object;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method protected removeCacheEntry(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method final trimToSize(I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 63
    return-void
.end method
