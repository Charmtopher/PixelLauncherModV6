.class final Lcom/google/android/gms/internal/cx;
.super Lcom/google/android/gms/internal/cw;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cw;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic hT()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/cw;->Va:Lcom/google/android/gms/internal/cy;

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->Vd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/cx;->Ve:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
