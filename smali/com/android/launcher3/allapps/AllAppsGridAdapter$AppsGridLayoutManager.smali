.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
.super Landroid/support/v7/widget/A;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 93
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0}, Landroid/support/v7/widget/A;-><init>(IIZ)V

    .line 94
    return-void
.end method

.method private getRowsNotForAccessibility(I)I
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 145
    nop

    .line 146
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-gt v1, p1, :cond_1

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v3, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return v2
.end method


# virtual methods
.method public final getRowCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 114
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/A;->getRowCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 115
    iget-object p2, p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object p2, p2, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 114
    return p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/widget/A;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 102
    nop

    .line 103
    new-instance v0, Landroid/support/v4/view/a/g;

    invoke-direct {v0, p1}, Landroid/support/v4/view/a/g;-><init>(Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, v0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 105
    nop

    .line 106
    iget-object p1, v0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result p1

    iget-object v1, v0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v1

    sub-int/2addr p1, v1

    .line 105
    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, v0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 107
    nop

    .line 108
    iget-object p1, v0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result p1

    iget-object v2, v0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v2

    sub-int/2addr p1, v2

    .line 107
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, v0, Landroid/support/v4/view/a/g;->lu:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 109
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 8

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/A;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 123
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 124
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_0

    iget-object p2, p4, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v4/view/a/c;

    invoke-direct {v0, p2}, Landroid/support/v4/view/a/c;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    instance-of p2, p1, Landroid/support/v7/widget/C;

    if-eqz p2, :cond_8

    if-nez v0, :cond_1

    goto/16 :goto_8

    .line 128
    :cond_1
    check-cast p1, Landroid/support/v7/widget/C;

    .line 129
    nop

    .line 130
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    if-lt p2, p3, :cond_2

    iget-object p2, v0, Landroid/support/v4/view/a/c;->lr:Ljava/lang/Object;

    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    iget-object p1, p1, Landroid/support/v7/widget/aj;->qb:Landroid/support/v7/widget/aA;

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->getAdapterPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result p1

    sub-int v2, p2, p1

    .line 131
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p3, :cond_3

    iget-object p1, v0, Landroid/support/v4/view/a/c;->lr:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result p1

    .line 132
    move v3, p1

    goto :goto_2

    .line 131
    :cond_3
    nop

    .line 132
    move v3, v1

    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p3, :cond_4

    iget-object p1, v0, Landroid/support/v4/view/a/c;->lr:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result p1

    .line 133
    move v4, p1

    goto :goto_3

    .line 132
    :cond_4
    nop

    .line 133
    move v4, v1

    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p3, :cond_5

    iget-object p1, v0, Landroid/support/v4/view/a/c;->lr:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result p1

    .line 134
    move v5, p1

    goto :goto_4

    .line 133
    :cond_5
    nop

    .line 134
    move v5, v1

    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p3, :cond_6

    iget-object p1, v0, Landroid/support/v4/view/a/c;->lr:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result p1

    .line 135
    move v6, p1

    goto :goto_5

    .line 134
    :cond_6
    nop

    .line 135
    move v6, v1

    :goto_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_7

    iget-object p1, v0, Landroid/support/v4/view/a/c;->lr:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v1

    .line 129
    :goto_6
    move v7, v1

    goto :goto_7

    .line 135
    :cond_7
    goto :goto_6

    .line 129
    :goto_7
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/a/c;->a(IIIIZZ)Landroid/support/v4/view/a/c;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/a/a;->q(Ljava/lang/Object;)V

    .line 136
    return-void

    .line 126
    :cond_8
    :goto_8
    return-void
.end method
