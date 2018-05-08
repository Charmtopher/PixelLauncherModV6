.class final Lcom/google/android/gms/internal/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/google/android/gms/internal/cv;


# instance fields
.field private final UX:Ljava/lang/ref/WeakReference;

.field private final UY:Ljava/lang/ref/WeakReference;

.field private final UZ:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aP;Lcom/google/android/gms/common/api/B;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->UY:Ljava/lang/ref/WeakReference;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cu;->UX:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->UZ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/aP;Lcom/google/android/gms/common/api/B;Landroid/os/IBinder;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cu;-><init>(Lcom/google/android/gms/internal/aP;Lcom/google/android/gms/common/api/B;Landroid/os/IBinder;)V

    return-void
.end method

.method private final hS()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->UX:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aP;

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->UY:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/B;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/aP;->Sb:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/B;->fA()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->UZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cu;->hS()V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/aP;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cu;->hS()V

    return-void
.end method
