.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private abA:Lcom/google/android/gms/maps/model/LatLng;

.field private abB:D

.field private abC:F

.field private abD:Z

.field private abE:Z

.field private abF:Ljava/util/List;

.field private mStrokeWidth:F

.field private yf:I

.field private zT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abA:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abB:D

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->yf:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zT:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abC:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abD:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abE:Z

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abF:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;DFIIFZZLjava/util/List;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abA:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abB:D

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->yf:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zT:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abC:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abD:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abE:Z

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abF:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abA:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abB:D

    iput p4, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->yf:I

    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zT:I

    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abC:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abD:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abE:Z

    iput-object p10, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abF:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abA:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abB:D

    const/4 p2, 0x3

    invoke-static {p1, p2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    iget p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->mStrokeWidth:F

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->yf:I

    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zT:I

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abC:F

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    iget-boolean p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abD:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abE:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->abF:Ljava/util/List;

    const/16 v1, 0xa

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
