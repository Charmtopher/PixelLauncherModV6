.class public abstract Lcom/google/research/reflection/predictor/AbstractEventEstimator;
.super Lcom/google/research/reflection/predictor/g;
.source "SourceFile"


# instance fields
.field protected afv:Ljava/util/HashMap;

.field protected ahq:Ljava/util/HashMap;

.field protected ahr:Ljava/util/HashMap;

.field protected ahs:I

.field protected aht:Ljava/util/HashMap;

.field private ahu:[F

.field protected ahv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/g;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahq:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->aht:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->afv:Ljava/util/HashMap;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahu:[F

    .line 72
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahv:I

    return-void
.end method


# virtual methods
.method protected abstract N(Ljava/lang/String;)V
.end method

.method protected abstract a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    const/4 p1, 0x0

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    :goto_2
    iget-object v2, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    add-int/2addr v3, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 196
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->N(Ljava/lang/String;)V

    .line 199
    :cond_4
    goto :goto_1

    .line 200
    :cond_5
    return-void
.end method

.method public final bF(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahv:I

    .line 268
    return-void
.end method

.method public final bG(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahs:I

    .line 276
    return-void
.end method

.method public final f(Lcom/google/research/reflection/signal/ReflectionEvent;)I
    .locals 4

    .line 77
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v1

    .line 79
    iget-object p1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 80
    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 82
    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->aht:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 10

    .line 90
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 91
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahv:I

    if-ne v0, v1, :cond_a

    .line 92
    const-wide v0, 0x7fffffffffffffffL

    iget-object v2, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->afv:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v8, v4

    move-object v4, v0

    move-wide v0, v8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 93
    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_a

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahq:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahs:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahs:I

    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->aht:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->afv:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_4

    invoke-interface {v4, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahq:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahq:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->aht:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->aht:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->afv:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->afv:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3, v3, v0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-instance v0, Lcom/google/research/reflection/predictor/AbstractEventEstimator$PredictorInvalidException;

    const-string v1, "Predictor becomes invalid"

    invoke-direct {v0, v1}, Lcom/google/research/reflection/predictor/AbstractEventEstimator$PredictorInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/research/reflection/predictor/AbstractEventEstimator$PredictorInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_9
    :goto_2
    goto :goto_3

    .line 96
    :catch_0
    move-exception v0

    .line 104
    :cond_a
    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->f(Lcom/google/research/reflection/signal/ReflectionEvent;)I

    move-result v0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->h(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahq:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 107
    if-nez v2, :cond_b

    .line 108
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahq:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget v2, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahs:I

    .line 113
    iget-object v2, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->afv:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v1
.end method

.method protected abstract h(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
.end method

.method public final i(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 7

    .line 148
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahu:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahu:[F

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahu:[F

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahu:[F

    array-length v0, v0

    if-lez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahu:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahu:[F

    invoke-virtual {p0, v0, p1}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    move-result-object p1

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    iget-object v1, p1, Lcom/google/research/reflection/predictor/l;->ahS:[F

    .line 157
    if-eqz v1, :cond_3

    .line 158
    iget-object v2, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 159
    new-instance v4, Lcom/google/research/reflection/predictor/m;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v3, v1, v3

    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lcom/google/research/reflection/predictor/m;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    goto :goto_0

    .line 162
    :cond_3
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    iput-object v0, p1, Lcom/google/research/reflection/predictor/l;->ahU:Ljava/util/ArrayList;

    .line 164
    return-object p1
.end method

.method public final ja()Ljava/util/HashMap;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->aht:Ljava/util/HashMap;

    return-object v0
.end method

.method public final jb()Ljava/util/HashMap;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahq:Ljava/util/HashMap;

    return-object v0
.end method

.method public final jc()Ljava/util/HashMap;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->afv:Ljava/util/HashMap;

    return-object v0
.end method

.method public final jd()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahv:I

    return v0
.end method

.method public final je()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahs:I

    return v0
.end method

.method public final jf()Ljava/util/HashMap;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/research/reflection/predictor/AbstractEventEstimator;->ahr:Ljava/util/HashMap;

    return-object v0
.end method
