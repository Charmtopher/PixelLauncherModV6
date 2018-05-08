.class public Landroid/support/v4/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jA:I

.field private jB:I

.field private final jw:Ljava/util/LinkedHashMap;

.field private jx:I

.field private jy:I

.field private jz:I

.field private size:I


# direct methods
.method private d(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 250
    invoke-virtual {p0, p2}, Landroid/support/v4/c/i;->o(Ljava/lang/Object;)I

    move-result v0

    .line 251
    if-ltz v0, :cond_0

    .line 254
    return v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final evictAll()V
    .locals 1

    .line 272
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/c/i;->trimToSize(I)V

    .line 273
    return-void
.end method

.method public o(Ljava/lang/Object;)I
    .locals 0

    .line 265
    const/4 p1, 0x1

    return p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 133
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget v0, p0, Landroid/support/v4/c/i;->jy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/i;->jy:I

    .line 140
    iget v0, p0, Landroid/support/v4/c/i;->size:I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/c/i;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/c/i;->size:I

    .line 141
    iget-object v0, p0, Landroid/support/v4/c/i;->jw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 142
    if-eqz p2, :cond_0

    .line 143
    iget v0, p0, Landroid/support/v4/c/i;->size:I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/c/i;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/c/i;->size:I

    .line 145
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget p1, p0, Landroid/support/v4/c/i;->jx:I

    invoke-virtual {p0, p1}, Landroid/support/v4/c/i;->trimToSize(I)V

    .line 152
    return-object p2

    .line 145
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 339
    :try_start_0
    iget v0, p0, Landroid/support/v4/c/i;->jA:I

    iget v1, p0, Landroid/support/v4/c/i;->jB:I

    add-int/2addr v0, v1

    .line 340
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x64

    iget v3, p0, Landroid/support/v4/c/i;->jA:I

    mul-int/2addr v2, v3

    div-int v0, v2, v0

    goto :goto_0

    .line 341
    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/c/i;->jx:I

    .line 342
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget v5, p0, Landroid/support/v4/c/i;->jA:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Landroid/support/v4/c/i;->jB:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 341
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final trimToSize(I)V
    .locals 3

    .line 166
    :goto_0
    monitor-enter p0

    .line 167
    :try_start_0
    iget v0, p0, Landroid/support/v4/c/i;->size:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/c/i;->jw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/c/i;->size:I

    if-nez v0, :cond_3

    .line 172
    :cond_0
    iget v0, p0, Landroid/support/v4/c/i;->size:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/c/i;->jw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 176
    :cond_1
    iget-object v0, p0, Landroid/support/v4/c/i;->jw:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 179
    iget-object v2, p0, Landroid/support/v4/c/i;->jw:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget v2, p0, Landroid/support/v4/c/i;->size:I

    invoke-direct {p0, v1, v0}, Landroid/support/v4/c/i;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/support/v4/c/i;->size:I

    .line 181
    iget v0, p0, Landroid/support/v4/c/i;->jz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/c/i;->jz:I

    .line 182
    monitor-exit p0

    goto :goto_0

    .line 173
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 168
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
