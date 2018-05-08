.class Landroid/support/v7/widget/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/aM;


# instance fields
.field final synthetic qa:Landroid/support/v7/widget/af;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/af;)V
    .locals 0

    .line 7301
    iput-object p1, p0, Landroid/support/v7/widget/ah;->qa:Landroid/support/v7/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Y(Landroid/view/View;)I
    .locals 2

    .line 7330
    nop

    .line 7331
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 7332
    iget-object v1, p0, Landroid/support/v7/widget/ah;->qa:Landroid/support/v7/widget/af;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/aj;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final Z(Landroid/view/View;)I
    .locals 2

    .line 7337
    nop

    .line 7338
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 7339
    iget-object v1, p0, Landroid/support/v7/widget/ah;->qa:Landroid/support/v7/widget/af;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/af;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/aj;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final bE()I
    .locals 1

    .line 7319
    iget-object v0, p0, Landroid/support/v7/widget/ah;->qa:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public final bF()I
    .locals 2

    .line 7324
    iget-object v0, p0, Landroid/support/v7/widget/ah;->qa:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mHeight:I

    iget-object v1, p0, Landroid/support/v7/widget/ah;->qa:Landroid/support/v7/widget/af;

    .line 7325
    invoke-virtual {v1}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    .line 7314
    iget-object v0, p0, Landroid/support/v7/widget/ah;->qa:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
