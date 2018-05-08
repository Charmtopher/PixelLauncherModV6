.class public Lcom/google/research/reflection/b/a;
.super Lcom/google/research/reflection/b/g;
.source "SourceFile"


# instance fields
.field protected afA:I

.field protected afu:Ljava/util/HashMap;

.field protected afv:Ljava/util/HashMap;

.field protected afw:[Z

.field protected afx:I

.field protected afy:J

.field protected afz:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/google/research/reflection/b/g;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/research/reflection/b/a;->afx:I

    .line 39
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/research/reflection/b/a;->afy:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/research/reflection/b/a;->afz:J

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/research/reflection/b/a;->afA:I

    .line 46
    iget v0, p0, Lcom/google/research/reflection/b/a;->afx:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/google/research/reflection/b/g;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/research/reflection/b/a;->afx:I

    .line 39
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/research/reflection/b/a;->afy:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/research/reflection/b/a;->afz:J

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/research/reflection/b/a;->afA:I

    .line 50
    iput p1, p0, Lcom/google/research/reflection/b/a;->afx:I

    .line 51
    iget p1, p0, Lcom/google/research/reflection/b/a;->afx:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    .line 52
    return-void
.end method

.method public constructor <init>(IJJI)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/google/research/reflection/b/g;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/research/reflection/b/a;->afx:I

    .line 39
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/research/reflection/b/a;->afy:J

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/research/reflection/b/a;->afz:J

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/research/reflection/b/a;->afA:I

    .line 56
    iput p6, p0, Lcom/google/research/reflection/b/a;->afA:I

    .line 57
    iput-wide p2, p0, Lcom/google/research/reflection/b/a;->afy:J

    .line 58
    iput-wide p4, p0, Lcom/google/research/reflection/b/a;->afz:J

    .line 59
    iput p1, p0, Lcom/google/research/reflection/b/a;->afx:I

    .line 60
    iget p1, p0, Lcom/google/research/reflection/b/a;->afx:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    .line 61
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;J)I
    .locals 10

    .line 113
    iget-object v0, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    if-nez v0, :cond_5

    .line 115
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v2, p0, Lcom/google/research/reflection/b/a;->afx:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    .line 116
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v7, p0, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v0

    if-gez v9, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-wide v0, v7

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 118
    new-array v1, v4, [Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/research/reflection/b/a;->q(Ljava/util/List;)V

    .line 119
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean v4, v1, v2

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    array-length v1, v1

    if-ge v3, v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    aput-boolean v4, v1, v3

    .line 125
    goto :goto_2

    .line 121
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_5
    iget-object p1, p0, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;
    .locals 8

    .line 258
    iget-wide v3, p0, Lcom/google/research/reflection/b/a;->afy:J

    iget-wide v5, p0, Lcom/google/research/reflection/b/a;->afz:J

    iget v7, p0, Lcom/google/research/reflection/b/a;->afA:I

    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/research/reflection/b/a;->a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;JJI)Ljava/util/ArrayList;

    move-result-object p1

    .line 260
    new-instance p2, Lcom/google/research/reflection/layers/m;

    iget v0, p0, Lcom/google/research/reflection/b/a;->afx:I

    const/4 v1, 0x1

    invoke-direct {p2, v1, v0}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 261
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/d;

    .line 262
    iget v1, v0, Lcom/google/research/reflection/a/d;->value:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 263
    iget v1, v0, Lcom/google/research/reflection/a/d;->index:I

    iget v2, p0, Lcom/google/research/reflection/b/a;->afx:I

    if-ge v1, v2, :cond_0

    .line 266
    iget-object v1, p2, Lcom/google/research/reflection/layers/m;->agU:[D

    iget v0, v0, Lcom/google/research/reflection/a/d;->index:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    goto :goto_1

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    iget p2, v0, Lcom/google/research/reflection/a/d;->index:I

    const/16 v0, 0x1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "invalid index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_1
    :goto_1
    goto :goto_0

    .line 269
    :cond_2
    return-object p2
.end method

.method protected a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;JJI)Ljava/util/ArrayList;
    .locals 8

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    iget v2, p1, Lcom/google/research/reflection/a/a;->afn:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 199
    invoke-virtual {p1, v2}, Lcom/google/research/reflection/a/a;->bD(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 200
    invoke-virtual {p0, v3}, Lcom/google/research/reflection/b/a;->e(Lcom/google/research/reflection/signal/ReflectionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    invoke-static {v3, p2}, Lcom/google/research/reflection/a/e;->a(Lcom/google/research/reflection/signal/ReflectionEvent;Lcom/google/research/reflection/signal/ReflectionEvent;)J

    move-result-wide v4

    .line 204
    invoke-interface {v3}, Lcom/google/research/reflection/signal/ReflectionEvent;->getDuration()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 205
    cmp-long v6, v4, p3

    if-gez v6, :cond_2

    .line 206
    cmp-long v4, v4, p5

    if-ltz v4, :cond_1

    .line 209
    invoke-interface {v3}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/research/reflection/b/a;->a(Ljava/lang/String;J)I

    move-result v3

    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/research/reflection/a/d;

    .line 213
    if-nez v4, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge v4, p7, :cond_2

    .line 215
    new-instance v4, Lcom/google/research/reflection/a/d;

    invoke-direct {v4, v3}, Lcom/google/research/reflection/a/d;-><init>(I)V

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    iget v3, v4, Lcom/google/research/reflection/a/d;->value:F

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    iput v3, v4, Lcom/google/research/reflection/a/d;->value:F

    .line 198
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    return-object v0
.end method

.method public final a(Lcom/google/research/reflection/b/a;)V
    .locals 4

    .line 77
    iget-object v0, p1, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    iget-object v2, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    iget-object v2, p0, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object v0, p1, Lcom/google/research/reflection/b/a;->afw:[Z

    iget-object v1, p1, Lcom/google/research/reflection/b/a;->afw:[Z

    array-length v1, v1

    .line 84
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    .line 85
    iget-object p1, p1, Lcom/google/research/reflection/b/a;->afD:Lcom/google/research/reflection/b/m;

    iput-object p1, p0, Lcom/google/research/reflection/b/g;->afD:Lcom/google/research/reflection/b/m;

    .line 86
    return-void
.end method

.method public final a(Ljava/io/DataInputStream;)V
    .locals 3

    .line 233
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/b/a;->afx:I

    .line 234
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/b/a;->afA:I

    .line 235
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/research/reflection/b/a;->afy:J

    .line 236
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/research/reflection/b/a;->afz:J

    .line 237
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/google/research/reflection/a/f;->a(Ljava/io/DataInputStream;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    .line 238
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/Long;

    invoke-static {p1, v0, v1}, Lcom/google/research/reflection/a/f;->a(Ljava/io/DataInputStream;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    .line 239
    iget p1, p0, Lcom/google/research/reflection/b/a;->afx:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    .line 240
    iget-object p1, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 241
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 242
    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 2

    .line 247
    iget v0, p0, Lcom/google/research/reflection/b/a;->afx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 248
    iget v0, p0, Lcom/google/research/reflection/b/a;->afA:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 249
    iget-wide v0, p0, Lcom/google/research/reflection/b/a;->afy:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 250
    iget-wide v0, p0, Lcom/google/research/reflection/b/a;->afz:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 251
    iget-object v0, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/google/research/reflection/a/f;->a(Ljava/io/DataOutputStream;Ljava/util/Map;)V

    .line 252
    iget-object v0, p0, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/google/research/reflection/a/f;->a(Ljava/io/DataOutputStream;Ljava/util/Map;)V

    .line 253
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/google/research/reflection/b/a;->iH()Lcom/google/research/reflection/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lcom/google/research/reflection/signal/ReflectionEvent;)Z
    .locals 3

    .line 179
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v0

    sget-object v1, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->ahZ:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 180
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->ew()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    const-string v0, "GEL"

    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->ew()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 181
    :cond_1
    :goto_0
    return v2
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "local_app_launch_history"

    return-object v0
.end method

.method public iH()Lcom/google/research/reflection/b/a;
    .locals 8

    .line 70
    new-instance v7, Lcom/google/research/reflection/b/a;

    iget v1, p0, Lcom/google/research/reflection/b/a;->afx:I

    iget-wide v2, p0, Lcom/google/research/reflection/b/a;->afy:J

    iget-wide v4, p0, Lcom/google/research/reflection/b/a;->afz:J

    iget v6, p0, Lcom/google/research/reflection/b/a;->afA:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/research/reflection/b/a;-><init>(IJJI)V

    .line 72
    invoke-virtual {v7, p0}, Lcom/google/research/reflection/b/a;->a(Lcom/google/research/reflection/b/a;)V

    .line 73
    return-object v7
.end method

.method public final iI()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/google/research/reflection/b/a;->afx:I

    return v0
.end method

.method public synthetic iJ()Lcom/google/research/reflection/b/g;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/google/research/reflection/b/a;->iH()Lcom/google/research/reflection/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final q(Ljava/util/List;)V
    .locals 3

    .line 137
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afv:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/google/research/reflection/b/a;->afw:[Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean v0, v1, v2

    .line 143
    iget-object v0, p0, Lcom/google/research/reflection/b/g;->afD:Lcom/google/research/reflection/b/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/research/reflection/b/g;->afD:Lcom/google/research/reflection/b/m;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/google/research/reflection/b/m;->a(Lcom/google/research/reflection/b/g;I)V

    .line 146
    :cond_0
    return-void
.end method
