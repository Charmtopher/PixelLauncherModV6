.class public final Lcom/google/android/gms/common/images/g;
.super Lcom/google/android/gms/common/images/e;


# instance fields
.field private JZ:Ljava/lang/ref/WeakReference;


# virtual methods
.method protected final D(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/images/g;->JZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/common/images/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/g;

    iget-object v2, p0, Lcom/google/android/gms/common/images/g;->JZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/images/a;

    iget-object v3, p1, Lcom/google/android/gms/common/images/g;->JZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/images/a;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v3, v2}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/common/images/g;->JX:Lcom/google/android/gms/common/images/f;

    iget-object v2, p0, Lcom/google/android/gms/common/images/g;->JX:Lcom/google/android/gms/common/images/f;

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/images/g;->JX:Lcom/google/android/gms/common/images/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
