.class public Lcom/google/android/gms/common/api/p;
.super Ljava/lang/Object;


# instance fields
.field private final GT:Landroid/accounts/Account;

.field public final IA:Lcom/google/android/gms/common/api/r;

.field private final IB:Lcom/google/android/gms/internal/cj;

.field public final IC:Lcom/google/android/gms/internal/bF;

.field public final Iw:Lcom/google/android/gms/common/api/a;

.field private final Ix:Lcom/google/android/gms/common/api/b;

.field public final Iy:Lcom/google/android/gms/internal/aE;

.field public final Iz:Landroid/os/Looper;

.field public final fp:I

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/p;->Iw:Lcom/google/android/gms/common/api/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->Ix:Lcom/google/android/gms/common/api/b;

    iput-object p3, p0, Lcom/google/android/gms/common/api/p;->Iz:Landroid/os/Looper;

    new-instance p3, Lcom/google/android/gms/internal/aE;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/aE;-><init>(Lcom/google/android/gms/common/api/a;)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    new-instance p2, Lcom/google/android/gms/internal/bN;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/bN;-><init>(Lcom/google/android/gms/common/api/p;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/p;->IA:Lcom/google/android/gms/common/api/r;

    iget-object p2, p0, Lcom/google/android/gms/common/api/p;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/internal/bF;->D(Landroid/content/Context;)Lcom/google/android/gms/internal/bF;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/p;->IC:Lcom/google/android/gms/internal/bF;

    iget-object p2, p0, Lcom/google/android/gms/common/api/p;->IC:Lcom/google/android/gms/internal/bF;

    iget-object p2, p2, Lcom/google/android/gms/internal/bF;->TU:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/api/p;->fp:I

    new-instance p2, Lcom/google/android/gms/internal/aD;

    invoke-direct {p2}, Lcom/google/android/gms/internal/aD;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/p;->IB:Lcom/google/android/gms/internal/cj;

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->GT:Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/p;->Iw:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/p;->Ix:Lcom/google/android/gms/common/api/b;

    iget-object p1, p4, Lcom/google/android/gms/common/api/q;->IG:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->Iz:Landroid/os/Looper;

    iget-object p1, p0, Lcom/google/android/gms/common/api/p;->Iw:Lcom/google/android/gms/common/api/a;

    iget-object p2, p0, Lcom/google/android/gms/common/api/p;->Ix:Lcom/google/android/gms/common/api/b;

    new-instance p3, Lcom/google/android/gms/internal/aE;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/aE;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/b;)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    new-instance p1, Lcom/google/android/gms/internal/bN;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/bN;-><init>(Lcom/google/android/gms/common/api/p;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->IA:Lcom/google/android/gms/common/api/r;

    iget-object p1, p0, Lcom/google/android/gms/common/api/p;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/bF;->D(Landroid/content/Context;)Lcom/google/android/gms/internal/bF;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->IC:Lcom/google/android/gms/internal/bF;

    iget-object p1, p0, Lcom/google/android/gms/common/api/p;->IC:Lcom/google/android/gms/internal/bF;

    iget-object p1, p1, Lcom/google/android/gms/internal/bF;->TU:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/p;->fp:I

    iget-object p1, p4, Lcom/google/android/gms/common/api/q;->IF:Lcom/google/android/gms/internal/cj;

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->IB:Lcom/google/android/gms/internal/cj;

    iget-object p1, p4, Lcom/google/android/gms/common/api/q;->account:Landroid/accounts/Account;

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->GT:Landroid/accounts/Account;

    iget-object p1, p0, Lcom/google/android/gms/common/api/p;->IC:Lcom/google/android/gms/internal/bF;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/bF;->b(Lcom/google/android/gms/common/api/p;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/internal/cj;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/E;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/E;-><init>()V

    const-string v1, "StatusExceptionMapper must not be null."

    invoke-static {p4, v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, v0, Lcom/google/android/gms/common/api/E;->IB:Lcom/google/android/gms/internal/cj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/E;->fC()Lcom/google/android/gms/common/api/q;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/q;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/common/api/j;
    .locals 9

    new-instance v0, Lcom/google/android/gms/common/api/s;

    iget-object v1, p0, Lcom/google/android/gms/common/api/p;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/p;->GT:Landroid/accounts/Account;

    iput-object v1, v0, Lcom/google/android/gms/common/api/s;->GT:Landroid/accounts/Account;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/s;->fw()Lcom/google/android/gms/common/internal/G;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->Iw:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->fn()Lcom/google/android/gms/common/api/f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/p;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/common/api/p;->Ix:Lcom/google/android/gms/common/api/b;

    move-object v4, p1

    move-object v7, p2

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/f;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;
    .locals 4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/aK;->hl()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->IC:Lcom/google/android/gms/internal/bF;

    new-instance v1, Lcom/google/android/gms/internal/aA;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/aA;-><init>(ILcom/google/android/gms/internal/aK;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/cc;

    iget-object v0, v0, Lcom/google/android/gms/internal/bF;->TV:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v3, v1, v0, p0}, Lcom/google/android/gms/internal/cc;-><init>(Lcom/google/android/gms/internal/ay;ILcom/google/android/gms/common/api/p;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object p2
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzbdn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbdn;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzbdn;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/cn;)Lcom/google/android/gms/tasks/b;
    .locals 5

    new-instance v0, Lcom/google/android/gms/tasks/c;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/c;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/p;->IC:Lcom/google/android/gms/internal/bF;

    iget-object v2, p0, Lcom/google/android/gms/common/api/p;->IB:Lcom/google/android/gms/internal/cj;

    new-instance v3, Lcom/google/android/gms/internal/aB;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1, v0, v2}, Lcom/google/android/gms/internal/aB;-><init>(ILcom/google/android/gms/internal/cn;Lcom/google/android/gms/tasks/c;Lcom/google/android/gms/internal/cj;)V

    iget-object p1, v1, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/google/android/gms/internal/bF;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/cc;

    iget-object v1, v1, Lcom/google/android/gms/internal/bF;->TV:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v4, v3, v1, p0}, Lcom/google/android/gms/internal/cc;-><init>(Lcom/google/android/gms/internal/ay;ILcom/google/android/gms/common/api/p;)V

    const/4 v1, 0x4

    invoke-virtual {v2, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, v0, Lcom/google/android/gms/tasks/c;->adX:Lcom/google/android/gms/tasks/k;

    return-object p1
.end method
