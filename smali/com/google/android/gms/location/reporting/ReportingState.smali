.class public Lcom/google/android/gms/location/reporting/ReportingState;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final aaJ:I

.field private final aaK:I

.field private final aaL:Z

.field private final aaM:I

.field private final aaN:I

.field private final aaO:Ljava/lang/Integer;

.field private final aaP:Z

.field private final mActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/ReportingState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZZIILjava/lang/Integer;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaJ:I

    iput p2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaK:I

    iput-boolean p3, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaL:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mActive:Z

    iput p5, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaM:I

    iput p6, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaN:I

    iput-object p7, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaO:Ljava/lang/Integer;

    iput-boolean p8, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaP:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/location/reporting/ReportingState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/location/reporting/ReportingState;

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaJ:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->aaJ:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaK:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->aaK:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaL:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->aaL:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mActive:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->mActive:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaM:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->aaM:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaN:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->aaN:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaO:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/gms/location/reporting/ReportingState;->aaO:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaP:Z

    iget-boolean p1, p1, Lcom/google/android/gms/location/reporting/ReportingState;->aaP:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaJ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaK:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaL:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaM:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaO:Ljava/lang/Integer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaP:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaO:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaO:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "(null)"

    goto :goto_0

    :cond_0
    const-string v1, "GCoreUlr"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x14

    const/16 v1, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "tag#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "(hidden-from-unauthorized-caller)"

    :goto_0
    iget v1, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaJ:I

    iget v2, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaK:I

    iget-boolean v3, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaL:Z

    iget-boolean v4, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mActive:Z

    iget v5, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaM:I

    iget v6, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaN:I

    iget-boolean v7, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaP:Z

    const/16 v8, 0xeb

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "ReportingState{mReportingEnabled="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHistoryEnabled="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAllowed="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mActive="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExpectedOptInResult="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExpectedOptInResultAssumingLocationEnabled="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceTag="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mCanAccessSettings="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaJ:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/b;->bk(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaK:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/b;->bk(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaL:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->mActive:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaM:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/a;->bk(I)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaO:Ljava/lang/Integer;

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/Integer;)V

    iget v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaN:I

    invoke-static {v0}, Lcom/google/android/gms/location/reporting/a;->bk(I)I

    move-result v0

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/location/reporting/ReportingState;->aaP:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
