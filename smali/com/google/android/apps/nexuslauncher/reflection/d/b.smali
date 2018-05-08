.class public Lcom/google/android/apps/nexuslauncher/reflection/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/c/c;


# instance fields
.field private final Bt:Lcom/google/android/apps/nexuslauncher/reflection/d/c;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/d/c;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->Bt:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 21
    return-void
.end method

.method public final declared-synchronized b(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->Bt:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->c(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    .line 14
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
