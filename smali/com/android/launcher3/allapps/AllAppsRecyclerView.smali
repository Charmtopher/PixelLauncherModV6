.class public Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.super Lcom/android/launcher3/BaseRecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# instance fields
.field public mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mCachedScrollPositions:Landroid/util/SparseIntArray;

.field public mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

.field private mEmptySearchBackgroundTopOffset:I

.field mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

.field private final mNumAppsPerRow:I

.field private mViewHeights:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 55
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 77
    const p3, 0x7f0b003b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 79
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    return-object p0
.end method


# virtual methods
.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    const/16 p1, 0x8

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-void

    .line 144
    :cond_0
    const/4 p1, 0x4

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 146
    return-void
.end method

.method protected final getAvailableScrollHeight()I
    .locals 3

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroid/support/v7/widget/V;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public final getCurrentScrollY()I
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 326
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    .line 333
    if-ne v2, v1, :cond_1

    .line 334
    return v1

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v1

    .line 337
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/af;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 336
    return v1

    .line 327
    :cond_2
    :goto_0
    return v1
.end method

.method public final getCurrentScrollY(II)I
    .locals 8

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 342
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 343
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 344
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 345
    if-gez v2, :cond_7

    .line 346
    nop

    .line 347
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, p1, :cond_6

    .line 348
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 349
    iget v6, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 351
    if-eqz v1, :cond_1

    iget v6, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iget v7, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v6, v7, :cond_1

    iget v6, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    iget v7, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    if-eq v6, v7, :cond_6

    .line 353
    :cond_1
    iget v6, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    if-nez v6, :cond_5

    .line 358
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v5, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3

    .line 362
    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v7, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 363
    if-nez v6, :cond_4

    .line 364
    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/aA;

    move-result-object v6

    .line 365
    if-nez v6, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroid/support/v7/widget/V;

    move-result-object v6

    iget v5, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, p0, v5}, Landroid/support/v7/widget/V;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 367
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroid/support/v7/widget/V;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/support/v7/widget/V;->onBindViewHolder(Landroid/support/v7/widget/aA;I)V

    .line 368
    iget-object v6, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    .line 369
    iget-object v6, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/ao;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/ao;->k(Landroid/support/v7/widget/aA;)V

    goto :goto_2

    .line 373
    :cond_3
    iget-object v5, v6, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 376
    :cond_4
    :goto_2
    add-int/2addr v4, v6

    .line 347
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 379
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 381
    move v2, v4

    :cond_7
    sub-int/2addr v2, p2

    return v2
.end method

.method public final getScrollBarTop()I
    .locals 2

    .line 395
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public final getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return-object v0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    return-void
.end method

.method public final onFastScrollCompleted()V
    .locals 3

    .line 212
    invoke-super {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFastScrollCompleted()V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget-object v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 214
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 170
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 172
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setHotspot(FF)V

    .line 175
    :cond_0
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/ao;

    move-result-object p2

    iget p3, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget p4, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    div-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    const/4 p4, 0x1

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p4}, Landroid/support/v7/widget/ao;->u(II)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0, p4}, Landroid/support/v7/widget/ao;->u(II)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p4}, Landroid/support/v7/widget/ao;->u(II)V

    iget p4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    mul-int/2addr p3, p4

    const/4 p4, 0x2

    invoke-virtual {p2, p4, p3}, Landroid/support/v7/widget/ao;->u(II)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {p2, p4, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    return-void
.end method

.method public final onUpdateScrollbar(I)V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-nez v0, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 254
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    .line 261
    if-gez v0, :cond_2

    .line 262
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 263
    return-void

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollBarHeight()I

    move-result v2

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v3

    .line 269
    if-gtz v3, :cond_3

    .line 270
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 271
    return-void

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-boolean v1, v1, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    if-eqz v1, :cond_7

    .line 275
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-boolean v1, v1, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-nez v1, :cond_8

    .line 279
    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 282
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v1

    .line 283
    sub-int v3, v0, v1

    .line 284
    mul-int v4, v3, p1

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 290
    if-gez p1, :cond_4

    .line 291
    mul-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v4, v0

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 292
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v1, p1

    .line 293
    goto :goto_0

    .line 294
    :cond_4
    sub-int v4, v2, v1

    mul-int/2addr p1, v4

    int-to-float p1, p1

    sub-int v4, v2, v0

    int-to-float v4, v4

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 296
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v1, p1

    .line 298
    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 299
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 300
    if-ne v0, p1, :cond_6

    .line 301
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-boolean v1, p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    return-void

    .line 307
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 309
    :cond_6
    return-void

    .line 311
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    .line 313
    :cond_8
    return-void

    .line 255
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 256
    return-void
.end method

.method public final scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 10

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    .line 184
    if-nez v0, :cond_0

    .line 185
    const-string p1, ""

    return-object p1

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->stopScroll()V

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 193
    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 194
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 195
    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 196
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 197
    iget v5, v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v5, v5, p1

    if-gtz v5, :cond_1

    .line 198
    nop

    .line 195
    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result p1

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    .line 206
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    iget v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget-object v5, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v5, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    if-eq v4, v5, :cond_8

    iget-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v4, v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iput v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v5, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v5, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    iget-object v6, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v7, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    goto :goto_3

    :cond_4
    iput-object v5, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    iput-boolean v1, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettled:Z

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateTrackedViewsFastScrollFocusState()V

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v5, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    iget-boolean v6, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mHasFastScrollTouchSettledAtLeastOnce:Z

    if-eqz v6, :cond_5

    const-wide/16 v6, 0xc8

    goto :goto_2

    :cond_5
    const-wide/16 v6, 0x64

    :goto_2
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v4, v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    iget-object v5, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v5, v5, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4
    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    array-length v4, v4

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-double v5, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    move v6, v0

    move v0, v1

    :goto_5
    if-ge v0, v4, :cond_7

    iget-object v7, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p1

    float-to-int v8, v8

    aput v8, v7, v0

    sub-int/2addr v6, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    iput v1, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrameIndex:I

    iget-object p1, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v0, v3, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 207
    :cond_8
    iget-object p1, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object p1
.end method

.method public final scrollToTop()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-boolean v1, v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsThumbDetached:Z

    .line 115
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    .line 116
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/V;)V
    .locals 1

    .line 218
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->setAdapter(Landroid/support/v7/widget/V;)V

    .line 219
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/V;->registerAdapterDataObserver(Landroid/support/v7/widget/X;)V

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iput-object v0, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;

    .line 225
    return-void
.end method

.method public final supportsFastScrolling()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateEmptySearchBackgroundBounds()V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_0

    .line 407
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 412
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 413
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 414
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 415
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 413
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setBounds(IIII)V

    .line 416
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
