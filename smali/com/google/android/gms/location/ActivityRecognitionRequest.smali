.class public Lcom/google/android/gms/location/ActivityRecognitionRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Wn:J

.field private Wo:Z

.field private Wp:Landroid/os/WorkSource;

.field private Wq:[I

.field private Wr:Z

.field private Ws:Ljava/lang/String;

.field private final Wt:J

.field private dw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/o;

    invoke-direct {v0}, Lcom/google/android/gms/location/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JZLandroid/os/WorkSource;Ljava/lang/String;[IZLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wn:J

    iput-boolean p3, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wo:Z

    iput-object p4, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wp:Landroid/os/WorkSource;

    iput-object p5, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->dw:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wq:[I

    iput-boolean p7, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wr:Z

    iput-object p8, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Ws:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wt:J

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wn:J

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wo:Z

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wp:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->dw:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wq:[I

    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wr:Z

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Ws:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v1, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Wt:J

    const/16 p2, 0x8

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
