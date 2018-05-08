.class public abstract Lcom/google/android/gms/internal/aP;
.super Lcom/google/android/gms/common/api/v;


# static fields
.field static final RO:Ljava/lang/ThreadLocal;


# instance fields
.field private final JS:Ljava/util/concurrent/CountDownLatch;

.field final RP:Ljava/lang/Object;

.field private RQ:Lcom/google/android/gms/internal/aR;

.field private RR:Ljava/lang/ref/WeakReference;

.field final RS:Ljava/util/ArrayList;

.field private RT:Lcom/google/android/gms/common/api/z;

.field private final RU:Ljava/util/concurrent/atomic/AtomicReference;

.field private RV:Lcom/google/android/gms/common/api/y;

.field private RW:Lcom/google/android/gms/internal/aS;

.field private volatile RX:Z

.field private RY:Z

.field private RZ:Z

.field private Sa:Lcom/google/android/gms/common/internal/zzao;

.field Sb:Ljava/lang/Integer;

.field private volatile Sc:Lcom/google/android/gms/internal/cp;

.field private Sd:Z

.field private mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aQ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aQ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aP;->RO:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/v;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->JS:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aP;->Sd:Z

    new-instance v0, Lcom/google/android/gms/internal/aR;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aR;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RQ:Lcom/google/android/gms/internal/aR;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RR:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/v;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->JS:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aP;->Sd:Z

    new-instance v0, Lcom/google/android/gms/internal/aR;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/aR;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RQ:Lcom/google/android/gms/internal/aR;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/aP;->RR:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/r;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/v;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->JS:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aP;->Sd:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/r;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/aR;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/aR;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/aP;->RQ:Lcom/google/android/gms/internal/aR;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->RR:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aP;)Lcom/google/android/gms/common/api/y;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/aP;->RV:Lcom/google/android/gms/common/api/y;

    return-object p0
.end method

.method private final c(Lcom/google/android/gms/common/api/y;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/aP;->RV:Lcom/google/android/gms/common/api/y;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/aP;->Sa:Lcom/google/android/gms/common/internal/zzao;

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->JS:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RV:Lcom/google/android/gms/common/api/y;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/y;->fz()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aP;->mStatus:Lcom/google/android/gms/common/api/Status;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aP;->RY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/aP;->RT:Lcom/google/android/gms/common/api/z;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/aP;->RT:Lcom/google/android/gms/common/api/z;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/aP;->RV:Lcom/google/android/gms/common/api/y;

    instance-of p1, p1, Lcom/google/android/gms/common/api/x;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/aS;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/aS;-><init>(Lcom/google/android/gms/internal/aP;B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/aP;->RW:Lcom/google/android/gms/internal/aS;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/aP;->RQ:Lcom/google/android/gms/internal/aR;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aR;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/aP;->RQ:Lcom/google/android/gms/internal/aR;

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RT:Lcom/google/android/gms/common/api/z;

    invoke-direct {p0}, Lcom/google/android/gms/internal/aP;->hm()Lcom/google/android/gms/common/api/y;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/aR;->a(Lcom/google/android/gms/common/api/z;Lcom/google/android/gms/common/api/y;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/aP;->RS:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/google/android/gms/common/api/w;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/w;->fy()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/aP;->RS:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static d(Lcom/google/android/gms/common/api/y;)V
    .locals 4

    instance-of v0, p0, Lcom/google/android/gms/common/api/x;

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/x;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/x;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "BasePendingResult"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x12

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to release "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private final hm()Lcom/google/android/gms/common/api/y;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aP;->RX:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->hj()Z

    move-result v1

    const-string v3, "Result is not ready."

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aP;->RV:Lcom/google/android/gms/common/api/y;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/aP;->RV:Lcom/google/android/gms/common/api/y;

    iput-object v3, p0, Lcom/google/android/gms/internal/aP;->RT:Lcom/google/android/gms/common/api/z;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/aP;->RX:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cv;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/cv;->c(Lcom/google/android/gms/internal/aP;)V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/y;
.end method

.method public final a(Lcom/google/android/gms/common/api/z;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/aP;->RT:Lcom/google/android/gms/common/api/z;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aP;->RX:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Result has already been consumed."

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aP;->Sc:Lcom/google/android/gms/internal/cp;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v1, "Cannot set callbacks if then() has been called."

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->hj()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/aP;->RQ:Lcom/google/android/gms/internal/aR;

    invoke-direct {p0}, Lcom/google/android/gms/internal/aP;->hm()Lcom/google/android/gms/common/api/y;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/aR;->a(Lcom/google/android/gms/common/api/z;Lcom/google/android/gms/common/api/y;)V

    goto :goto_1

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/aP;->RT:Lcom/google/android/gms/common/api/z;

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/cv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RU:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/y;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aP;->RZ:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aP;->RY:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->hj()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->hj()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Results have already been set"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aP;->RX:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Result has already been consumed"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aP;->c(Lcom/google/android/gms/common/api/y;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/aP;->d(Lcom/google/android/gms/common/api/y;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aP;->RY:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aP;->RX:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aP;->RV:Lcom/google/android/gms/common/api/y;

    invoke-static {v1}, Lcom/google/android/gms/internal/aP;->d(Lcom/google/android/gms/common/api/y;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/aP;->RY:Z

    sget-object v1, Lcom/google/android/gms/common/api/Status;->Jg:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/aP;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/y;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/aP;->c(Lcom/google/android/gms/common/api/y;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->hj()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aP;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aP;->b(Lcom/google/android/gms/common/api/y;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/aP;->RZ:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final hj()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->JS:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hk()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aP;->RR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/r;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/aP;->Sd:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aP;->isCanceled()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final hl()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aP;->Sd:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/aP;->RO:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/aP;->Sd:Z

    return-void
.end method

.method public final isCanceled()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aP;->RP:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aP;->RY:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
