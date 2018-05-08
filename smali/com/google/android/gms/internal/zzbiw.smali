.class public final Lcom/google/android/gms/internal/zzbiw;
.super Lcom/google/android/gms/awareness/fence/FenceQueryRequest;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Vx:Lcom/google/android/gms/internal/zzbix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cL;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cL;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbiw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbix;->a(ILjava/util/List;)Lcom/google/android/gms/internal/zzbix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbiw;-><init>(Lcom/google/android/gms/internal/zzbix;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbix;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/FenceQueryRequest;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbiw;->Vx:Lcom/google/android/gms/internal/zzbix;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbiw;->Vx:Lcom/google/android/gms/internal/zzbix;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
