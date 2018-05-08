.class public final Lcom/google/android/gms/internal/aH;
.super Ljava/lang/Object;


# instance fields
.field private RA:I

.field private RB:Z

.field final Rz:Lcom/google/android/gms/tasks/c;

.field final zzaMh:Landroid/support/v4/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/c;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aH;->Rz:Lcom/google/android/gms/tasks/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aH;->RB:Z

    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aH;->zzaMh:Landroid/support/v4/c/a;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/p;

    iget-object v1, p0, Lcom/google/android/gms/internal/aH;->zzaMh:Landroid/support/v4/c/a;

    iget-object v0, v0, Lcom/google/android/gms/common/api/p;->Iy:Lcom/google/android/gms/internal/aE;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/aH;->zzaMh:Landroid/support/v4/c/a;

    invoke-virtual {p1}, Landroid/support/v4/c/a;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/aH;->RA:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aE;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aH;->zzaMh:Landroid/support/v4/c/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/internal/aH;->RA:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/aH;->RA:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->fl()Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aH;->RB:Z

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/aH;->RA:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/aH;->RB:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/aH;->zzaMh:Landroid/support/v4/c/a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/zza;-><init>(Landroid/support/v4/c/a;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/aH;->Rz:Lcom/google/android/gms/tasks/c;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/c;->a(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/aH;->Rz:Lcom/google/android/gms/tasks/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/c;->y(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
