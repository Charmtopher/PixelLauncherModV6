.class Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 538
    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V
    .locals 0

    .line 560
    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    :goto_0
    iput p1, p4, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 561
    if-eqz p2, :cond_1

    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    add-int/2addr p1, p3

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    :goto_1
    iput p1, p4, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 562
    return-void
.end method

.method public final applyDeltaAndBound(ZZIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I
    .locals 0

    .line 576
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    .line 577
    iget p3, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    if-gez p3, :cond_0

    .line 578
    const/4 p3, 0x0

    iput p3, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 580
    :cond_0
    iget p3, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    if-le p3, p5, :cond_1

    .line 581
    iput p5, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 583
    :cond_1
    invoke-virtual {p6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result p3

    if-ge p3, p4, :cond_3

    .line 584
    if-eqz p1, :cond_2

    .line 585
    iget p1, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    sub-int/2addr p1, p4

    iput p1, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    goto :goto_0

    .line 586
    :cond_2
    if-eqz p2, :cond_3

    .line 587
    iget p1, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr p1, p4

    iput p1, p6, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 590
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result p2

    :goto_1
    sub-int/2addr p1, p2

    return p1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result p1

    invoke-virtual {p6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result p2

    goto :goto_1
.end method

.method public final clamp(I)I
    .locals 2

    .line 543
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    return p1
.end method

.method public final set(II)V
    .locals 0

    .line 547
    iput p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 548
    iput p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    .line 549
    return-void
.end method

.method public final size()I
    .locals 2

    .line 552
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    sub-int/2addr v0, v1

    return v0
.end method
