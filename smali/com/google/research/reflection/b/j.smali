.class public Lcom/google/research/reflection/b/j;
.super Lcom/google/research/reflection/b/g;
.source "SourceFile"


# static fields
.field public static final afH:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/research/reflection/b/j;->afH:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/research/reflection/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;
    .locals 12

    .line 34
    new-instance p1, Lcom/google/research/reflection/layers/m;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 35
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v2

    if-nez v2, :cond_0

    .line 36
    return-object p1

    .line 38
    :cond_0
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/research/reflection/signal/b;->eC()Lcom/google/research/reflection/signal/a;

    move-result-object v2

    .line 39
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v4

    invoke-interface {v2}, Lcom/google/research/reflection/signal/a;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-interface {v2}, Lcom/google/research/reflection/signal/a;->getLatitude()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double p2, v6, v8

    if-eqz p2, :cond_1

    invoke-interface {v2}, Lcom/google/research/reflection/signal/a;->getLongitude()D

    move-result-wide v6

    cmpl-double p2, v6, v8

    if-eqz p2, :cond_1

    const-wide/16 v6, 0x0

    cmp-long p2, v6, v4

    if-gtz p2, :cond_1

    sget-wide v6, Lcom/google/research/reflection/b/j;->afH:J

    cmp-long p2, v4, v6

    if-gtz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    if-eqz p2, :cond_3

    .line 40
    invoke-interface {v2}, Lcom/google/research/reflection/signal/a;->getLatitude()D

    move-result-wide v4

    invoke-interface {v2}, Lcom/google/research/reflection/signal/a;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    new-array p2, v0, [F

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-float v2, v10

    aput v2, p2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-float v2, v6

    aput v2, p2, v1

    const/4 v1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, p2, v1

    .line 41
    iget-object v1, p1, Lcom/google/research/reflection/layers/m;->agU:[D

    array-length v1, v1

    if-ne v1, v0, :cond_2

    :goto_1
    if-ge v3, v0, :cond_3

    iget-object v1, p1, Lcom/google/research/reflection/layers/m;->agU:[D

    aget v2, p2, v3

    float-to-double v4, v2

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 43
    :cond_3
    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 11
    new-instance v0, Lcom/google/research/reflection/b/j;

    invoke-direct {v0}, Lcom/google/research/reflection/b/j;-><init>()V

    return-object v0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "lat_lng"

    return-object v0
.end method

.method public final iI()I
    .locals 1

    .line 48
    const/4 v0, 0x3

    return v0
.end method

.method public final iJ()Lcom/google/research/reflection/b/g;
    .locals 1

    .line 53
    new-instance v0, Lcom/google/research/reflection/b/j;

    invoke-direct {v0}, Lcom/google/research/reflection/b/j;-><init>()V

    return-object v0
.end method
