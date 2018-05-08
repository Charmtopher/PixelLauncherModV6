.class final Lcom/google/android/gms/internal/ct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cv;


# instance fields
.field private synthetic UW:Lcom/google/android/gms/internal/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ct;->UW:Lcom/google/android/gms/internal/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/aP;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->UW:Lcom/google/android/gms/internal/cs;

    iget-object v0, v0, Lcom/google/android/gms/internal/cs;->UT:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/android/gms/internal/aP;->Sb:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->UW:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/common/api/B;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->UW:Lcom/google/android/gms/internal/cs;

    invoke-static {v0}, Lcom/google/android/gms/internal/cs;->a(Lcom/google/android/gms/internal/cs;)Lcom/google/android/gms/common/api/B;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/aP;->Sb:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/B;->fA()V

    :cond_0
    return-void
.end method
