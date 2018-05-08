.class public Landroid/support/v4/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final js:Ljava/lang/Object;


# instance fields
.field public jt:Z

.field public ju:[J

.field public jv:[Ljava/lang/Object;

.field public mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/c/h;->js:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/c/h;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/c/h;->jt:Z

    .line 66
    if-nez p1, :cond_0

    .line 67
    sget-object p1, Landroid/support/v4/c/e;->jp:[J

    iput-object p1, p0, Landroid/support/v4/c/h;->ju:[J

    .line 68
    sget-object p1, Landroid/support/v4/c/e;->jq:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p1}, Landroid/support/v4/c/e;->s(I)I

    move-result p1

    .line 71
    new-array v1, p1, [J

    iput-object v1, p0, Landroid/support/v4/c/h;->ju:[J

    .line 72
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    .line 74
    :goto_0
    iput v0, p0, Landroid/support/v4/c/h;->mSize:I

    .line 75
    return-void
.end method


# virtual methods
.method public final aF()Landroid/support/v4/c/h;
    .locals 2

    .line 80
    nop

    .line 82
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/c/h;->ju:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Landroid/support/v4/c/h;->ju:[J

    .line 84
    iget-object v1, p0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroid/support/v4/c/h;->aF()Landroid/support/v4/c/h;

    move-result-object v0

    return-object v0
.end method

.method public final gc()V
    .locals 9

    .line 148
    iget v0, p0, Landroid/support/v4/c/h;->mSize:I

    .line 149
    nop

    .line 150
    iget-object v1, p0, Landroid/support/v4/c/h;->ju:[J

    .line 151
    iget-object v2, p0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    .line 153
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 154
    aget-object v6, v2, v4

    .line 156
    sget-object v7, Landroid/support/v4/c/h;->js:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 157
    if-eq v4, v5, :cond_0

    .line 158
    aget-wide v7, v1, v4

    aput-wide v7, v1, v5

    .line 159
    aput-object v6, v2, v5

    .line 160
    const/4 v6, 0x0

    aput-object v6, v2, v4

    .line 163
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 153
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_2
    iput-boolean v3, p0, Landroid/support/v4/c/h;->jt:Z

    .line 168
    iput v5, p0, Landroid/support/v4/c/h;->mSize:I

    .line 171
    return-void
.end method

.method public final keyAt(I)J
    .locals 3

    .line 251
    iget-boolean v0, p0, Landroid/support/v4/c/h;->jt:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/support/v4/c/h;->gc()V

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/h;->ju:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final size()I
    .locals 1

    .line 230
    iget-boolean v0, p0, Landroid/support/v4/c/h;->jt:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/support/v4/c/h;->gc()V

    .line 234
    :cond_0
    iget v0, p0, Landroid/support/v4/c/h;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 376
    invoke-virtual {p0}, Landroid/support/v4/c/h;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 377
    const-string v0, "{}"

    return-object v0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/c/h;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 381
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v4/c/h;->mSize:I

    if-ge v1, v2, :cond_3

    .line 383
    if-lez v1, :cond_1

    .line 384
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/c/h;->keyAt(I)J

    move-result-wide v2

    .line 387
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 388
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0, v1}, Landroid/support/v4/c/h;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 390
    if-eq v2, p0, :cond_2

    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 393
    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 1

    .line 265
    iget-boolean v0, p0, Landroid/support/v4/c/h;->jt:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Landroid/support/v4/c/h;->gc()V

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/h;->jv:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
