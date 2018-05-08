.class public Lcom/google/android/gms/location/FloorChangeEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Hc:I

.field private final WD:I

.field private final WE:J

.field private final WF:J

.field private final WG:J

.field private final WH:J

.field private final WI:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/s;

    invoke-direct {v0}, Lcom/google/android/gms/location/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/FloorChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJJJJF)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ltz v1, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    const-string v13, "confidence must be equal to or greater than 0"

    invoke-static {v12, v13}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    const/16 v12, 0x64

    if-gt v1, v12, :cond_1

    move v12, v11

    goto :goto_1

    :cond_1
    move v12, v10

    :goto_1
    const-string v13, "confidence must be equal to or less than 100"

    invoke-static {v12, v13}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    const-wide/16 v12, 0x0

    cmp-long v14, v12, v2

    if-gez v14, :cond_2

    move v14, v11

    goto :goto_2

    :cond_2
    move v14, v10

    :goto_2
    const-string v15, "startTimeMillis must be greater than 0"

    invoke-static {v14, v15}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    cmp-long v14, v2, v4

    if-gtz v14, :cond_3

    move v14, v11

    goto :goto_3

    :cond_3
    move v14, v10

    :goto_3
    const-string v15, "endTimeMillis must be equal to or greater than startTimeMillis"

    invoke-static {v14, v15}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    cmp-long v12, v12, v6

    if-gtz v12, :cond_4

    move v12, v11

    goto :goto_4

    :cond_4
    move v12, v10

    :goto_4
    const-string v13, "startElapsedRealtimeMillis must be equal to or greater than 0"

    invoke-static {v12, v13}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    cmp-long v12, v6, v8

    if-gtz v12, :cond_5

    move v12, v11

    goto :goto_5

    :cond_5
    move v12, v10

    :goto_5
    const-string v13, "endElapsedRealtimeMillis must be equal to or greater than startElapsedRealtimeMillis"

    invoke-static {v12, v13}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    cmp-long v12, v6, v2

    if-gez v12, :cond_6

    move v12, v11

    goto :goto_6

    :cond_6
    move v12, v10

    :goto_6
    const-string v13, "startTimeMillis must be greater than startElapsedRealtimeMillis"

    invoke-static {v12, v13}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    cmp-long v12, v8, v4

    if-gez v12, :cond_7

    move v10, v11

    :cond_7
    const-string v11, "endTimeMillis must be greater than endElapsedRealtimeMillis"

    invoke-static {v10, v11}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    move/from16 v10, p1

    iput v10, v0, Lcom/google/android/gms/location/FloorChangeEvent;->Hc:I

    iput v1, v0, Lcom/google/android/gms/location/FloorChangeEvent;->WD:I

    iput-wide v2, v0, Lcom/google/android/gms/location/FloorChangeEvent;->WE:J

    iput-wide v4, v0, Lcom/google/android/gms/location/FloorChangeEvent;->WF:J

    iput-wide v6, v0, Lcom/google/android/gms/location/FloorChangeEvent;->WG:J

    iput-wide v8, v0, Lcom/google/android/gms/location/FloorChangeEvent;->WH:J

    move/from16 v1, p11

    iput v1, v0, Lcom/google/android/gms/location/FloorChangeEvent;->WI:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FloorChangeEvent [type=%d, confidence=%d, elevationChange=%f, startTimeMillis=%d, endTimeMillis=%d, startElapsedRealtimeMillis=%d, endElapsedRealtimeMillis=%d]"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Hc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WI:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WF:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Hc:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WD:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WE:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WF:J

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WG:J

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WH:J

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    iget v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->WI:F

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
