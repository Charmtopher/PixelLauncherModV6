.class public Lcom/google/android/gms/location/places/g;
.super Lcom/google/android/gms/common/data/a;

# interfaces
.implements Lcom/google/android/gms/common/api/y;


# static fields
.field private static final YP:Ljava/util/Comparator;


# instance fields
.field private final YM:Ljava/lang/String;

.field private final YQ:I

.field public final mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/s;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/g;->YP:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iget v0, p1, Lcom/google/android/gms/common/data/DataHolder;->Id:I

    invoke-static {v0}, Lcom/google/android/gms/location/places/m;->bj(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/g;->mStatus:Lcom/google/android/gms/common/api/Status;

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "invalid source: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput p2, p0, Lcom/google/android/gms/location/places/g;->YQ:I

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/common/data/DataHolder;->Jr:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/common/data/DataHolder;->Jr:Landroid/os/Bundle;

    const-string p2, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.ATTRIBUTIONS_EXTRA_KEY"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/location/places/g;->YM:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/location/places/g;
    .locals 15

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.PLACE_LIST_EXTRA_KEY"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.STATUS_EXTRA_KEY"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.PLACE_LIST_EXTRA_KEY"

    sget-object v2, Lcom/google/android/gms/location/places/internal/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, [B

    invoke-static {v7, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v3

    :cond_4
    :goto_2
    if-ge v5, v2, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/google/android/gms/location/places/internal/zzs;

    iget v7, v6, Lcom/google/android/gms/location/places/internal/zzs;->Zw:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    move v7, v3

    :goto_3
    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/google/android/gms/location/places/internal/zzs;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget v6, v6, Lcom/google/android/gms/location/places/internal/zzs;->Zw:F

    invoke-static {v7, v6}, Lcom/google/android/gms/location/places/internal/zzas;->a(Lcom/google/android/gms/location/places/internal/PlaceEntity;F)Lcom/google/android/gms/location/places/internal/zzas;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/google/android/gms/location/places/g;->YP:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v2, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.STATUS_EXTRA_KEY"

    sget-object v4, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_7

    move-object v2, v0

    goto :goto_4

    :cond_7
    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/c;->a([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v2

    :goto_4
    check-cast v2, Lcom/google/android/gms/common/api/Status;

    if-nez v2, :cond_8

    sget-object v2, Lcom/google/android/gms/common/api/Status;->Je:Lcom/google/android/gms/common/api/Status;

    :cond_8
    const-string v4, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    sget-object v4, Lcom/google/android/gms/location/places/internal/o;->aao:[Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/data/DataHolder;->a([Ljava/lang/String;)Lcom/google/android/gms/common/data/c;

    move-result-object v6

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v3

    :goto_5
    if-ge v7, v5, :cond_10

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/location/places/internal/zzas;

    iget-object v9, v8, Lcom/google/android/gms/location/places/internal/zzas;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    new-instance v10, Landroid/content/ContentValues;

    sget-object v11, Lcom/google/android/gms/location/places/internal/o;->aan:[Ljava/lang/String;

    array-length v11, v11

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    const-string v11, "place_id"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->GA:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "place_types"

    invoke-virtual {v9}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->hX()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/location/places/internal/q;->p(Ljava/util/List;)[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v11, "place_name"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->mName:Ljava/lang/String;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "place_address"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yr:Ljava/lang/String;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zj:Ljava/util/Locale;

    if-eqz v11, :cond_9

    const-string v11, "place_locale"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zj:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "place_locale_language"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zj:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "place_locale_country"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zj:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v11, "place_phone_number"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yt:Ljava/lang/String;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "place_attributions"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZH:Ljava/util/List;

    if-eqz v12, :cond_b

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_6

    :cond_a
    new-instance v13, Lcom/google/android/gms/internal/n;

    invoke-direct {v13}, Lcom/google/android/gms/internal/n;-><init>()V

    new-array v14, v3, [Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    iput-object v12, v13, Lcom/google/android/gms/internal/n;->Nw:[Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/aa;->c(Lcom/google/android/gms/internal/aa;)[B

    move-result-object v12

    goto :goto_7

    :cond_b
    :goto_6
    move-object v12, v0

    :goto_7
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v11, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yq:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v11, :cond_c

    const-string v11, "place_lat_lng"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yq:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v12}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_c
    const-string v11, "place_level_number"

    iget v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Zz:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v11, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZA:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v11, :cond_d

    const-string v11, "place_viewport"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZA:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-static {v12}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_d
    iget-object v11, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yu:Landroid/net/Uri;

    if-eqz v11, :cond_e

    const-string v11, "place_website_uri"

    iget-object v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Yu:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v11, "place_is_permanently_closed"

    iget-boolean v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZC:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v11, "place_rating"

    iget v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZD:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v11, "place_price_level"

    iget v12, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZE:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v11, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZI:Lcom/google/android/gms/location/places/internal/zzax;

    if-eqz v11, :cond_f

    const-string v11, "place_opening_hours"

    iget-object v9, v9, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZI:Lcom/google/android/gms/location/places/internal/zzax;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_f
    const-string v9, "place_likelihood"

    iget v11, v8, Lcom/google/android/gms/location/places/internal/zzas;->Zw:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v9, "data"

    invoke-static {v8}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v6, v10}, Lcom/google/android/gms/common/data/c;->a(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/c;

    iget-object v8, v8, Lcom/google/android/gms/location/places/internal/zzas;->Zv:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    check-cast v8, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v8, v8, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ZH:Ljava/util/List;

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_10
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_8

    :cond_11
    const-string v0, ", "

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.ATTRIBUTIONS_EXTRA_KEY"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    new-instance v0, Lcom/google/android/gms/location/places/g;

    iget v7, v2, Lcom/google/android/gms/common/api/Status;->Id:I

    new-instance v1, Lcom/google/android/gms/common/data/DataHolder;

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/c;ILandroid/os/Bundle;IB)V

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/location/places/g;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    :cond_13
    :goto_9
    return-object v0
.end method

.method public static h(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final fz()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/g;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/location/places/g;->Jj:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->u(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/gms/location/places/g;->mStatus:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    const-string v1, "attributions"

    iget-object v2, p0, Lcom/google/android/gms/location/places/g;->YM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
