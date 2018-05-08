.class public Lcom/google/android/gms/location/places/internal/q;
.super Lcom/google/android/gms/common/data/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/f;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method public static p(Ljava/util/List;)[B
    .locals 4

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/n;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lcom/google/android/gms/internal/n;->Nx:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/aa;->c(Lcom/google/android/gms/internal/aa;)[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/q;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/q;->z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/f;->Jj:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/common/data/f;->JD:I

    iget v2, p0, Lcom/google/android/gms/common/data/f;->JE:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/n;-><init>()V

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/aa;[BI)Lcom/google/android/gms/internal/aa;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/n;

    iget-object v0, p1, Lcom/google/android/gms/internal/n;->Nx:[I

    if-nez v0, :cond_2

    return-object p2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/internal/n;->Nx:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/google/android/gms/internal/n;->Nx:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/n;->Nx:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/bry; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "SafeDataBufferRef"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SafeDataBufferRef"

    const-string v1, "Cannot parse byte[]"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object p2
.end method

.method protected final e(Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/q;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/q;->z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/common/data/f;->Jj:Lcom/google/android/gms/common/data/DataHolder;

    iget v0, p0, Lcom/google/android/gms/common/data/f;->JD:I

    iget v1, p0, Lcom/google/android/gms/common/data/f;->JE:I

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;I)V

    iget-object v2, p2, Lcom/google/android/gms/common/data/DataHolder;->Jq:[Landroid/database/CursorWindow;

    aget-object v1, v2, v1

    iget-object p2, p2, Lcom/google/android/gms/common/data/DataHolder;->Jp:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method protected final h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/q;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/q;->z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/q;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method
