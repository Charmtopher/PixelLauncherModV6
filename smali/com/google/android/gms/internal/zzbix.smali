.class public final Lcom/google/android/gms/internal/zzbix;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Vy:Ljava/util/List;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cQ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cQ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbix;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbix;->Vy:Ljava/util/List;

    return-void
.end method

.method public static a(ILjava/util/List;)Lcom/google/android/gms/internal/zzbix;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbix;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbix;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/zzbix;->type:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbix;->Vy:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
