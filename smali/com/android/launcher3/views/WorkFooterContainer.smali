.class public Lcom/android/launcher3/views/WorkFooterContainer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private updateTranslation()V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/views/WorkFooterContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher3/views/WorkFooterContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/views/WorkFooterContainer;->getBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/WorkFooterContainer;->setTranslationY(F)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public offsetTopAndBottom(I)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->offsetTopAndBottom(I)V

    .line 49
    invoke-direct {p0}, Lcom/android/launcher3/views/WorkFooterContainer;->updateTranslation()V

    .line 50
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 42
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 43
    invoke-direct {p0}, Lcom/android/launcher3/views/WorkFooterContainer;->updateTranslation()V

    .line 44
    return-void
.end method
