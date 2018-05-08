.class public abstract Lcom/google/research/reflection/predictor/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ahJ:Lcom/google/research/reflection/predictor/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/research/reflection/a/c;)Lcom/google/research/reflection/predictor/g;
    .locals 1

    .line 18
    const-string v0, "neural_predictor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance p0, Lcom/google/research/reflection/predictor/d;

    invoke-direct {p0}, Lcom/google/research/reflection/predictor/d;-><init>()V

    return-object p0

    .line 20
    :cond_0
    const-string v0, "recency_event_predictor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    new-instance p0, Lcom/google/research/reflection/predictor/h;

    invoke-direct {p0}, Lcom/google/research/reflection/predictor/h;-><init>()V

    return-object p0

    .line 22
    :cond_1
    const-string v0, "shortcut_neural_predictor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    new-instance p0, Lcom/google/research/reflection/predictor/o;

    invoke-direct {p0}, Lcom/google/research/reflection/predictor/o;-><init>()V

    return-object p0

    .line 24
    :cond_2
    const-string v0, "Rule_Based_Predictor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 25
    new-instance p0, Lcom/google/research/reflection/predictor/k;

    invoke-direct {p0, p1}, Lcom/google/research/reflection/predictor/k;-><init>(Lcom/google/research/reflection/a/c;)V

    return-object p0

    .line 27
    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/io/DataInputStream;Lcom/google/research/reflection/signal/ReflectionEvent;)V
.end method

.method public abstract a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 61
    return-void
.end method

.method public abstract b(Ljava/io/DataOutputStream;)V
.end method

.method public c(Lcom/google/research/reflection/predictor/b;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/research/reflection/predictor/g;->ahJ:Lcom/google/research/reflection/predictor/b;

    .line 69
    return-void
.end method

.method public abstract g(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract i(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
.end method

.method public iN()Ljava/util/Map;
    .locals 1

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/google/research/reflection/signal/ReflectionEvent;)Z
    .locals 0

    .line 44
    const/4 p1, 0x1

    return p1
.end method
