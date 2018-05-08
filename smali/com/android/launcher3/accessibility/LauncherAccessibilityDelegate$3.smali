.class Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$host:Landroid/view/View;

.field final synthetic val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Ljava/util/ArrayList;Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$actions:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$host:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$host:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;->val$info:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    const/4 v5, 0x1

    const v6, 0x7f0c0083

    if-ne p2, v6, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    if-ne p2, v5, :cond_0

    iget p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    sub-int/2addr p2, v5

    iget v6, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v7, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v4, p2, v6, v5, v7}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v6, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr p2, v6

    iget v6, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v7, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v4, p2, v6, v5, v7}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    iget p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr p2, v5

    iput p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    sub-int/2addr p2, v5

    iput p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    :cond_2
    iget p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr p2, v5

    iput p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr p2, v5

    goto :goto_0

    :cond_3
    const v6, 0x7f0c0085

    if-ne p2, v6, :cond_4

    iget p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    sub-int/2addr p2, v5

    iput p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    sub-int/2addr p2, v5

    :goto_0
    iput p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    goto :goto_2

    :cond_4
    const v6, 0x7f0c0084

    if-ne p2, v6, :cond_6

    iget p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v6, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v7, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v4, p2, v6, v7, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    sub-int/2addr p2, v5

    iput p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    sub-int/2addr p2, v5

    iput p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    :cond_5
    iget p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr p2, v5

    iput p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr p2, v5

    :goto_1
    iput p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    goto :goto_2

    :cond_6
    const v6, 0x7f0c0086

    if-ne p2, v6, :cond_7

    iget p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    sub-int/2addr p2, v5

    iput p2, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iget p2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    sub-int/2addr p2, v5

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v4, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v6, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v3, v4, v6, p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-object v7, v1

    check-cast v7, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p2, Landroid/graphics/Rect;->top:I

    iget v11, p2, Landroid/graphics/Rect;->right:I

    iget v12, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iget-object p2, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p2, p2, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    iget-object p2, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0c0087

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v6, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget v2, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {p2, v1, v3}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 217
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 218
    return-void
.end method
