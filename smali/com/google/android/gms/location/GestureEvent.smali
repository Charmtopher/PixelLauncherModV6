.class public Lcom/google/android/gms/location/GestureEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Hc:I

.field private final WL:J

.field private final WM:J

.field private final WN:I

.field private final WO:Z

.field private final WP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/v;

    invoke-direct {v0}, Lcom/google/android/gms/location/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/GestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJIZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/GestureEvent;->Hc:I

    iput-wide p2, p0, Lcom/google/android/gms/location/GestureEvent;->WL:J

    iput-wide p4, p0, Lcom/google/android/gms/location/GestureEvent;->WM:J

    iput p6, p0, Lcom/google/android/gms/location/GestureEvent;->WN:I

    iput-boolean p7, p0, Lcom/google/android/gms/location/GestureEvent;->WO:Z

    iput-boolean p8, p0, Lcom/google/android/gms/location/GestureEvent;->WP:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/location/GestureEvent;->Hc:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lcom/google/android/gms/location/GestureEvent;->WL:J

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/location/GestureEvent;->WM:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    iget v0, p0, Lcom/google/android/gms/location/GestureEvent;->WN:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/location/GestureEvent;->WO:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lcom/google/android/gms/location/GestureEvent;->WP:Z

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
