.class public final Lcom/google/android/gms/location/t;
.super Lcom/google/android/gms/internal/cn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cn;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/tasks/c;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/internal/i;

    iget-object p1, p1, Lcom/google/android/gms/location/internal/i;->XS:Lcom/google/android/gms/location/internal/c;

    invoke-virtual {p1}, Lcom/google/android/gms/location/internal/c;->hW()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/c;->y(Ljava/lang/Object;)V

    return-void
.end method
