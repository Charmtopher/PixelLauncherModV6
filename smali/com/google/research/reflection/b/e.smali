.class public Lcom/google/research/reflection/b/e;
.super Lcom/google/research/reflection/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/research/reflection/b/a;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(IJJI)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p6}, Lcom/google/research/reflection/b/a;-><init>(IJJI)V

    .line 19
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/research/reflection/b/e;->iL()Lcom/google/research/reflection/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/google/research/reflection/signal/ReflectionEvent;)Z
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object p1

    sget-object v0, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aic:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-ne p1, v0, :cond_0

    .line 37
    const/4 p1, 0x1

    return p1

    .line 39
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "deep_link_history"

    return-object v0
.end method

.method public final synthetic iH()Lcom/google/research/reflection/b/a;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/research/reflection/b/e;->iL()Lcom/google/research/reflection/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iJ()Lcom/google/research/reflection/b/g;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/research/reflection/b/e;->iL()Lcom/google/research/reflection/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final iL()Lcom/google/research/reflection/b/e;
    .locals 8

    .line 28
    new-instance v7, Lcom/google/research/reflection/b/e;

    iget v1, p0, Lcom/google/research/reflection/b/e;->afx:I

    iget-wide v2, p0, Lcom/google/research/reflection/b/e;->afy:J

    iget-wide v4, p0, Lcom/google/research/reflection/b/e;->afz:J

    iget v6, p0, Lcom/google/research/reflection/b/e;->afA:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/research/reflection/b/e;-><init>(IJJI)V

    .line 30
    invoke-virtual {v7, p0}, Lcom/google/research/reflection/b/e;->a(Lcom/google/research/reflection/b/a;)V

    .line 31
    return-object v7
.end method
