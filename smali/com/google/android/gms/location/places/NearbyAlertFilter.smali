.class public final Lcom/google/android/gms/location/places/NearbyAlertFilter;
.super Lcom/google/android/gms/location/places/AbstractPlaceFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private YA:Ljava/util/List;

.field private YB:Ljava/util/List;

.field private YC:Ljava/lang/String;

.field private YD:Z

.field private final YE:Ljava/util/Set;

.field private final YF:Ljava/util/Set;

.field private final YG:Ljava/util/Set;

.field private Yz:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/p;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/AbstractPlaceFilter;-><init>()V

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YA:Ljava/util/List;

    if-nez p3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YB:Ljava/util/List;

    if-nez p1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->Yz:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YA:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->o(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YF:Ljava/util/Set;

    iget-object p1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YB:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->o(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YG:Ljava/util/Set;

    iget-object p1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->Yz:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->o(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YE:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YD:Z

    return-void
.end method

.method public static b(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;
    .locals 7

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-static {p0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/location/places/NearbyAlertFilter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "NearbyAlertFilters must contain at least oneplace ID to match results with."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;
    .locals 7

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/location/places/NearbyAlertFilter;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/location/places/NearbyAlertFilter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "NearbyAlertFilters must contain at least oneplace type to match results with."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YF:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YF:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YG:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YG:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YE:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YE:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YD:Z

    iget-boolean p1, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YD:Z

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YF:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YG:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YE:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YD:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->u(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YF:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YF:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YE:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "placeIds"

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YE:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YG:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "requestedUserDataTypes"

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YG:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "chainName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    :cond_3
    const-string v1, "Beacon required: "

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YD:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->Yz:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YA:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YB:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YC:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->YD:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
