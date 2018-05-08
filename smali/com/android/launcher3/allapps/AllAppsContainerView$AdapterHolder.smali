.class public Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field final appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field final layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field final padding:Landroid/graphics/Rect;

.field public recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field verticalFadingEdge:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsContainerView;Z)V
    .locals 3

    .line 468
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    .line 469
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Z)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 470
    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {p2, p1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 471
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iput-object p2, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 472
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/A;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 473
    return-void
.end method


# virtual methods
.method final applyPadding()V
    .locals 5

    .line 493
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setPadding(IIII)V

    .line 496
    :cond_0
    return-void
.end method

.method public final applyVerticalFadingEdgeEnabled(Z)V
    .locals 2

    .line 499
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->verticalFadingEdge:Z

    .line 500
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$300(Lcom/android/launcher3/allapps/AllAppsContainerView;)[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/AllAppsContainerView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->verticalFadingEdge:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 502
    return-void
.end method

.method final setup(Landroid/view/View;Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iput-object p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 477
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 478
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->createEdgeEffectFactory()Landroid/support/v7/widget/Z;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setEdgeEffectFactory(Landroid/support/v7/widget/Z;)V

    .line 479
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/AllAppsContainerView;)Z

    iput-object p2, p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object v0, p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    .line 480
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/af;)V

    .line 481
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroid/support/v7/widget/V;)V

    .line 482
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setHasFixedSize(Z)V

    .line 484
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setItemAnimator(Landroid/support/v7/widget/aa;)V

    .line 485
    new-instance p1, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p1, p2}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    .line 486
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addItemDecoration(Landroid/support/v7/widget/ae;)V

    .line 487
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object p1, p1, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    iput-object p1, p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 488
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->verticalFadingEdge:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->applyVerticalFadingEdgeEnabled(Z)V

    .line 489
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 490
    return-void
.end method
