.class public Lcom/android/launcher3/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public canReorder:Z

.field public cellHSpan:I

.field public cellVSpan:I

.field public cellX:I

.field public cellY:I

.field dropped:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 2624
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2592
    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2625
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2626
    iput p2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2627
    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2628
    iput p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2629
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2604
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2586
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2592
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2605
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2606
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2607
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2610
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2586
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2592
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 2611
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2612
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2613
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 2678
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 2670
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 2686
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 2694
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 2674
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 2675
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 2666
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 2667
    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 2682
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 2683
    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 2690
    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 2691
    return-void
.end method

.method public final setup(IIZI)V
    .locals 7

    .line 2632
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIFF)V

    .line 2633
    return-void
.end method

.method public final setup(IIZIFF)V
    .locals 4

    .line 2644
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v0, :cond_3

    .line 2645
    iget v0, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2646
    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2647
    iget-boolean v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2648
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2650
    :goto_1
    if-eqz p3, :cond_2

    .line 2651
    sub-int/2addr p4, v2

    iget p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v2, p4, p3

    .line 2654
    :cond_2
    mul-int/2addr v0, p1

    int-to-float p3, v0

    div-float/2addr p3, p5

    iget p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->rightMargin:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    .line 2655
    mul-int/2addr v1, p2

    int-to-float p3, v1

    div-float/2addr p3, p6

    iget p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->bottomMargin:I

    int-to-float p4, p4

    sub-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->height:I

    .line 2656
    mul-int/2addr v2, p1

    iget p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 2657
    mul-int/2addr v3, p2

    iget p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 2659
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
