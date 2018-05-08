.class public final Lcom/google/android/gms/internal/bB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aU;
.implements Lcom/google/android/gms/internal/bQ;


# instance fields
.field IV:Lcom/google/android/gms/common/api/f;

.field final KZ:Lcom/google/android/gms/common/d;

.field final Sh:Lcom/google/android/gms/internal/bw;

.field final Sr:Ljava/util/concurrent/locks/Lock;

.field Sy:Ljava/util/Map;

.field final TF:Ljava/util/concurrent/locks/Condition;

.field final TG:Lcom/google/android/gms/internal/bD;

.field final TH:Ljava/util/Map;

.field volatile TI:Lcom/google/android/gms/internal/bA;

.field private TJ:Lcom/google/android/gms/common/ConnectionResult;

.field TK:I

.field final TL:Lcom/google/android/gms/internal/bR;

.field final Tv:Ljava/util/Map;

.field final mContext:Landroid/content/Context;

.field zzaOg:Lcom/google/android/gms/common/internal/G;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/bw;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/d;Ljava/util/Map;Lcom/google/android/gms/common/internal/G;Ljava/util/Map;Lcom/google/android/gms/common/api/f;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bR;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bB;->TJ:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/bB;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/internal/bB;->KZ:Lcom/google/android/gms/common/d;

    iput-object p6, p0, Lcom/google/android/gms/internal/bB;->Tv:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/internal/bB;->zzaOg:Lcom/google/android/gms/common/internal/G;

    iput-object p8, p0, Lcom/google/android/gms/internal/bB;->Sy:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/bB;->IV:Lcom/google/android/gms/common/api/f;

    iput-object p2, p0, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iput-object p11, p0, Lcom/google/android/gms/internal/bB;->TL:Lcom/google/android/gms/internal/bR;

    check-cast p10, Ljava/util/ArrayList;

    invoke-virtual {p10}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p10, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p2, p2, 0x1

    check-cast p5, Lcom/google/android/gms/internal/aT;

    iput-object p0, p5, Lcom/google/android/gms/internal/aT;->Sg:Lcom/google/android/gms/internal/aU;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/bD;

    invoke-direct {p1, p0, p4}, Lcom/google/android/gms/internal/bD;-><init>(Lcom/google/android/gms/internal/bB;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/bB;->TG:Lcom/google/android/gms/internal/bD;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/bB;->TF:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Lcom/google/android/gms/internal/bv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/bv;-><init>(Lcom/google/android/gms/internal/bB;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aK;->hl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bA;->a(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/bA;->a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/bC;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TG:Lcom/google/android/gms/internal/bD;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/bD;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TG:Lcom/google/android/gms/internal/bD;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bD;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aK;->hl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bA;->b(Lcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method

.method public final connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bA;->connect()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bA;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "  "

    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "mState="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/bB;->Sy:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bB;->Tv:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->fo()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/j;

    invoke-interface {v0, p2, p3}, Lcom/google/android/gms/common/api/j;->dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final h(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bB;->TJ:Lcom/google/android/gms/common/ConnectionResult;

    new-instance p1, Lcom/google/android/gms/internal/bv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/bv;-><init>(Lcom/google/android/gms/internal/bB;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    iget-object p1, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bA;->begin()V

    iget-object p1, p0, Lcom/google/android/gms/internal/bB;->TF:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final ho()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bB;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    check-cast v0, Lcom/google/android/gms/internal/bh;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/bh;->SS:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/bh;->SS:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/bh;->SR:Lcom/google/android/gms/internal/bB;

    iget-object v1, v1, Lcom/google/android/gms/internal/bB;->Sh:Lcom/google/android/gms/internal/bw;

    iget-object v1, v1, Lcom/google/android/gms/internal/bw;->TB:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cs;->release()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->disconnect()Z

    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    instance-of v0, v0, Lcom/google/android/gms/internal/bh;

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bA;->onConnected(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->TI:Lcom/google/android/gms/internal/bA;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bA;->onConnectionSuspended(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->Sr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
