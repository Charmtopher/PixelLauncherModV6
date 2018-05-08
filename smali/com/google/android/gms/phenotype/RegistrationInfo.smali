.class public Lcom/google/android/gms/phenotype/RegistrationInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final acZ:[I

.field public final adH:Ljava/lang/String;

.field public final adI:[Ljava/lang/String;

.field public final adJ:[B

.field public final adK:Z

.field public final adL:Ljava/lang/String;

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/phenotype/t;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/t;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[BZ[ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adH:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->version:I

    iput-object p3, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adI:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adJ:[B

    iput-boolean p5, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adK:Z

    iput-object p6, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->acZ:[I

    iput-object p7, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adH:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->version:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adI:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adJ:[B

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adK:Z

    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->acZ:[I

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[IZ)V

    iget-object v0, p0, Lcom/google/android/gms/phenotype/RegistrationInfo;->adL:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
