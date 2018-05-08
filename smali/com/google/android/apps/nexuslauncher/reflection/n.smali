.class Lcom/google/android/apps/nexuslauncher/reflection/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/c/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 5

    .line 43
    const-string v0, "Reflection.dbgListener"

    const-string v1, "event (id: %s, type: %s, time %d, eventSrc: %s, generatedFrom: %s)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 47
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 48
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 49
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->ew()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 50
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->ey()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    .line 44
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method
