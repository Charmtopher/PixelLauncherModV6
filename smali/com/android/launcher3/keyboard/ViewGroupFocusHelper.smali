.class public Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;
.super Lcom/android/launcher3/keyboard/FocusIndicatorHelper;
.source "SourceFile"


# instance fields
.field private final mContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;-><init>(Landroid/view/View;)V

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->mContainer:Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method public final viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 39
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 40
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 42
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->mContainer:Landroid/view/View;

    if-eq v1, v2, :cond_1

    instance-of v2, v1, Lcom/android/launcher3/PagedView;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/PagedView;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->left:I

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 46
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 47
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    sub-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 49
    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 50
    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 51
    return-void
.end method
