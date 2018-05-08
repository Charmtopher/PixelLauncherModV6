.class final Lcom/google/android/gms/internal/bz;
.super Lcom/google/android/gms/internal/bP;


# instance fields
.field private TE:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bw;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bP;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bz;->TE:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final hi()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->TE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->a(Lcom/google/android/gms/internal/bw;)V

    return-void
.end method
