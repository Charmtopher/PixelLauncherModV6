.class public Lcom/google/research/reflection/predictor/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ahN:I

.field public final ahO:Ljava/util/List;

.field public final ahP:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/reflection/predictor/j;->ahN:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/j;->ahO:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/j;->ahP:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/predictor/g;I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/research/reflection/predictor/j;->ahO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/google/research/reflection/predictor/j;->ahP:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/google/research/reflection/predictor/j;->ahO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/predictor/g;

    .line 86
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/research/reflection/predictor/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public final c(Lcom/google/research/reflection/predictor/b;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/research/reflection/predictor/j;->ahO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/predictor/g;

    .line 100
    invoke-virtual {v1, p1}, Lcom/google/research/reflection/predictor/g;->c(Lcom/google/research/reflection/predictor/b;)V

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public final k(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 9

    .line 29
    new-instance v0, Lcom/google/research/reflection/predictor/l;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    iget-object v2, p0, Lcom/google/research/reflection/predictor/j;->ahO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/predictor/g;

    .line 32
    invoke-virtual {v3, p1}, Lcom/google/research/reflection/predictor/g;->i(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    move-result-object v4

    iget-object v4, v4, Lcom/google/research/reflection/predictor/l;->ahU:Ljava/util/ArrayList;

    .line 33
    const/4 v5, 0x0

    .line 35
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/google/research/reflection/predictor/j;->ahP:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 34
    invoke-interface {v4, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/research/reflection/predictor/m;

    .line 39
    iget-object v5, v4, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 40
    new-instance v5, Lcom/google/research/reflection/predictor/m;

    iget-object v6, v4, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    iget v7, v4, Lcom/google/research/reflection/predictor/m;->CX:F

    iget-object v8, v4, Lcom/google/research/reflection/predictor/m;->ahV:Ljava/util/Set;

    invoke-direct {v5, v6, v7, v8}, Lcom/google/research/reflection/predictor/m;-><init>(Ljava/lang/String;FLjava/util/Set;)V

    .line 41
    iget-object v6, v0, Lcom/google/research/reflection/predictor/l;->ahU:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v4, v4, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v5, v4, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/predictor/m;

    iget-object v5, v5, Lcom/google/research/reflection/predictor/m;->ahV:Ljava/util/Set;

    iget-object v4, v4, Lcom/google/research/reflection/predictor/m;->ahV:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    goto :goto_0

    .line 49
    :cond_2
    new-instance p1, Lcom/google/research/reflection/predictor/f;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/f;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/research/reflection/predictor/f;->a(Lcom/google/research/reflection/predictor/j;)Lcom/google/research/reflection/predictor/f;

    move-result-object p1

    .line 50
    iget-object v1, v0, Lcom/google/research/reflection/predictor/l;->ahU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/predictor/m;

    .line 51
    invoke-virtual {p1, v2}, Lcom/google/research/reflection/predictor/f;->a(Lcom/google/research/reflection/predictor/m;)Lcom/google/research/reflection/predictor/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/research/reflection/predictor/f;->jh()I

    move-result v3

    iput v3, v2, Lcom/google/research/reflection/predictor/m;->ahW:I

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    return-object v0
.end method
