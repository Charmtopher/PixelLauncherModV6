.class public Lcom/google/research/reflection/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/c/c;


# instance fields
.field private ahJ:Lcom/google/research/reflection/predictor/b;


# direct methods
.method public constructor <init>(Lcom/google/research/reflection/predictor/b;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/c/b;->c(Lcom/google/research/reflection/predictor/b;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 0

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/c/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/research/reflection/c/b;->ahJ:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/predictor/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/google/research/reflection/predictor/b;)V
    .locals 0

    monitor-enter p0

    .line 37
    :try_start_0
    iput-object p1, p0, Lcom/google/research/reflection/c/b;->ahJ:Lcom/google/research/reflection/predictor/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
