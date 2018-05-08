.class public abstract Lcom/android/launcher3/BaseRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method public final bindFastScrollbar()V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 60
    const v1, 0x7f0e002e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    .line 61
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const v2, 0x7f0e002d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setRecyclerView(Lcom/android/launcher3/BaseRecyclerView;Landroid/widget/TextView;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseRecyclerView;->onUpdateScrollbar(I)V

    .line 63
    return-void
.end method

.method public final getAvailableScrollBarHeight()I
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 92
    return v0
.end method

.method public abstract getAvailableScrollHeight()I
.end method

.method public abstract getCurrentScrollY()I
.end method

.method public getScrollBarTop()I
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return-object v0
.end method

.method public final getScrollbarTrackHeight()I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollBarTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->bindFastScrollbar()V

    .line 56
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 0

    .line 172
    return-void
.end method

.method public abstract onUpdateScrollbar(I)V
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method public final shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 128
    iget-object p1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V

    .line 130
    iget-object p1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    aget p2, v0, v2

    aget v0, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isNearThumb(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    return v2

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getCurrentScrollY()I

    move-result p1

    if-nez p1, :cond_1

    .line 137
    return v1

    .line 139
    :cond_1
    return v2
.end method

.method public supportsFastScrolling()Z
    .locals 1

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public final synchronizeScrollBarThumbOffsetToViewScroll(II)V
    .locals 0

    .line 105
    if-gtz p2, :cond_0

    .line 106
    iget-object p1, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 107
    return-void

    .line 113
    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/BaseRecyclerView;->getAvailableScrollBarHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 117
    iget-object p2, p0, Lcom/android/launcher3/BaseRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 118
    return-void
.end method
