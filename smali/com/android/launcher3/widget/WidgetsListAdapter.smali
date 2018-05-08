.class public Lcom/android/launcher3/widget/WidgetsListAdapter;
.super Landroid/support/v7/widget/V;
.source "SourceFile"


# instance fields
.field private mApplyBitmapDeferred:Z

.field final mDiffReporter:Lcom/android/launcher3/widget/WidgetsDiffReporter;

.field mEntries:Ljava/util/ArrayList;

.field private final mIconClickListener:Landroid/view/View$OnClickListener;

.field private final mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mIndent:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/WidgetPreviewLoader;Lcom/android/launcher3/IconCache;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/support/v7/widget/V;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    .line 68
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 69
    iput-object p3, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 70
    iput-object p5, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 71
    iput-object p6, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0054

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    .line 73
    new-instance p1, Lcom/android/launcher3/widget/WidgetsDiffReporter;

    invoke-direct {p1, p4, p0}, Lcom/android/launcher3/widget/WidgetsDiffReporter;-><init>(Lcom/android/launcher3/IconCache;Landroid/support/v7/widget/V;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mDiffReporter:Lcom/android/launcher3/widget/WidgetsDiffReporter;

    .line 74
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 205
    int-to-long v0, p1

    return-wide v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/aA;I)V
    .locals 8

    .line 49
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/widget/WidgetListRowEntry;

    iget-object v0, p2, Lcom/android/launcher3/widget/WidgetListRowEntry;->widgets:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->cellContainer:Landroid/view/ViewGroup;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-le v2, v3, :cond_1

    :goto_0
    if-ge v3, v2, :cond_2

    and-int/lit8 v6, v3, 0x1

    if-ne v6, v4, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04003e

    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04003c

    invoke-virtual {v6, v7, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/widget/WidgetCell;

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/widget/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/widget/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v3, :cond_2

    :goto_2
    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->title:Lcom/android/launcher3/BubbleTextView;

    iget-object p2, p2, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V

    move p1, v5

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    const/4 p2, 0x2

    mul-int/2addr p2, p1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/WidgetCell;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/WidgetPreviewLoader;)V

    iget-boolean v3, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mApplyBitmapDeferred:Z

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/WidgetCell;->setApplyBitmapDeferred(Z)V

    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetCell;->ensurePreview()V

    invoke-virtual {v2, v5}, Lcom/android/launcher3/widget/WidgetCell;->setVisibility(I)V

    if-lez p1, :cond_3

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aA;
    .locals 3

    .line 49
    iget-object p2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f040041

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0e008e

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget v1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v0, v2, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    new-instance p2, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-direct {p2, p1}, Lcom/android/launcher3/widget/WidgetsRowViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public final bridge synthetic onFailedToRecycleView$cb3a904()Z
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic onViewRecycled(Landroid/support/v7/widget/aA;)V
    .locals 5

    .line 49
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    iget-object v0, p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->cellContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->cellContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/WidgetCell;

    iget-object v3, v2, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/WidgetImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, v2, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/launcher3/widget/WidgetImageView;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v2, Lcom/android/launcher3/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v4, v2, Lcom/android/launcher3/widget/WidgetCell;->mActiveRequest:Landroid/os/CancellationSignal;

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setApplyBitmapDeferred(ZLandroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .line 82
    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mApplyBitmapDeferred:Z

    .line 84
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 85
    nop

    .line 86
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    .line 87
    iget-object v1, v0, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->cellContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 88
    iget-object v2, v0, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->cellContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 89
    instance-of v3, v2, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v3, :cond_0

    .line 90
    check-cast v2, Lcom/android/launcher3/widget/WidgetCell;

    iget-boolean v3, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mApplyBitmapDeferred:Z

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/WidgetCell;->setApplyBitmapDeferred(Z)V

    .line 87
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 84
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method
