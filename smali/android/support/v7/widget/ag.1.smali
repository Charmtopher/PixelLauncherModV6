.class Landroid/support/v7/widget/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/aM;


# instance fields
.field final synthetic qa:Landroid/support/v7/widget/af;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/af;)V
    .locals 0

    .line 7255
    iput-object p1, p0, Landroid/support/v7/widget/ag;->qa:Landroid/support/v7/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Y(Landroid/view/View;)I
    .locals 2

    .line 7283
    nop

    .line 7284
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 7285
    iget-object v1, p0, Landroid/support/v7/widget/ag;->qa:Landroid/support/v7/widget/af;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/aj;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final Z(Landroid/view/View;)I
    .locals 2

    .line 7290
    nop

    .line 7291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 7292
    iget-object v1, p0, Landroid/support/v7/widget/ag;->qa:Landroid/support/v7/widget/af;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/aj;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final bE()I
    .locals 1

    .line 7273
    iget-object v0, p0, Landroid/support/v7/widget/ag;->qa:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final bF()I
    .locals 2

    .line 7278
    iget-object v0, p0, Landroid/support/v7/widget/ag;->qa:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mWidth:I

    iget-object v1, p0, Landroid/support/v7/widget/ag;->qa:Landroid/support/v7/widget/af;

    invoke-virtual {v1}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    .line 7268
    iget-object v0, p0, Landroid/support/v7/widget/ag;->qa:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
