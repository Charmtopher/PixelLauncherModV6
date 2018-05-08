.class public final Lcom/google/android/gms/internal/zzaqh;
.super Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final QM:Lcom/google/android/gms/internal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaqh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/awareness/state/BeaconState$TypeFilter;-><init>()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/r;

    invoke-direct {v0}, Lcom/google/android/gms/internal/r;-><init>()V

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/aa;[BI)Lcom/google/android/gms/internal/aa;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/r;
    :try_end_0
    .catch Lcom/google/android/gms/internal/bry; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, "BeaconStateImpl"

    const-string v0, "Could not deserialize BeaconFence.BeaconTypeFilter"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/di;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    return-void
.end method

.method private final getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    iget-object v0, v0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    return-object v0
.end method

.method private final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    iget-object v0, v0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    return-object v0
.end method

.method private final he()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    iget-object v0, v0, Lcom/google/android/gms/internal/r;->NK:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    iget-object v0, v0, Lcom/google/android/gms/internal/r;->NK:[B

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    iget-object v0, v0, Lcom/google/android/gms/internal/r;->NK:[B

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzaqh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzaqh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzaqh;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzaqh;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->he()[B

    move-result-object v1

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzaqh;->he()[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->getNamespace()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->he()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->he()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->he()[B

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqh;->he()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqh;->QM:Lcom/google/android/gms/internal/r;

    invoke-static {v0}, Lcom/google/android/gms/internal/aa;->c(Lcom/google/android/gms/internal/aa;)[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
