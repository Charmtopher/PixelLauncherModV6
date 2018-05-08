.class public final Lcom/google/android/gms/clearcut/internal/a;
.super Lcom/google/android/gms/common/api/p;

# interfaces
.implements Lcom/google/android/gms/clearcut/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/clearcut/a;->Hl:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/internal/aD;

    invoke-direct {v1}, Lcom/google/android/gms/internal/aD;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/internal/cj;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/v;
    .locals 2

    new-instance v0, Lcom/google/android/gms/clearcut/internal/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/p;->IA:Lcom/google/android/gms/common/api/r;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/clearcut/internal/c;-><init>(Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/r;)V

    const/4 p1, 0x2

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/common/api/p;->a(ILcom/google/android/gms/internal/aK;)Lcom/google/android/gms/internal/aK;

    move-result-object p1

    return-object p1
.end method
