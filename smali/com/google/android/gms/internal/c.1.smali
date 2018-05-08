.class final Lcom/google/android/gms/internal/c;
.super Lcom/google/android/gms/common/api/f;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/G;Ljava/lang/Object;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)Lcom/google/android/gms/common/api/j;
    .locals 9

    check-cast p4, Lcom/google/android/gms/internal/d;

    new-instance v8, Lcom/google/android/gms/internal/i;

    iget-object v5, p4, Lcom/google/android/gms/internal/d;->MZ:Landroid/os/Bundle;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/G;Landroid/os/Bundle;Lcom/google/android/gms/common/api/t;Lcom/google/android/gms/common/api/u;)V

    return-object v8
.end method
