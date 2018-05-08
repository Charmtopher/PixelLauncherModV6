.class public final Lcom/google/protobuf/nano/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final aeX:Lcom/google/protobuf/nano/e;


# instance fields
.field aeY:[I

.field aeZ:[Lcom/google/protobuf/nano/e;

.field jt:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/protobuf/nano/e;

    invoke-direct {v0}, Lcom/google/protobuf/nano/e;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/d;->aeX:Lcom/google/protobuf/nano/e;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/d;-><init>(I)V

    .line 56
    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/nano/d;->jt:Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/d;->r(I)I

    move-result p1

    .line 65
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/google/protobuf/nano/d;->aeY:[I

    .line 66
    new-array p1, p1, [Lcom/google/protobuf/nano/e;

    iput-object p1, p0, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    .line 67
    iput v0, p0, Lcom/google/protobuf/nano/d;->mSize:I

    .line 68
    return-void
.end method


# virtual methods
.method final bA(I)I
    .locals 4

    .line 241
    nop

    .line 242
    iget v0, p0, Lcom/google/protobuf/nano/d;->mSize:I

    add-int/lit8 v0, v0, -0x1

    .line 244
    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    .line 245
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 246
    iget-object v3, p0, Lcom/google/protobuf/nano/d;->aeY:[I

    aget v3, v3, v2

    .line 248
    if-ge v3, p1, :cond_0

    .line 249
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    if-le v3, p1, :cond_1

    .line 251
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 253
    :cond_1
    return v2

    .line 255
    :cond_2
    not-int p1, v1

    return p1
.end method

.method final bz(I)Lcom/google/protobuf/nano/e;
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/google/protobuf/nano/d;->jt:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/google/protobuf/nano/d;->gc()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/nano/d;->iw()Lcom/google/protobuf/nano/d;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 200
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 201
    return v0

    .line 203
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/nano/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 204
    return v2

    .line 207
    :cond_1
    check-cast p1, Lcom/google/protobuf/nano/d;

    .line 208
    invoke-virtual {p0}, Lcom/google/protobuf/nano/d;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/d;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 209
    return v2

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/nano/d;->aeY:[I

    iget-object v3, p1, Lcom/google/protobuf/nano/d;->aeY:[I

    iget v4, p0, Lcom/google/protobuf/nano/d;->mSize:I

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    aget v6, v1, v5

    aget v7, v3, v5

    if-eq v6, v7, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    iget-object p1, p1, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    iget v3, p0, Lcom/google/protobuf/nano/d;->mSize:I

    .line 212
    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Lcom/google/protobuf/nano/e;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_3
    if-eqz p1, :cond_7

    return v0

    .line 211
    :cond_7
    return v2
.end method

.method final gc()V
    .locals 8

    .line 97
    iget v0, p0, Lcom/google/protobuf/nano/d;->mSize:I

    .line 98
    nop

    .line 99
    iget-object v1, p0, Lcom/google/protobuf/nano/d;->aeY:[I

    .line 100
    iget-object v2, p0, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    .line 102
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 103
    aget-object v6, v2, v4

    .line 105
    sget-object v7, Lcom/google/protobuf/nano/d;->aeX:Lcom/google/protobuf/nano/e;

    if-eq v6, v7, :cond_1

    .line 106
    if-eq v4, v5, :cond_0

    .line 107
    aget v7, v1, v4

    aput v7, v1, v5

    .line 108
    aput-object v6, v2, v5

    .line 109
    const/4 v6, 0x0

    aput-object v6, v2, v4

    .line 112
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 102
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iput-boolean v3, p0, Lcom/google/protobuf/nano/d;->jt:Z

    .line 117
    iput v5, p0, Lcom/google/protobuf/nano/d;->mSize:I

    .line 118
    return-void
.end method

.method public final hashCode()I
    .locals 4

    .line 217
    iget-boolean v0, p0, Lcom/google/protobuf/nano/d;->jt:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/google/protobuf/nano/d;->gc()V

    .line 220
    :cond_0
    const/16 v0, 0x11

    .line 221
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/protobuf/nano/d;->mSize:I

    if-ge v1, v2, :cond_1

    .line 222
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/protobuf/nano/d;->aeY:[I

    aget v3, v3, v1

    add-int/2addr v0, v3

    .line 223
    mul-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/protobuf/nano/e;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    return v0
.end method

.method public final iw()Lcom/google/protobuf/nano/d;
    .locals 5

    .line 280
    invoke-virtual {p0}, Lcom/google/protobuf/nano/d;->size()I

    move-result v0

    .line 281
    new-instance v1, Lcom/google/protobuf/nano/d;

    invoke-direct {v1, v0}, Lcom/google/protobuf/nano/d;-><init>(I)V

    .line 282
    iget-object v2, p0, Lcom/google/protobuf/nano/d;->aeY:[I

    iget-object v3, v1, Lcom/google/protobuf/nano/d;->aeY:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    :goto_0
    if-ge v4, v0, :cond_1

    .line 284
    iget-object v2, p0, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aget-object v2, v2, v4

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, v1, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    iget-object v3, p0, Lcom/google/protobuf/nano/d;->aeZ:[Lcom/google/protobuf/nano/e;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/google/protobuf/nano/e;->ix()Lcom/google/protobuf/nano/e;

    move-result-object v3

    aput-object v3, v2, v4

    .line 283
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    :cond_1
    iput v0, v1, Lcom/google/protobuf/nano/d;->mSize:I

    .line 289
    return-object v1
.end method

.method final r(I)I
    .locals 3

    .line 229
    const/4 v0, 0x4

    mul-int/2addr p1, v0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    add-int/lit8 v2, v2, -0xc

    if-gt p1, v2, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    div-int/2addr p1, v0

    return p1
.end method

.method final size()I
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/google/protobuf/nano/d;->jt:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/google/protobuf/nano/d;->gc()V

    .line 178
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/d;->mSize:I

    return v0
.end method
