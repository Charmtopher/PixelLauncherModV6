.class public Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field protected final mActions:Landroid/util/SparseArray;

.field mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

.field final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 4

    .line 76
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 77
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 80
    const v2, 0x7f0c003d

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0e0008

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 82
    const v2, 0x7f0c003e

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0e0009

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 84
    const v2, 0x7f0c0049

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0e000a

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 86
    const v2, 0x7f0c0073

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0e000b

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 88
    const v2, 0x7f0c0077

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0e000c

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 90
    const v2, 0x7f0c0081

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0e000d

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 92
    const v2, 0x7f0c0082

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0e0010

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 94
    const v2, 0x7f0c0088

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const v2, 0x7f0e0011

    invoke-direct {v1, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    return-void
.end method

.method private getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)Ljava/util/ArrayList;
    .locals 6

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 240
    if-nez v1, :cond_0

    .line 241
    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    .line 245
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 246
    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v2, v4

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v5, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {p1, v2, v4, v3, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    sub-int/2addr v2, v3

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v5, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 247
    invoke-virtual {p1, v2, v4, v3, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 248
    :cond_1
    const v2, 0x7f0c0083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_2
    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    if-le v2, v4, :cond_3

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    if-le v2, v3, :cond_3

    .line 252
    const v2, 0x7f0c0085

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_3
    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 257
    iget v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v2, v4

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {p1, v1, v2, v4, v3}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    sub-int/2addr v2, v3

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 258
    invoke-virtual {p1, v1, v2, v4, v3}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 259
    :cond_4
    const p1, 0x7f0c0084

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_5
    iget p1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    iget v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    if-le p1, v1, :cond_6

    iget p1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    if-le p1, v3, :cond_6

    .line 263
    const p1, 0x7f0c0086

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_6
    return-object v0
.end method


# virtual methods
.method public addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 6

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 109
    if-nez p3, :cond_1

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0011

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v1, v1, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 114
    invoke-virtual {v4, v0, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    iget-object v5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/launcher3/ButtonDropTarget;->getAccessibilityAction()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 113
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_3
    if-nez p3, :cond_6

    instance-of p3, v0, Lcom/android/launcher3/ShortcutInfo;

    if-nez p3, :cond_4

    instance-of p3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez p3, :cond_4

    instance-of p3, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz p3, :cond_6

    .line 123
    :cond_4
    iget-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f0e000c

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 125
    iget-wide v1, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-ltz p3, :cond_5

    .line 126
    iget-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p3, 0x7f0e000d

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 127
    :cond_5
    instance-of p3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz p3, :cond_6

    .line 128
    move-object p3, v0

    check-cast p3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 129
    iget-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p3, 0x7f0e0010

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 134
    :cond_6
    :goto_1
    instance-of p1, v0, Lcom/android/launcher3/AppInfo;

    if-nez p1, :cond_7

    instance-of p1, v0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz p1, :cond_8

    .line 135
    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p3, 0x7f0e000b

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 137
    :cond_8
    return-void
.end method

.method final announceConfirmation(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method final announceConfirmation(Ljava/lang/String;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method protected final findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J
    .locals 8

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 388
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 392
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    .line 393
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 394
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 396
    iget v5, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v2, p2, v5, v6}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v2

    .line 397
    nop

    .line 398
    const/4 v5, 0x0

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 399
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 400
    invoke-virtual {v0, v5}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 401
    iget v6, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v7, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v2, p2, v6, v7}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v2

    .line 402
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 405
    :cond_0
    if-eqz v2, :cond_1

    .line 406
    return-wide v3

    .line 409
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 410
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v1

    .line 411
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 412
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget p1, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, p2, v3, p1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result p1

    .line 414
    if-nez p1, :cond_2

    .line 415
    const-string p1, "LauncherAccessibilityDelegate"

    const-string p2, "Not enough space on an empty screen"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    return-wide v1
.end method

.method public final handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 4

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 335
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v0

    aput p2, v1, v3

    .line 337
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v0

    aput p2, v1, v2

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    aput v0, v1, v3

    .line 340
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    aput p2, v1, v2

    .line 343
    :goto_0
    iget-object p2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p2, p2, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p2, p1, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 344
    iget-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object p2, p1, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    aget v0, v1, v3

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v3, p2, v3

    iput v3, v1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget-object v1, p1, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget p2, p2, v2

    iput p2, v1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragController;->checkTouchMove(Lcom/android/launcher3/DropTarget;)V

    invoke-interface {v0}, Lcom/android/launcher3/DropTarget;->prepareAccessibilityDrop()V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/dragndrop/DragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 346
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 347
    invoke-virtual {p0, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 349
    :cond_2
    return-void
.end method

.method public final isInAccessibleDrag()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onDragEnd()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 381
    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    .line 375
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 99
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 101
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 p1, 0x1

    return p1

    .line 145
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z
    .locals 12

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0e000c

    if-ne p3, v2, :cond_2

    .line 150
    new-instance p3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    invoke-direct {p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iget-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p2, p3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    iget-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p1, p3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    iget-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->ICON:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v2, p3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    instance-of p3, p2, Lcom/android/launcher3/FolderInfo;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    :goto_0
    iput-object v2, p3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    goto :goto_1

    :cond_0
    instance-of p3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2, p1, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    iput v3, v2, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownX:I

    iput p3, v2, Lcom/android/launcher3/dragndrop/DragController;->mMotionDownY:I

    iget-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p3, p3, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p3, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    new-instance p3, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {p3}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    iput-boolean v1, p3, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v1, p2, p3}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    goto/16 :goto_4

    .line 151
    :cond_2
    const v2, 0x7f0e000b

    const/4 v3, 0x2

    if-ne p3, v2, :cond_3

    .line 152
    new-array v9, v3, [I

    .line 153
    invoke-virtual {p0, p2, v9}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J

    move-result-wide v7

    .line 154
    iget-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object p3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;J[I)V

    invoke-virtual {p1, p3, v1, v0}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZLjava/lang/Runnable;)V

    .line 177
    return v1

    .line 178
    :cond_3
    const v2, 0x7f0e000d

    if-ne p3, v2, :cond_4

    .line 179
    iget-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 181
    move-object v5, p2

    check-cast v5, Lcom/android/launcher3/ShortcutInfo;

    .line 182
    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {p1, v5, v0}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 184
    new-array p1, v3, [I

    .line 185
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J

    move-result-wide v8

    .line 186
    iget-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p3, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    const-wide/16 v6, -0x64

    aget v10, p1, v0

    aget v11, p1, v1

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 192
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;

    invoke-direct {p3, p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    goto/16 :goto_4

    :cond_4
    const v2, 0x7f0e0010

    if-ne p3, v2, :cond_6

    .line 203
    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)Ljava/util/ArrayList;

    move-result-object p3

    .line 205
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 206
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 207
    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 210
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0082

    .line 211
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;

    invoke-direct {v3, p0, p3, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Ljava/util/ArrayList;Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 212
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 221
    return v1

    .line 222
    :cond_6
    const v2, 0x7f0e0011

    if-ne p3, v2, :cond_8

    .line 223
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v0

    .line 225
    :cond_8
    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v2, v2, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v3, v2

    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    .line 226
    invoke-virtual {v5, p2, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 227
    invoke-virtual {v5}, Lcom/android/launcher3/ButtonDropTarget;->getAccessibilityAction()I

    move-result v6

    if-ne p3, v6, :cond_9

    .line 228
    invoke-virtual {v5, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 229
    return v1

    .line 225
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 233
    :cond_a
    :goto_4
    return v0
.end method
