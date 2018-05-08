.class public Lcom/google/research/reflection/b/i;
.super Lcom/google/research/reflection/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/research/reflection/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;
    .locals 6

    .line 23
    new-instance p1, Lcom/google/research/reflection/layers/m;

    const/4 v0, 0x1

    const/16 v1, 0x18

    invoke-direct {p1, v0, v1}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 24
    invoke-static {p2}, Lcom/google/research/reflection/a/e;->d(Lcom/google/research/reflection/signal/ReflectionEvent;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 25
    iget-object v2, p1, Lcom/google/research/reflection/layers/m;->agU:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v2, v1

    .line 26
    invoke-static {p2}, Lcom/google/research/reflection/a/e;->d(Lcom/google/research/reflection/signal/ReflectionEvent;)Ljava/util/Calendar;

    move-result-object p2

    const/16 v2, 0xc

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 27
    const/16 v2, 0x17

    const/16 v5, 0x1e

    if-ge p2, v5, :cond_1

    .line 28
    add-int/lit8 p2, v1, -0x1

    .line 29
    if-gez p2, :cond_0

    .line 30
    nop

    .line 32
    move p2, v2

    :cond_0
    iget-object v0, p1, Lcom/google/research/reflection/layers/m;->agU:[D

    aput-wide v3, v0, p2

    .line 33
    goto :goto_0

    :cond_1
    if-le p2, v5, :cond_3

    .line 34
    add-int/2addr v1, v0

    .line 35
    if-le v1, v2, :cond_2

    .line 36
    const/4 v1, 0x0

    .line 38
    :cond_2
    iget-object p2, p1, Lcom/google/research/reflection/layers/m;->agU:[D

    aput-wide v3, p2, v1

    .line 40
    :cond_3
    :goto_0
    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 11
    new-instance v0, Lcom/google/research/reflection/b/i;

    invoke-direct {v0}, Lcom/google/research/reflection/b/i;-><init>()V

    return-object v0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "hour_of_day"

    return-object v0
.end method

.method public final iI()I
    .locals 1

    .line 45
    const/16 v0, 0x18

    return v0
.end method

.method public final iJ()Lcom/google/research/reflection/b/g;
    .locals 1

    .line 50
    new-instance v0, Lcom/google/research/reflection/b/i;

    invoke-direct {v0}, Lcom/google/research/reflection/b/i;-><init>()V

    return-object v0
.end method
