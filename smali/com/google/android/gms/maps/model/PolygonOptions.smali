.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private abC:F

.field private abD:Z

.field private abE:Z

.field private abF:Ljava/util/List;

.field private final ace:Ljava/util/List;

.field private final acf:Ljava/util/List;

.field private acg:Z

.field private ach:I

.field private mStrokeWidth:F

.field private yf:I

.field private zT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->yf:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zT:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abC:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->acg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abE:Z

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ach:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abF:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ace:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->acf:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;FIIFZZZILjava/util/List;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->yf:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zT:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abC:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->acg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abE:Z

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ach:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abF:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ace:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->acf:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->yf:I

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zT:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abC:F

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abD:Z

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->acg:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abE:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ach:I

    iput-object p11, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abF:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ace:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->acf:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    :cond_0
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mStrokeWidth:F

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v0, 0x5

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->yf:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    const/4 v0, 0x6

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zT:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abC:F

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/16 v0, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abD:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->acg:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abE:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ach:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->abF:Ljava/util/List;

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
