.class final Lcom/google/android/gms/internal/br;
.super Lcom/google/android/gms/internal/ade;


# instance fields
.field private final Tg:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bk;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ade;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/br;->Tg:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/adm;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->Tg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/bk;->SR:Lcom/google/android/gms/internal/bB;

    new-instance v2, Lcom/google/android/gms/internal/bs;

    invoke-direct {v2, v0, v0, p1}, Lcom/google/android/gms/internal/bs;-><init>(Lcom/google/android/gms/internal/bA;Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/adm;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/bB;->a(Lcom/google/android/gms/internal/bC;)V

    return-void
.end method
