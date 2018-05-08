.class public abstract Lcom/android/systemui/shared/recents/model/TaskKeyCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TaskKeyCache"


# instance fields
.field protected final mKeys:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method final evictAll()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->evictAllCache()V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 83
    return-void
.end method

.method protected abstract evictAllCache()V
.end method

.method final get(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 0

    .line 38
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->getCacheEntry(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 47
    if-eqz v0, :cond_1

    .line 48
    iget v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    if-ne v1, v2, :cond_0

    iget-wide v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    .line 53
    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_1
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->getCacheEntry(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getCacheEntry(I)Ljava/lang/Object;
.end method

.method final put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 3

    .line 63
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->putCacheEntry(ILjava/lang/Object;)V

    .line 69
    return-void

    .line 64
    :cond_1
    :goto_0
    const-string v0, "TaskKeyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected null key or value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method protected abstract putCacheEntry(ILjava/lang/Object;)V
.end method

.method final remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 1

    .line 75
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->removeCacheEntry(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyCache;->mKeys:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 77
    return-void
.end method

.method protected abstract removeCacheEntry(I)V
.end method
