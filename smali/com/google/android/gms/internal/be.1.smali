.class final Lcom/google/android/gms/internal/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field private synthetic SN:Lcom/google/android/gms/internal/bc;

.field private synthetic SO:Lcom/google/android/gms/tasks/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bc;Lcom/google/android/gms/tasks/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/be;->SN:Lcom/google/android/gms/internal/bc;

    iput-object p2, p0, Lcom/google/android/gms/internal/be;->SO:Lcom/google/android/gms/tasks/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/b;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/be;->SN:Lcom/google/android/gms/internal/bc;

    iget-object p1, p1, Lcom/google/android/gms/internal/bc;->SL:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/be;->SO:Lcom/google/android/gms/tasks/c;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
