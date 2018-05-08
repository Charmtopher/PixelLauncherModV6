.class public abstract Lcom/google/android/gms/internal/aa;
.super Ljava/lang/Object;


# instance fields
.field protected volatile PK:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aa;->PK:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/aa;[BI)Lcom/google/android/gms/internal/aa;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/T;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/internal/T;-><init>([BII)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/T;->aM(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/bry; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final c(Lcom/google/android/gms/internal/aa;)[B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->gW()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/U;->d([BI)Lcom/google/android/gms/internal/U;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/U;)V

    iget-object p0, v1, Lcom/google/android/gms/internal/U;->Pz:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
.end method

.method public a(Lcom/google/android/gms/internal/U;)V
    .locals 0

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->gP()Lcom/google/android/gms/internal/aa;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public gP()Lcom/google/android/gms/internal/aa;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aa;

    return-object v0
.end method

.method public final gV()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aa;->PK:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->gW()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/aa;->PK:I

    return v0
.end method

.method public final gW()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aa;->computeSerializedSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/aa;->PK:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ab;->d(Lcom/google/android/gms/internal/aa;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
