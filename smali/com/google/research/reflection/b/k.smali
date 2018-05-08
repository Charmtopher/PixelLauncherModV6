.class public Lcom/google/research/reflection/b/k;
.super Lcom/google/research/reflection/b/g;
.source "SourceFile"


# static fields
.field public static final afH:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/research/reflection/b/k;->afH:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/research/reflection/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;
    .locals 7

    .line 33
    new-instance p1, Lcom/google/research/reflection/layers/m;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 34
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eA()Lcom/google/research/reflection/signal/ReflectionPrivatePlace;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 37
    :cond_0
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eA()Lcom/google/research/reflection/signal/ReflectionPrivatePlace;

    move-result-object v1

    .line 38
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v3

    invoke-interface {v1}, Lcom/google/research/reflection/signal/ReflectionPrivatePlace;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-interface {v1}, Lcom/google/research/reflection/signal/ReflectionPrivatePlace;->eD()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const-wide/16 v5, 0x0

    cmp-long p2, v5, v3

    if-gtz p2, :cond_1

    sget-wide v5, Lcom/google/research/reflection/b/k;->afH:J

    cmp-long p2, v3, v5

    if-gtz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    if-eqz p2, :cond_3

    .line 39
    invoke-interface {v1}, Lcom/google/research/reflection/signal/ReflectionPrivatePlace;->eD()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionPrivatePlace$Alias;->aik:Lcom/google/research/reflection/signal/ReflectionPrivatePlace$Alias;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-ne p2, v3, :cond_2

    .line 40
    iget-object p2, p1, Lcom/google/research/reflection/layers/m;->agU:[D

    aput-wide v4, p2, v2

    goto :goto_1

    .line 41
    :cond_2
    invoke-interface {v1}, Lcom/google/research/reflection/signal/ReflectionPrivatePlace;->eD()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/google/research/reflection/signal/ReflectionPrivatePlace$Alias;->aij:Lcom/google/research/reflection/signal/ReflectionPrivatePlace$Alias;

    if-ne p2, v1, :cond_3

    .line 42
    iget-object p2, p1, Lcom/google/research/reflection/layers/m;->agU:[D

    aput-wide v4, p2, v0

    .line 45
    :cond_3
    :goto_1
    return-object p1

    .line 35
    :cond_4
    :goto_2
    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 10
    new-instance v0, Lcom/google/research/reflection/b/k;

    invoke-direct {v0}, Lcom/google/research/reflection/b/k;-><init>()V

    return-object v0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 1

    .line 18
    const-string v0, "private_place"

    return-object v0
.end method

.method public final iI()I
    .locals 1

    .line 50
    const/4 v0, 0x2

    return v0
.end method

.method public final iJ()Lcom/google/research/reflection/b/g;
    .locals 1

    .line 55
    new-instance v0, Lcom/google/research/reflection/b/k;

    invoke-direct {v0}, Lcom/google/research/reflection/b/k;-><init>()V

    return-object v0
.end method
