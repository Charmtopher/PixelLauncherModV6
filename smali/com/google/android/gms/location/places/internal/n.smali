.class public final Lcom/google/android/gms/location/places/internal/n;
.super Lcom/google/android/gms/location/places/internal/q;

# interfaces
.implements Lcom/google/android/gms/location/places/c;


# instance fields
.field private final YU:Ljava/lang/String;

.field private final ZJ:Lcom/google/android/gms/location/places/internal/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/q;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string p1, "place_id"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/n;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/n;->YU:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->hX()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, -0x1

    if-gtz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->ia()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->ia()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-gtz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->ib()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->ib()Landroid/net/Uri;

    move-result-object p1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->getRating()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-gez p1, :cond_3

    const-string p1, "place_price_level"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/n;->e(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    new-instance p1, Lcom/google/android/gms/location/places/internal/zzaq;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->hX()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->ia()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->ia()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v3, v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->ib()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/n;->getRating()F

    move-result v5

    const-string v0, "place_price_level"

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/location/places/internal/n;->e(Ljava/lang/String;I)I

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/location/places/internal/zzaq;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;FI)V

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/n;->ZJ:Lcom/google/android/gms/location/places/internal/zzaq;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/n;->YU:Ljava/lang/String;

    return-object v0
.end method

.method public final getRating()F
    .locals 5

    const-string v0, "place_rating"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/internal/q;->y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/internal/q;->z(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/data/f;->Jj:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/common/data/f;->JD:I

    iget v3, p0, Lcom/google/android/gms/common/data/f;->JE:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;I)V

    iget-object v4, v1, Lcom/google/android/gms/common/data/DataHolder;->Jq:[Landroid/database/CursorWindow;

    aget-object v3, v4, v3

    iget-object v1, v1, Lcom/google/android/gms/common/data/DataHolder;->Jp:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final hX()Ljava/util/List;
    .locals 2

    const-string v0, "place_types"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/n;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final ia()Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "place_phone_number"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/n;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ib()Landroid/net/Uri;
    .locals 2

    const-string v0, "place_website_uri"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/n;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
