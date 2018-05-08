.class public Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;
.super Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.source "SourceFile"


# instance fields
.field private final mParent:Lcom/android/launcher3/folder/FolderPagedView;

.field private final mStartPosition:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/android/launcher3/CellLayout;)V

    .line 37
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 40
    iget v1, p1, Lcom/android/launcher3/CellLayout;->mCountX:I

    mul-int/2addr v0, v1

    iget p1, p1, Lcom/android/launcher3/CellLayout;->mCountY:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    .line 41
    return-void
.end method


# virtual methods
.method protected final getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f0c007b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    add-int/2addr p1, v3

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const p1, 0x7f0c0079

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final intersectsValidDropTarget(I)I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v0, v0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    iget v1, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
