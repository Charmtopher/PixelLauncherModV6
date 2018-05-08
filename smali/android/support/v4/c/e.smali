.class public Landroid/support/v4/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final jo:[I

.field static final jp:[J

.field static final jq:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/support/v4/c/e;->jo:[I

    .line 21
    new-array v1, v0, [J

    sput-object v1, Landroid/support/v4/c/e;->jp:[J

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/c/e;->jq:[Ljava/lang/Object;

    return-void
.end method

.method public static a([III)I
    .locals 3

    .line 46
    nop

    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 49
    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    .line 50
    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 51
    aget v2, p0, v1

    .line 53
    if-ge v2, p2, :cond_0

    .line 54
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    if-le v2, p2, :cond_1

    .line 56
    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    .line 58
    :cond_1
    return v1

    .line 60
    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static a([JIJ)I
    .locals 4

    .line 65
    nop

    .line 66
    add-int/lit8 p1, p1, -0x1

    .line 68
    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    .line 69
    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 70
    aget-wide v2, p0, v1

    .line 72
    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    .line 73
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    if-lez v2, :cond_1

    .line 75
    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    .line 77
    :cond_1
    return v1

    .line 79
    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 41
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static r(I)I
    .locals 0

    .line 25
    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Landroid/support/v4/c/e;->t(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static s(I)I
    .locals 0

    .line 29
    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Landroid/support/v4/c/e;->t(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static t(I)I
    .locals 2

    .line 33
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 34
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_0

    .line 35
    return v1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_1
    return p0
.end method
