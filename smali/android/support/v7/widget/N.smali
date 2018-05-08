.class final Landroid/support/v7/widget/N;
.super Landroid/support/v7/widget/M;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/af;)V
    .locals 1

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/M;-><init>(Landroid/support/v7/widget/af;B)V

    return-void
.end method


# virtual methods
.method public final S(Landroid/view/View;)I
    .locals 2

    .line 304
    nop

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 306
    iget-object v1, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/aj;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final T(Landroid/view/View;)I
    .locals 2

    .line 297
    nop

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 299
    iget-object v1, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/aj;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final U(Landroid/view/View;)I
    .locals 3

    .line 311
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/N;->mX:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/af;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 312
    iget-object p1, p0, Landroid/support/v7/widget/N;->mX:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public final U(I)V
    .locals 1

    .line 271
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->offsetChildrenHorizontal(I)V

    .line 272
    return-void
.end method

.method public final V(Landroid/view/View;)I
    .locals 3

    .line 317
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/N;->mX:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/af;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 318
    iget-object p1, p0, Landroid/support/v7/widget/N;->mX:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public final W(Landroid/view/View;)I
    .locals 2

    .line 281
    nop

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 283
    iget-object v1, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/support/v7/widget/aj;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/support/v7/widget/aj;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final X(Landroid/view/View;)I
    .locals 2

    .line 289
    nop

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 291
    iget-object v1, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/support/v7/widget/aj;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/support/v7/widget/aj;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final bA()I
    .locals 2

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mWidth:I

    iget-object v1, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    .line 324
    invoke-virtual {v1}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final bB()I
    .locals 1

    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mHeightMode:I

    return v0
.end method

.method public final by()I
    .locals 1

    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final bz()I
    .locals 2

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mWidth:I

    iget-object v1, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getEnd()I
    .locals 1

    .line 266
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mWidth:I

    return v0
.end method

.method public final getEndPadding()I
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public final getMode()I
    .locals 1

    .line 339
    iget-object v0, p0, Landroid/support/v7/widget/N;->pR:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mWidthMode:I

    return v0
.end method
