.class public Lcom/google/research/reflection/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public index:I

.field public value:F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/google/research/reflection/a/d;->index:I

    .line 12
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/research/reflection/a/d;->value:F

    .line 13
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/google/research/reflection/a/d;->index:I

    .line 17
    iput p2, p0, Lcom/google/research/reflection/a/d;->value:F

    .line 18
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .line 6
    new-instance v0, Lcom/google/research/reflection/a/d;

    iget v1, p0, Lcom/google/research/reflection/a/d;->index:I

    iget v2, p0, Lcom/google/research/reflection/a/d;->value:F

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/a/d;-><init>(IF)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 6
    check-cast p1, Lcom/google/research/reflection/a/d;

    iget v0, p0, Lcom/google/research/reflection/a/d;->value:F

    iget p1, p1, Lcom/google/research/reflection/a/d;->value:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 27
    instance-of v0, p1, Lcom/google/research/reflection/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28
    return v1

    .line 30
    :cond_0
    iget v0, p0, Lcom/google/research/reflection/a/d;->index:I

    check-cast p1, Lcom/google/research/reflection/a/d;

    iget v2, p1, Lcom/google/research/reflection/a/d;->index:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/research/reflection/a/d;->value:F

    iget p1, p1, Lcom/google/research/reflection/a/d;->value:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    .line 31
    const/4 p1, 0x1

    return p1

    .line 33
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 22
    iget v0, p0, Lcom/google/research/reflection/a/d;->index:I

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    const/16 v0, 0x11

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/research/reflection/a/d;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 49
    iget v0, p0, Lcom/google/research/reflection/a/d;->index:I

    iget v1, p0, Lcom/google/research/reflection/a/d;->value:F

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
