.class public final Lcom/google/android/gms/location/places/internal/zzaq;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Ys:Ljava/util/List;

.field private final Yt:Ljava/lang/String;

.field private final Yu:Landroid/net/Uri;

.field private final ZD:F

.field private final ZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;FI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzaq;->Ys:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/zzaq;->Yt:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/internal/zzaq;->Yu:Landroid/net/Uri;

    iput p4, p0, Lcom/google/android/gms/location/places/internal/zzaq;->ZD:F

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzaq;->ZE:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzaq;->Ys:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzaq;->Yt:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzaq;->Yu:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget p2, p0, Lcom/google/android/gms/location/places/internal/zzaq;->ZD:F

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget p2, p0, Lcom/google/android/gms/location/places/internal/zzaq;->ZE:I

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
