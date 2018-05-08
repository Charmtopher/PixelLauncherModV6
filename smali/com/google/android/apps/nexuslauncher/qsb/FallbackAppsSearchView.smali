.class public Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;
.super Lcom/android/launcher3/ExtendedEditText;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;


# instance fields
.field AA:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

.field final Az:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

.field mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->Az:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    .line 44
    return-void
.end method

.method private dF()V
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->AA:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->aD(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    move v2, v1

    :goto_0
    iget-object v3, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget-object v3, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-direct {v5, v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    :cond_0
    iget-object v3, v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v4

    const/16 v5, 0xff

    if-eq v4, v5, :cond_2

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v5, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, v3, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 93
    :cond_3
    return-void
.end method


# virtual methods
.method public final clearSearchResult()V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->dF()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-boolean v1, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchModeWhileUsingTabs:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->rebindAdapters(Z)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchModeWhileUsingTabs:Z

    .line 83
    :cond_1
    return-void
.end method

.method public onAppsUpdated()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->Az:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    .line 88
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/android/launcher3/ExtendedEditText;->onAttachedToWindow()V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 50
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/android/launcher3/ExtendedEditText;->onDetachedFromWindow()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 56
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .line 98
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 103
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/ExtendedEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 104
    return-void
.end method

.method public final onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6

    .line 68
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    .line 70
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->dF()V

    .line 71
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p2, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p2, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v4, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0032

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, p1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p1, p2, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    if-eqz p1, :cond_1

    iput-boolean v3, p2, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchModeWhileUsingTabs:Z

    invoke-virtual {p2, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->rebindAdapters(Z)V

    .line 73
    :cond_1
    return-void
.end method
