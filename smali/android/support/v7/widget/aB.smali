.class public Landroid/support/v7/widget/aB;
.super Landroid/support/v4/view/b;
.source "SourceFile"


# instance fields
.field final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field final qU:Landroid/support/v4/view/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 39
    new-instance p1, Landroid/support/v7/widget/aC;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/aC;-><init>(Landroid/support/v7/widget/aB;)V

    iput-object p1, p0, Landroid/support/v7/widget/aB;->qU:Landroid/support/v4/view/b;

    .line 40
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 70
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 71
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 73
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/af;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 77
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 5

    .line 60
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 61
    const-class p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/a;->setClassName(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 63
    iget-object p1, p0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object p1

    iget-object v0, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v2, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, Landroid/support/v4/view/a/a;->addAction(I)V

    invoke-virtual {p2, v4}, Landroid/support/v4/view/a/a;->setScrollable(Z)V

    :cond_1
    iget-object v2, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/support/v4/view/a/a;->addAction(I)V

    invoke-virtual {p2, v4}, Landroid/support/v4/view/a/a;->setScrollable(Z)V

    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/af;->getRowCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result v2

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/af;->getColumnCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v3, 0x13

    const/4 v4, 0x0

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/a/b;

    invoke-static {v2, p1, v4, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/view/a/b;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_5

    new-instance v0, Landroid/support/v4/view/a/b;

    invoke-static {v2, p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/view/a/b;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/view/a/b;

    const/4 p1, 0x0

    invoke-direct {v0, p1}, Landroid/support/v4/view/a/b;-><init>(Ljava/lang/Object;)V

    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    iget-object p1, p2, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    check-cast v0, Landroid/support/v4/view/a/b;

    iget-object p2, v0, Landroid/support/v4/view/a/b;->lr:Ljava/lang/Object;

    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 65
    :cond_6
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 49
    return p3

    .line 51
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    iget-object p1, p0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 52
    iget-object p1, p0, Landroid/support/v7/widget/aB;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object p1

    iget-object v1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x1000

    if-eq p2, v1, :cond_4

    const/16 v1, 0x2000

    if-eq p2, v1, :cond_2

    move p2, v0

    move v1, p2

    goto :goto_2

    :cond_2
    iget-object p2, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p1, Landroid/support/v7/widget/af;->mHeight:I

    invoke-virtual {p1}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    neg-int p2, p2

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p1}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    goto :goto_2

    :cond_4
    iget-object p2, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p1, Landroid/support/v7/widget/af;->mHeight:I

    invoke-virtual {p1}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_5
    move p2, v0

    :goto_1
    iget-object v1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p3}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p1}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    if-nez p2, :cond_7

    if-nez v1, :cond_7

    return v0

    :cond_7
    iget-object p1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1, p2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    return p3

    .line 55
    :cond_8
    return v0
.end method
