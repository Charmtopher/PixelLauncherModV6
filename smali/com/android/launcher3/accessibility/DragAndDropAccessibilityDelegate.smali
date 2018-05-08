.class public abstract Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.super Landroid/support/v4/widget/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final sTempArray:[I


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected final mView:Lcom/android/launcher3/CellLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->sTempArray:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroid/support/v4/widget/g;-><init>(Landroid/view/View;)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    .line 52
    iget-object p1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    .line 53
    iget-object p1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 54
    return-void
.end method

.method private getItemBounds(I)Landroid/graphics/Rect;
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    rem-int v2, p1, v0

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    div-int v3, p1, v0

    .line 132
    iget-object p1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object p1, p1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    iget-object v0, p1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget-object p1, p1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    iget v5, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 134
    iget-object p1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method


# virtual methods
.method protected abstract getConfirmationForIconDrop(I)Ljava/lang/String;
.end method

.method protected abstract getLocationDescriptionForIconDrop(I)Ljava/lang/String;
.end method

.method protected final getVirtualViewAt(FF)I
    .locals 4

    .line 58
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_5

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    float-to-int p1, p1

    float-to-int p2, p2

    sget-object v1, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->sTempArray:[I

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr p1, v2

    iget v2, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/2addr p1, v2

    const/4 v2, 0x0

    aput p1, v1, v2

    sub-int/2addr p2, v3

    iget p1, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    div-int/2addr p2, p1

    const/4 p1, 0x1

    aput p2, v1, p1

    iget p2, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    aget v3, v1, v2

    if-gez v3, :cond_1

    aput v2, v1, v2

    :cond_1
    aget v3, v1, v2

    if-lt v3, p2, :cond_2

    sub-int/2addr p2, p1

    aput p2, v1, v2

    :cond_2
    aget p2, v1, p1

    if-gez p2, :cond_3

    aput v2, v1, p1

    :cond_3
    aget p2, v1, p1

    if-lt p2, v0, :cond_4

    sub-int/2addr v0, p1

    aput v0, v1, p1

    .line 64
    :cond_4
    sget-object p2, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->sTempArray:[I

    aget p2, p2, v2

    sget-object v0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->sTempArray:[I

    aget p1, v0, p1

    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->intersectsValidDropTarget(I)I

    move-result p1

    return p1

    .line 59
    :cond_5
    :goto_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    iget v1, v1, Lcom/android/launcher3/CellLayout;->mCountY:I

    mul-int/2addr v0, v1

    .line 80
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->intersectsValidDropTarget(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method

.method protected abstract intersectsValidDropTarget(I)I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget p1, p0, Landroid/support/v4/widget/g;->mAccessibilityFocusedVirtualViewId:I

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPerformActionForVirtualView$5985f823(II)Z

    .line 101
    return-void
.end method

.method protected final onPerformActionForVirtualView$5985f823(II)Z
    .locals 2

    .line 89
    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getConfirmationForIconDrop(I)Ljava/lang/String;

    move-result-object p2

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mView:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getItemBounds(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 92
    const/4 p1, 0x1

    return p1

    .line 94
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 105
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->mContext:Landroid/content/Context;

    const v0, 0x7f0c0074

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    return-void

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid virtual view id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V
    .locals 2

    .line 113
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getLocationDescriptionForIconDrop(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->getItemBounds(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/a;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 120
    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/a;->addAction(I)V

    .line 121
    iget-object p1, p2, Landroid/support/v4/view/a/a;->lp:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 122
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->setFocusable(Z)V

    .line 123
    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid virtual view id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
