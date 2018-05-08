.class public Lcom/android/launcher3/util/GridOccupancy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cells:[[Z

.field private final mCountX:I

.field private final mCountY:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    .line 19
    iput p2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    .line 20
    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-class p2, Z

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    .line 21
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    .line 99
    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 100
    return-void
.end method

.method public final copyTo(Lcom/android/launcher3/util/GridOccupancy;)V
    .locals 5

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v1, v2, :cond_1

    .line 55
    move v2, v0

    :goto_1
    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 56
    iget-object v3, p1, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public final findVacantCell([III)Z
    .locals 9

    .line 33
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int v2, v1, p3

    iget v3, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-gt v2, v3, :cond_6

    .line 34
    move v3, v0

    :goto_1
    add-int v4, v3, p2

    iget v5, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-gt v4, v5, :cond_5

    .line 35
    iget-object v5, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v5, v5, v3

    aget-boolean v5, v5, v1

    .line 37
    const/4 v6, 0x1

    xor-int/2addr v5, v6

    move v7, v5

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_3

    .line 38
    move v8, v7

    move v7, v1

    :goto_3
    if-ge v7, v2, :cond_2

    .line 39
    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v8, v8, v5

    aget-boolean v8, v8, v7

    if-nez v8, :cond_0

    .line 40
    move v8, v6

    goto :goto_4

    .line 39
    :cond_0
    nop

    .line 40
    move v8, v0

    :goto_4
    if-eqz v8, :cond_1

    .line 38
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 43
    :cond_1
    move v7, v8

    goto :goto_5

    .line 37
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v7, v8

    goto :goto_2

    .line 43
    :cond_3
    :goto_5
    if-eqz v7, :cond_4

    .line 44
    aput v3, p1, v0

    .line 45
    aput v1, p1, v6

    .line 46
    return v6

    .line 34
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 33
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_6
    return v0
.end method

.method public final isRegionVacant(IIII)Z
    .locals 4

    .line 62
    add-int/2addr p3, p1

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    .line 63
    add-int/2addr p4, p2

    sub-int/2addr p4, v0

    .line 64
    const/4 v1, 0x0

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge p3, v2, :cond_4

    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-lt p4, v2, :cond_0

    goto :goto_2

    .line 67
    :cond_0
    :goto_0
    if-gt p1, p3, :cond_3

    .line 68
    move v2, p2

    :goto_1
    if-gt v2, p4, :cond_2

    .line 69
    iget-object v3, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v3, v3, p1

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 70
    return v1

    .line 68
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 74
    :cond_3
    return v0

    .line 65
    :cond_4
    :goto_2
    return v1
.end method

.method public final markCells(IIIIZ)V
    .locals 3

    .line 78
    if-ltz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountX:I

    if-ge v0, v1, :cond_2

    .line 80
    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/util/GridOccupancy;->mCountY:I

    if-ge v1, v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    return-void

    .line 78
    :cond_3
    :goto_2
    return-void
.end method

.method public final markCells(Landroid/graphics/Rect;Z)V
    .locals 6

    .line 87
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 88
    return-void
.end method

.method public final markCells(Lcom/android/launcher3/ItemInfo;Z)V
    .locals 6

    .line 95
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 96
    return-void
.end method

.method public final markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V
    .locals 6

    .line 91
    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 92
    return-void
.end method
