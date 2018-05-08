.class public final Lcom/google/android/gms/internal/zzbkb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private VP:I

.field private VQ:Lcom/google/android/gms/internal/zzblw;

.field private VR:Lcom/google/android/gms/internal/zzblm;

.field public final name:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cT;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cT;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbkb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILcom/google/android/gms/internal/zzblw;Lcom/google/android/gms/internal/zzblm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbkb;->VP:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbkb;->name:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbkb;->VQ:Lcom/google/android/gms/internal/zzblw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbkb;->VR:Lcom/google/android/gms/internal/zzblm;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbkb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbkb;

    iget v1, p0, Lcom/google/android/gms/internal/zzbkb;->VP:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbkb;->VP:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/zzbkb;->name:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbkb;->name:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkb;->VQ:Lcom/google/android/gms/internal/zzblw;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkb;->VQ:Lcom/google/android/gms/internal/zzblw;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzblw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkb;->VR:Lcom/google/android/gms/internal/zzblm;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbkb;->VR:Lcom/google/android/gms/internal/zzblm;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/zzbkb;->VP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/zzbkb;->name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkb;->VQ:Lcom/google/android/gms/internal/zzblw;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkb;->VR:Lcom/google/android/gms/internal/zzblm;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbkb;->VP:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/zzbkb;->name:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkb;->VQ:Lcom/google/android/gms/internal/zzblw;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbkb;->VR:Lcom/google/android/gms/internal/zzblm;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
