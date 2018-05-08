.class public Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsGridAdapter$BindViewCallback;


# instance fields
.field mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field mCurrentFastScrollSection:Ljava/lang/String;

.field mFastScrollFrameIndex:I

.field final mFastScrollFrames:[I

.field mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

.field mHasFastScrollTouchSettled:Z

.field mHasFastScrollTouchSettledAtLeastOnce:Z

.field mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

.field mTargetFastScrollPosition:I

.field mTargetFastScrollSection:Ljava/lang/String;

.field mTrackedFastScrollViews:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollFrames:[I

    .line 55
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$1;-><init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mSmoothSnapNextFrameRunnable:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$2;-><init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mFastScrollToTargetSectionRunnable:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 82
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 83
    return-void
.end method


# virtual methods
.method public final onBindView(Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollSection:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_1
    return-void
.end method

.method final updateTrackedViewsFastScrollFocusState()V
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTrackedFastScrollViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aA;

    .line 207
    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->getAdapterPosition()I

    move-result v2

    .line 208
    nop

    .line 209
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 211
    iget-object v3, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v3, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 213
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mCurrentFastScrollSection:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 214
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 217
    move v4, v2

    goto :goto_1

    .line 214
    :cond_0
    nop

    .line 217
    :cond_1
    :goto_1
    iget-object v1, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    .line 218
    goto :goto_0

    .line 219
    :cond_2
    return-void
.end method
