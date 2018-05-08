.class final Lcom/google/protobuf/nano/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final afd:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/protobuf/nano/i;->tag:I

    .line 53
    iput-object p2, p0, Lcom/google/protobuf/nano/i;->afd:[B

    .line 54
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 70
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 71
    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/nano/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 74
    return v2

    .line 77
    :cond_1
    check-cast p1, Lcom/google/protobuf/nano/i;

    .line 78
    iget v1, p0, Lcom/google/protobuf/nano/i;->tag:I

    iget v3, p1, Lcom/google/protobuf/nano/i;->tag:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/nano/i;->afd:[B

    iget-object p1, p1, Lcom/google/protobuf/nano/i;->afd:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 83
    iget v0, p0, Lcom/google/protobuf/nano/i;->tag:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 85
    const/16 v0, 0x1f

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/protobuf/nano/i;->afd:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    return v0
.end method
