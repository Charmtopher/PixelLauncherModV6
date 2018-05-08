.class public Landroid/support/v4/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final js:Ljava/lang/Object;


# instance fields
.field public jP:[I

.field public jt:Z

.field public jv:[Ljava/lang/Object;

.field public mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/c/v;->js:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/c/v;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/c/v;->jt:Z

    .line 70
    if-nez p1, :cond_0

    .line 71
    sget-object p1, Landroid/support/v4/c/e;->jo:[I

    iput-object p1, p0, Landroid/support/v4/c/v;->jP:[I

    .line 72
    sget-object p1, Landroid/support/v4/c/e;->jq:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p1}, Landroid/support/v4/c/e;->r(I)I

    move-result p1

    .line 75
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/support/v4/c/v;->jP:[I

    .line 76
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    .line 78
    :goto_0
    iput v0, p0, Landroid/support/v4/c/v;->mSize:I

    .line 79
    return-void
.end method


# virtual methods
.method public final aI()Landroid/support/v4/c/v;
    .locals 2

    .line 84
    nop

    .line 86
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/v;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/c/v;->jP:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/support/v4/c/v;->jP:[I

    .line 88
    iget-object v1, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroid/support/v4/c/v;->aI()Landroid/support/v4/c/v;

    move-result-object v0

    return-object v0
.end method

.method public final gc()V
    .locals 8

    .line 165
    iget v0, p0, Landroid/support/v4/c/v;->mSize:I

    .line 166
    nop

    .line 167
    iget-object v1, p0, Landroid/support/v4/c/v;->jP:[I

    .line 168
    iget-object v2, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    .line 170
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 171
    aget-object v6, v2, v4

    .line 173
    sget-object v7, Landroid/support/v4/c/v;->js:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 174
    if-eq v4, v5, :cond_0

    .line 175
    aget v7, v1, v4

    aput v7, v1, v5

    .line 176
    aput-object v6, v2, v5

    .line 177
    const/4 v6, 0x0

    aput-object v6, v2, v4

    .line 180
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 170
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_2
    iput-boolean v3, p0, Landroid/support/v4/c/v;->jt:Z

    .line 185
    iput v5, p0, Landroid/support/v4/c/v;->mSize:I

    .line 188
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 100
    iget-object v0, p0, Landroid/support/v4/c/v;->jP:[I

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/e;->a([III)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/c/v;->js:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final keyAt(I)I
    .locals 1

    .line 268
    iget-boolean v0, p0, Landroid/support/v4/c/v;->jt:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/support/v4/c/v;->gc()V

    .line 272
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/v;->jP:[I

    aget p1, v0, p1

    return p1
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 6

    .line 196
    iget-object v0, p0, Landroid/support/v4/c/v;->jP:[I

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/e;->a([III)I

    move-result v0

    .line 198
    if-ltz v0, :cond_0

    .line 199
    iget-object p1, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    .line 201
    :cond_0
    not-int v0, v0

    .line 203
    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/c/v;->js:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Landroid/support/v4/c/v;->jP:[I

    aput p1, v1, v0

    .line 205
    iget-object p1, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 206
    return-void

    .line 209
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/c/v;->jt:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    iget-object v2, p0, Landroid/support/v4/c/v;->jP:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 210
    invoke-virtual {p0}, Landroid/support/v4/c/v;->gc()V

    .line 213
    iget-object v0, p0, Landroid/support/v4/c/v;->jP:[I

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/e;->a([III)I

    move-result v0

    not-int v0, v0

    .line 216
    :cond_2
    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    iget-object v2, p0, Landroid/support/v4/c/v;->jP:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 217
    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/c/e;->r(I)I

    move-result v1

    .line 219
    new-array v2, v1, [I

    .line 220
    new-array v1, v1, [Ljava/lang/Object;

    .line 223
    iget-object v3, p0, Landroid/support/v4/c/v;->jP:[I

    iget-object v4, p0, Landroid/support/v4/c/v;->jP:[I

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget-object v3, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iput-object v2, p0, Landroid/support/v4/c/v;->jP:[I

    .line 227
    iput-object v1, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    .line 230
    :cond_3
    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 232
    iget-object v1, p0, Landroid/support/v4/c/v;->jP:[I

    iget-object v2, p0, Landroid/support/v4/c/v;->jP:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/c/v;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget-object v1, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/c/v;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :cond_4
    iget-object v1, p0, Landroid/support/v4/c/v;->jP:[I

    aput p1, v1, v0

    .line 237
    iget-object p1, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 238
    iget p1, p0, Landroid/support/v4/c/v;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v4/c/v;->mSize:I

    .line 240
    return-void
.end method

.method public final remove(I)V
    .locals 2

    .line 136
    iget-object v0, p0, Landroid/support/v4/c/v;->jP:[I

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/e;->a([III)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/c/v;->js:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/c/v;->js:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/c/v;->jt:Z

    .line 137
    :cond_0
    return-void
.end method

.method public final size()I
    .locals 1

    .line 247
    iget-boolean v0, p0, Landroid/support/v4/c/v;->jt:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/support/v4/c/v;->gc()V

    .line 251
    :cond_0
    iget v0, p0, Landroid/support/v4/c/v;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 395
    invoke-virtual {p0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 396
    const-string v0, "{}"

    return-object v0

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 400
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v4/c/v;->mSize:I

    if-ge v1, v2, :cond_3

    .line 402
    if-lez v1, :cond_1

    .line 403
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/c/v;->keyAt(I)I

    move-result v2

    .line 406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p0, v1}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 409
    if-eq v2, p0, :cond_2

    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 412
    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 1

    .line 282
    iget-boolean v0, p0, Landroid/support/v4/c/v;->jt:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/c/v;->gc()V

    .line 286
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/v;->jv:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
