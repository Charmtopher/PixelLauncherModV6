.class public final Lcom/google/android/gms/internal/zzes;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Wm:Lcom/google/android/gms/internal/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/z;

    invoke-direct {v0}, Lcom/google/android/gms/internal/z;-><init>()V

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/aa;[BI)Lcom/google/android/gms/internal/aa;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/z;
    :try_end_0
    .catch Lcom/google/android/gms/internal/bry; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "InterestRecordStub"

    const-string v1, "Could not deserialize interest bytes."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzes;->Wm:Lcom/google/android/gms/internal/z;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzes;->Wm:Lcom/google/android/gms/internal/z;

    invoke-static {v0}, Lcom/google/android/gms/internal/aa;->c(Lcom/google/android/gms/internal/aa;)[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
