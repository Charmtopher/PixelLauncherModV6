.class public Lcom/google/android/gms/contextmanager/ContextData;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static MQ:Lcom/google/android/gms/internal/dk;

.field public static final MR:[I


# instance fields
.field private MS:Lcom/google/android/gms/internal/s;

.field private MT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/a;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/ContextData;->MQ:Lcom/google/android/gms/internal/dk;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/contextmanager/ContextData;->MR:[I

    new-instance v0, Lcom/google/android/gms/contextmanager/b;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/ContextData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/contextmanager/ContextData;->MT:[B

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->gz()V

    return-void
.end method

.method private final gy()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MT:[B

    new-instance v1, Lcom/google/android/gms/internal/s;

    invoke-direct {v1}, Lcom/google/android/gms/internal/s;-><init>()V

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/aa;[BI)Lcom/google/android/gms/internal/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/s;

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MT:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/bry; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ContextData"

    const-string v2, "Could not deserialize context bytes."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->gz()V

    return-void
.end method

.method private final gz()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MT:[B

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MT:[B

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MT:[B

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MT:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/contextmanager/ContextData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/contextmanager/ContextData;

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->gy()V

    invoke-direct {p1}, Lcom/google/android/gms/contextmanager/ContextData;->gy()V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/ContextData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/ContextData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    iget-object v1, v1, Lcom/google/android/gms/internal/s;->NO:Lcom/google/android/gms/internal/v;

    iget v1, v1, Lcom/google/android/gms/internal/v;->version:I

    iget-object p1, p1, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    iget-object p1, p1, Lcom/google/android/gms/internal/s;->NO:Lcom/google/android/gms/internal/v;

    iget p1, p1, Lcom/google/android/gms/internal/v;->version:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->gy()V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/internal/s;->NN:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->gy()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/ContextData;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    iget-object v1, v1, Lcom/google/android/gms/internal/s;->NO:Lcom/google/android/gms/internal/v;

    iget v1, v1, Lcom/google/android/gms/internal/v;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->gy()V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/s;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/contextmanager/ContextData;->MQ:Lcom/google/android/gms/internal/dk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/dk;->gA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MT:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MT:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->MS:Lcom/google/android/gms/internal/s;

    invoke-static {v0}, Lcom/google/android/gms/internal/aa;->c(Lcom/google/android/gms/internal/aa;)[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
