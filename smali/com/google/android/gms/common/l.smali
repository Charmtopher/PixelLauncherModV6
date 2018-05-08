.class abstract Lcom/google/android/gms/common/l;
.super Lcom/google/android/gms/common/internal/zzas;


# instance fields
.field private MI:I


# direct methods
.method protected constructor <init>([B)V
    .locals 14

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzas;-><init>()V

    array-length v0, p1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_9

    const-string v0, "GoogleCertificates"

    array-length v2, p1

    array-length v3, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_7

    array-length v6, p1

    if-eqz v6, :cond_7

    if-lez v3, :cond_7

    array-length v6, p1

    if-le v3, v6, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v6, 0x39

    add-int/lit8 v7, v3, 0x10

    sub-int/2addr v7, v4

    const/16 v8, 0x10

    div-int/2addr v7, v8

    mul-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move v6, v3

    move v9, v5

    move v10, v9

    :goto_0
    if-lez v6, :cond_6

    if-nez v9, :cond_2

    const/high16 v11, 0x10000

    if-ge v3, v11, :cond_1

    const-string v11, "%04X:"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    :goto_1
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const-string v11, "%08X:"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    goto :goto_1

    :cond_2
    const/16 v11, 0x8

    if-ne v9, v11, :cond_3

    const-string v11, " -"

    goto :goto_2

    :cond_3
    :goto_3
    const-string v11, " %02X"

    new-array v12, v4, [Ljava/lang/Object;

    aget-byte v13, p1, v10

    and-int/lit16 v13, v13, 0xff

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v9, v9, 0x1

    if-eq v9, v8, :cond_4

    if-nez v6, :cond_5

    :cond_4
    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v5

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x33

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Cert hash data has incorrect length ("

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):\n"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1, v5, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    array-length v0, p1

    if-ne v0, v1, :cond_8

    goto :goto_6

    :cond_8
    move v4, v5

    :goto_6
    array-length v0, p1

    const/16 v1, 0x37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "cert hash data has incorrect length. length="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/common/internal/o;->b(ZLjava/lang/Object;)V

    :cond_9
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/l;->MI:I

    return-void
.end method

.method protected static E(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/google/android/gms/common/internal/zzar;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lcom/google/android/gms/common/internal/zzar;

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzar;->zzqA()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/l;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzar;->zzqz()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0}, Lcom/google/android/gms/common/l;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v1, "GoogleCertificates"

    const-string v2, "Failed to get Google certificates from remote"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v0
.end method

.method abstract getBytes()[B
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/l;->MI:I

    return v0
.end method

.method public final zzqA()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/l;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzqz()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/l;->getBytes()[B

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/dynamic/zzn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/dynamic/zzn;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
