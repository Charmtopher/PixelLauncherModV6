.class public final Lcom/google/android/gms/internal/r;
.super Lcom/google/android/gms/internal/V;


# static fields
.field private static volatile NJ:[Lcom/google/android/gms/internal/r;


# instance fields
.field public LL:Ljava/lang/String;

.field public NK:[B

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ad;->PX:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->NK:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/r;->PK:I

    return-void
.end method

.method public static gD()[Lcom/google/android/gms/internal/r;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/r;->NJ:[Lcom/google/android/gms/internal/r;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/Z;->PJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/r;->NJ:[Lcom/google/android/gms/internal/r;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/r;

    sput-object v1, Lcom/google/android/gms/internal/r;->NJ:[Lcom/google/android/gms/internal/r;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/r;->NJ:[Lcom/google/android/gms/internal/r;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->gF()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->NK:[B

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/r;->NK:[B

    sget-object v1, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/r;->NK:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->a(I[B)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/r;->NK:[B

    sget-object v2, Lcom/google/android/gms/internal/ad;->PX:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/r;->NK:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/r;->NK:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/r;->NK:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/r;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/r;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/r;->PA:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/r;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/r;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_a

    iget-object p1, p1, Lcom/google/android/gms/internal/r;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    return v2

    :cond_a
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/r;->LL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/r;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->NK:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->PA:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/r;->PA:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->hashCode()I

    move-result v2

    :cond_3
    :goto_2
    add-int/2addr v1, v2

    return v1
.end method
