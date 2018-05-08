.class public Lcom/google/research/reflection/predictor/c;
.super Lcom/google/research/reflection/predictor/n;
.source "SourceFile"


# static fields
.field static final ahw:J


# instance fields
.field private final ahx:Lcom/google/research/reflection/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/research/reflection/predictor/c;->ahw:J

    return-void
.end method

.method public constructor <init>(Lcom/google/research/reflection/a/c;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/n;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/research/reflection/predictor/c;->ahx:Lcom/google/research/reflection/a/c;

    .line 23
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "Location_Rule_Predictor"

    return-object v0
.end method

.method public final i(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 5

    .line 27
    new-instance v0, Lcom/google/research/reflection/predictor/l;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 28
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 29
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eB()Lcom/google/research/reflection/signal/c;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 30
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eB()Lcom/google/research/reflection/signal/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/c;->eE()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 33
    :cond_0
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v1

    .line 34
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/research/reflection/signal/b;->eB()Lcom/google/research/reflection/signal/c;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/research/reflection/signal/c;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 35
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_6

    sget-wide v3, Lcom/google/research/reflection/predictor/c;->ahw:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    goto :goto_1

    .line 38
    :cond_1
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/b;->eB()Lcom/google/research/reflection/signal/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/c;->eE()Ljava/lang/String;

    move-result-object p1

    .line 39
    const/4 v1, 0x0

    .line 40
    const-string v2, "Place.TYPE_AIRPORT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    iget-object p1, p0, Lcom/google/research/reflection/predictor/c;->ahx:Lcom/google/research/reflection/a/c;

    invoke-interface {p1}, Lcom/google/research/reflection/a/c;->ef()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 42
    :cond_2
    const-string v2, "Place.TYPE_RESTAURANT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Place.TYPE_CAFE"

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 44
    :cond_3
    iget-object p1, p0, Lcom/google/research/reflection/predictor/c;->ahx:Lcom/google/research/reflection/a/c;

    invoke-interface {p1}, Lcom/google/research/reflection/a/c;->eg()Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 48
    iget-object p1, v0, Lcom/google/research/reflection/predictor/l;->ahU:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/research/reflection/predictor/m;

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "Location_Rule_Predictor"

    invoke-direct {v2, v1, v3, v4}, Lcom/google/research/reflection/predictor/m;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_5
    return-object v0

    .line 36
    :cond_6
    :goto_1
    return-object v0

    .line 31
    :cond_7
    :goto_2
    return-object v0
.end method
