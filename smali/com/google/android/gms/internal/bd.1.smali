.class final Lcom/google/android/gms/internal/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/w;


# instance fields
.field private synthetic SM:Lcom/google/android/gms/internal/aP;

.field private synthetic SN:Lcom/google/android/gms/internal/bc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bc;Lcom/google/android/gms/internal/aP;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bd;->SN:Lcom/google/android/gms/internal/bc;

    iput-object p2, p0, Lcom/google/android/gms/internal/bd;->SM:Lcom/google/android/gms/internal/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->SN:Lcom/google/android/gms/internal/bc;

    iget-object v0, v0, Lcom/google/android/gms/internal/bc;->SK:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/bd;->SM:Lcom/google/android/gms/internal/aP;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
