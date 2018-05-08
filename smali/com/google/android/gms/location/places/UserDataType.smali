.class public final Lcom/google/android/gms/location/places/UserDataType;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final Zk:Lcom/google/android/gms/location/places/UserDataType;

.field public static final Zl:Lcom/google/android/gms/location/places/UserDataType;

.field public static final Zm:Lcom/google/android/gms/location/places/UserDataType;

.field private static Zn:Ljava/util/Set;


# instance fields
.field private QK:Ljava/lang/String;

.field private Zo:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "test_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->d(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->Zk:Lcom/google/android/gms/location/places/UserDataType;

    const-string v0, "labeled_place"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->d(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->Zl:Lcom/google/android/gms/location/places/UserDataType;

    const-string v0, "here_content"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/UserDataType;->d(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->Zm:Lcom/google/android/gms/location/places/UserDataType;

    sget-object v0, Lcom/google/android/gms/location/places/UserDataType;->Zk:Lcom/google/android/gms/location/places/UserDataType;

    sget-object v1, Lcom/google/android/gms/location/places/UserDataType;->Zl:Lcom/google/android/gms/location/places/UserDataType;

    sget-object v2, Lcom/google/android/gms/location/places/UserDataType;->Zm:Lcom/google/android/gms/location/places/UserDataType;

    new-instance v3, Lcom/google/android/gms/common/a/b;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/a/b;-><init>(I)V

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->Zn:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/location/places/E;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/E;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->B(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/location/places/UserDataType;->QK:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/location/places/UserDataType;->Zo:I

    return-void
.end method

.method private static d(Ljava/lang/String;I)Lcom/google/android/gms/location/places/UserDataType;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/UserDataType;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/places/UserDataType;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/UserDataType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/UserDataType;

    iget-object v1, p0, Lcom/google/android/gms/location/places/UserDataType;->QK:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/UserDataType;->QK:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/location/places/UserDataType;->Zo:I

    iget p1, p1, Lcom/google/android/gms/location/places/UserDataType;->Zo:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->QK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->QK:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/location/places/UserDataType;->QK:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/location/places/UserDataType;->Zo:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
