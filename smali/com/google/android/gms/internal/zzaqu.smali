.class public final Lcom/google/android/gms/internal/zzaqu;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final QU:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private final QV:Lcom/google/android/gms/internal/zzaqf;

.field private final QW:Lcom/google/android/gms/internal/zzaqj;

.field private final QX:Landroid/location/Location;

.field private final QY:Lcom/google/android/gms/internal/zzaql;

.field private final QZ:Lcom/google/android/gms/common/data/DataHolder;

.field private final Ra:Lcom/google/android/gms/internal/zzaqq;

.field private final Rb:Lcom/google/android/gms/internal/zzaqs;

.field private final Rc:Lcom/google/android/gms/internal/zzart;

.field private final Rd:Lcom/google/android/gms/internal/zzarq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/at;

    invoke-direct {v0}, Lcom/google/android/gms/internal/at;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaqu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/ActivityRecognitionResult;Lcom/google/android/gms/internal/zzaqf;Lcom/google/android/gms/internal/zzaqj;Landroid/location/Location;Lcom/google/android/gms/internal/zzaql;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzaqq;Lcom/google/android/gms/internal/zzaqs;Lcom/google/android/gms/internal/zzart;Lcom/google/android/gms/internal/zzarq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqu;->QU:Lcom/google/android/gms/location/ActivityRecognitionResult;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaqu;->QV:Lcom/google/android/gms/internal/zzaqf;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaqu;->QW:Lcom/google/android/gms/internal/zzaqj;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaqu;->QX:Landroid/location/Location;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaqu;->QY:Lcom/google/android/gms/internal/zzaql;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaqu;->QZ:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaqu;->Ra:Lcom/google/android/gms/internal/zzaqq;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzaqu;->Rb:Lcom/google/android/gms/internal/zzaqs;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzaqu;->Rc:Lcom/google/android/gms/internal/zzart;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzaqu;->Rd:Lcom/google/android/gms/internal/zzarq;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->QU:Lcom/google/android/gms/location/ActivityRecognitionResult;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->QV:Lcom/google/android/gms/internal/zzaqf;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->QW:Lcom/google/android/gms/internal/zzaqj;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->QX:Landroid/location/Location;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->QY:Lcom/google/android/gms/internal/zzaql;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->QZ:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->Ra:Lcom/google/android/gms/internal/zzaqq;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->Rb:Lcom/google/android/gms/internal/zzaqs;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->Rc:Lcom/google/android/gms/internal/zzart;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaqu;->Rd:Lcom/google/android/gms/internal/zzarq;

    const/16 v3, 0xb

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
