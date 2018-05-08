.class public final Lcom/google/android/gms/internal/zzbgl;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Ic:I

.field public final Vg:Lcom/google/android/gms/internal/zzbgn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cB;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cB;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbgl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzbgn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbgl;->Ic:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbgl;->Vg:Lcom/google/android/gms/internal/zzbgn;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbgn;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbgl;->Ic:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbgl;->Vg:Lcom/google/android/gms/internal/zzbgn;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/server/response/a;)Lcom/google/android/gms/internal/zzbgl;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/zzbgn;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbgl;

    check-cast p0, Lcom/google/android/gms/internal/zzbgn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbgl;-><init>(Lcom/google/android/gms/internal/zzbgn;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported safe parcelable field converter class."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbgl;->Ic:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbgl;->Vg:Lcom/google/android/gms/internal/zzbgn;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
