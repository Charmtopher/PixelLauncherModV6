.class public Lcom/google/android/gms/location/internal/NlpTestingRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final XI:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/internal/l;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/NlpTestingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/location/internal/NlpTestingRequest;->XI:J

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/NlpTestingRequest;->XI:J

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
