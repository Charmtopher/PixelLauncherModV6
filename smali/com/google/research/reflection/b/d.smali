.class public Lcom/google/research/reflection/b/d;
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
    .locals 3

    .line 23
    new-instance p1, Lcom/google/research/reflection/layers/m;

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 24
    invoke-static {p2}, Lcom/google/research/reflection/a/e;->d(Lcom/google/research/reflection/signal/ReflectionEvent;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, v1

    .line 25
    iget-object v0, p1, Lcom/google/research/reflection/layers/m;->agU:[D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    aput-wide v1, v0, p2

    .line 26
    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 11
    new-instance v0, Lcom/google/research/reflection/b/d;

    invoke-direct {v0}, Lcom/google/research/reflection/b/d;-><init>()V

    return-object v0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "day_of_week"

    return-object v0
.end method

.method public final iI()I
    .locals 1

    .line 31
    const/4 v0, 0x7

    return v0
.end method

.method public final iJ()Lcom/google/research/reflection/b/g;
    .locals 1

    .line 36
    new-instance v0, Lcom/google/research/reflection/b/d;

    invoke-direct {v0}, Lcom/google/research/reflection/b/d;-><init>()V

    return-object v0
.end method
