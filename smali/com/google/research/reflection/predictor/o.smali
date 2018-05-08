.class public Lcom/google/research/reflection/predictor/o;
.super Lcom/google/research/reflection/predictor/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/d;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "shortcut_neural_predictor"

    return-object v0
.end method

.method public final j(Lcom/google/research/reflection/signal/ReflectionEvent;)Z
    .locals 1

    .line 23
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object p1

    sget-object v0, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aic:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
