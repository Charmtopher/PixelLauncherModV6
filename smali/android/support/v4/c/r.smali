.class public Landroid/support/v4/c/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/c/q;


# instance fields
.field private final jJ:[Ljava/lang/Object;

.field private jK:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-lez p1, :cond_0

    .line 98
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/r;->jJ:[Ljava/lang/Object;

    .line 99
    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public aH()Ljava/lang/Object;
    .locals 4

    .line 104
    iget v0, p0, Landroid/support/v4/c/r;->jK:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 105
    iget v0, p0, Landroid/support/v4/c/r;->jK:I

    add-int/lit8 v0, v0, -0x1

    .line 106
    iget-object v2, p0, Landroid/support/v4/c/r;->jJ:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 107
    iget-object v3, p0, Landroid/support/v4/c/r;->jJ:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 108
    iget v0, p0, Landroid/support/v4/c/r;->jK:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/c/r;->jK:I

    .line 109
    return-object v2

    .line 111
    :cond_0
    return-object v1
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 4

    .line 116
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroid/support/v4/c/r;->jK:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/c/r;->jJ:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-nez v1, :cond_3

    .line 119
    iget v1, p0, Landroid/support/v4/c/r;->jK:I

    iget-object v2, p0, Landroid/support/v4/c/r;->jJ:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 120
    iget-object v0, p0, Landroid/support/v4/c/r;->jJ:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/c/r;->jK:I

    aput-object p1, v0, v1

    .line 121
    iget p1, p0, Landroid/support/v4/c/r;->jK:I

    add-int/2addr p1, v3

    iput p1, p0, Landroid/support/v4/c/r;->jK:I

    .line 122
    return v3

    .line 124
    :cond_2
    return v0

    .line 117
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
